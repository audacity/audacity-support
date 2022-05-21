;nyquist plug-in
;version 4
;name "Trim Silence..."
;type process
;action "Trimming audio..."
;preview disabled
;restoresplits 0
;mergeclips 1
;author "Steve Daulton"
;copyright "Released under terms of the GNU General Public License version 2"

;control threshold "Silence Threshold (dB)" real "" -48 -100 0
;control min-start-silence "Silence to leave at start (0 to 30 seconds)" real "" 0 0 30
;control min-end-silence "Silence to leave at end (0 to 30 seconds)" real "" 0 0 30

;; TrimSilence.ny by Steve Daulton. Aug 2011.
;; Last updated Oct 2015.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

;; RAM USAGE:
;; This plug-in requires the audio to be loaded into RAM.
;; If there is insufficient free RAM Audacity may freeze or crash.
;; The line below limits RAM usage to 1.0 GB (about 47 minutes for
;; a stereo track at 44.1 kHz)
;; If your computer has more than 1GB of physical RAM available, the
;; limit may be increased a little, but not more than 2GB.

(setq RAM-Limit 1.0) ; RAM limit in GB

; convert threhold to linear
(setq threshold (db-to-linear (min 0 threshold)))

;; Limit of duration in seconds
(setq limit
  (/ (* ram-limit 1000000000)
     (* 4.0 *sound-srate*)))
(when (arrayp *track*)(setq limit (/ limit 2.0)))

;;; modulo
(defun mod (x y)
  (setq y (float y))
  (round (* y
    (- (/ x y)
      (truncate (/ x y))))))
  
;;; convert to hh:mm:ss
(defun to-hhmmss (seconds)
  (let* ((hh (truncate (/ seconds 3600)))
        (mm (truncate (/ (mod seconds 3600) 60)))
        (ss (mod seconds 60)))
    (format nil "~ah:~am:~as" hh mm ss)))

;;; convert to mono and limit sample rate
(defun convert (sig ratio)
  (if (arrayp *track*)
      (snd-avg 
        (s-max (snd-abs (aref sig 0))
          (snd-abs (aref sig 1)))
        ratio ratio op-peak)
      (snd-avg sig ratio ratio op-peak)))

(defun clips-selected ()
"Bool. Return true if audio clips selected."
  (let ((clips (get '*track* 'clips))
        (start (time-to-samples (get '*selection* 'start)))
        (end (time-to-samples (get '*selection* 'end)))
        start-found
        end-found)
    (if (arrayp clips)(setf clips (append (aref clips 0)(aref clips 1))))
    (dotimes (i (length clips) (or start-found end-found))
      (if (and (>= (time-to-samples (first (nth i clips))) start)
               (< (time-to-samples (first (nth i clips))) end))
          (if end-found
              (setf end-found nil)
              (setf start-found t)))
      (if (and (> (time-to-samples (second (nth i clips))) start)
               (<= (time-to-samples (second (nth i clips))) end))
          (setf end-found t))
      (if (and (> (time-to-samples (first (nth i clips))) end)
               (not start-found)
               (not end-found))
          (return nil)))))


(defun time-to-samples (time)
"Assumes that sample rate is track rate."
  (truncate (+ 0.5 (* time *sound-srate*))))

(defun sound-srate (sig)
  (if (arrayp sig)
      (snd-srate (aref sig 0))
      (snd-srate sig)))

;;; find silences
(defun find-sil (sig &optional (find-start t) (find-end t))
"Treturns (list start-offse, end-offset). If find-start/end
is false, start/end element will be zero"
  (do ((val (snd-fetch sig) (snd-fetch sig))
       (start 0)
       (end 0)
       (flag 0))
      ((not val) (list start end))
    (if (not find-start) (setf flag 1))
    (if (= flag 0)
        ;; count initial silence
        (if (< val threshold)
            (incf start)
            (if find-end
                (setq flag 1)
                (return (list start 0))))
        (if (not find-end)
            (return (list start end))
            ;; count final silence
            (if (< val threshold)
                (incf end)
                (setq end 0))))))

;;; Find the earliest valid start time and
;;; latest valid end time.
;;; If time is invalid, set the time to nil.
(defun get-clip-limits ()
"Return a list (start-time, end-time)"
  (let ((clips (get '*track* 'clips))
        (channels (get '*track* 'channels))
        (start (get '*selection* 'start))
        (end (get '*selection* 'end))
        (limits (list nil nil)))
    (if (< start 0) (throw 'error "Selection cannot start before time=0."))
    (dotimes (chan-num channels limits)
      (if (> channels 1)
          (setf channel-clips (aref clips chan-num))
          (setf channel-clips clips))
      (setf update-limits
        (do ((j 0 (1+ j))
             start-limit
             end-limit)
            ((= j (length channel-clips))
             (list start-limit (if (and end-limit (> end-limit 0)) end-limit nil)))
          ;; look for start
          (cond
            ((> (first (nth j channel-clips)) end)  ; reached end of selection.
              (return (list start-limit (if (and end-limit (> end-limit 0)) end-limit nil))))
            ((and (not start-limit) ;still looking for a clip start.
                  (>= (time-to-samples (first (nth j channel-clips))) (time-to-samples start)))
              ;; if we've found a clip end, selection starts is inside the clip. Start not valid
              (if (not end-limit)
                  (setf start-limit (first (nth j channel-clips))))))
          ;; now look for end
          (if (and (> (time-to-samples (second (nth j channel-clips))) (time-to-samples start))
                   (<= (time-to-samples (second (nth j channel-clips))) (time-to-samples end)))
              ; End of clip is after the selectuon start, and before or ar selection end.
              (setf end-limit  (second (nth j channel-clips))))
          (if (and end-limit
                   (< (time-to-samples (first (nth j channel-clips))) (time-to-samples end))
                   (> (time-to-samples (second (nth j channel-clips))) (time-to-samples end)))
              ; the end of this clip is not valid, 
              ; but we need to know that an end has been found.
              (setf end-limit -1))))
          ;; Update limits
          (case chan-num
            (0 (setf limits update-limits))
            (T
              (if (or (not (nth 0 limits)) (not (nth 0 update-limits)))
                  (setf (nth 0 limits) nil)
                  (setf (nth 0 limits)(min (nth 0 limits)(nth 0 update-limits))))
              (if (or (not (nth 1 limits))(not (nth 1 update-limits)))
                  (setf (nth 1 limits) nil)
                  (setf (nth 1 limits)(max (nth 1 limits)(nth 1 update-limits)))))))))

(defmacro abs-to-relative-time (time)
"Convert absolute time to time relative to selection start"
  `(setf ,time (- ,time (get '*selection* 'start))))

(defun add-num-suffix (num)
  (let ((num (truncate num))
        (last-digit (rem num 10)))
    (case last-digit
      (1 (format nil "~ast" num))
      (2 (format nil "~and" num))
      (3 (format nil "~ard" num))
      (t (format nil "~ath" num)))))

(defun trim-silence ()
  ;; Nyquist plug-ins cannot return 'no audio', so trap as error.
  (if (< (get '*selection* 'peak-level) threshold)
      (throw 'error (format nil "Error.~%All selected audio in the ~a selected track~%~
                                is below the silence threshold.~%~%~
                                Try setting the threshold to a~%~
                                lower (more negative) dB level."
                                (add-num-suffix (get '*track* 'index)))))
  (if (> len (* limit *sound-srate*)) ;max length in samples
      (throw 'error (format nil "Error.\nMax RAM usage by Trim Silence is set to ~a GB.~%This allows a maximum duration ~
                                for a ~a~%track at ~a Hz of ~a.~%Selected track is ~a.~%"
                                RAM-limit
                                (if (arrayp *track*) "stereo" "mono")
                                (round *sound-srate*)
                                (to-hhmmss limit)
                                (to-hhmmss (get-duration 1)))))
  (let* (;; ratio provides tighter trimming for short selections
         ;; while maintaining reasonable speed for long selections
         (ratio (max 10 (min 200 (round (/ len 100000.0)))))
         (my-srate (/ *sound-srate* ratio))
         (mysound (convert *track* ratio))
         (limits (get-clip-limits))   ; (list start, end) times of audio clips
         (clip-start (if (first limits)
                         (abs-to-relative-time (nth 0 limits))))  ; nil id invalid
         (clip-end (if (second limits)
                       (abs-to-relative-time (nth 1 limits)))))  ; nil if invalid 
    ;loop through samples and mark start and end
    (setf result (find-sil mysound clip-start clip-end))
    (let ((start (if clip-start
                     (max clip-start
                          (- (/ (first result) my-srate) min-start-silence))
                      0))
          (end (if clip-end
                   (min (+ (- (get-duration 1) (/ (second result) my-srate))
                           min-end-silence)
                        clip-end)
                   (get '*selection* 'end))))
      ;; ensure at least 1 sample remains
      ;; This should never happen.
      (if (>= start end)
        (setq start (- end (/ *sound-srate*))))
      ; trim
      (multichan-expand #'extract-abs start end (cue *track*)))))

(if (clips-selected)
    (catch 'error (trim-silence))
    nil)