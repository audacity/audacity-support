;nyquist plug-in
;type process
;version 3
;type process
;name "Trim Extend..."
;action "Editing track (please wait)..."
;info "By Steve Daulton (www.easyspacepro.com).\nReleased under GPL v2.\n"

;; TrimExtend.ny by Steve Daulton June 2012
;; based on trimtrack.ny by Steve Daulton May 2010.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;; Requires Audacity 2.0.1 for Chains support.
;; Skip error messages may be useful if plug-in is used in chains.

;control t-units "Time units" choice "samples,milliseconds,seconds,minutes" 2
;control start-adjust "Trim / Extend start by" real "" 0 -100 100
;control end-adjust "Trim / Extend end by" real "" 0 -100 100
;control error-control "Error message control" choice "Show errors,Hide errors" 0

;; Save original control values.
(setq start-adjust-control start-adjust)
(setq end-adjust-control end-adjust)


(defun convert (scale-factor)
  (setq start-adjust (* start-adjust scale-factor))       ; initial adjustment in seconds
  (setq end-adjust (* end-adjust scale-factor))           ; initial adjustment in seconds
  (setq dur-u (* (/ len *sound-srate*) (/ scale-factor))) ; duration in 'units'
  (case t-units
    (0 (setq units "samples")
       (setq unit-singular "sample"))
    (1 (setq units "milliseconds")
       (setq unit-singular "millisecond"))
    (2 (setq units "seconds")
       (setq unit-singular "second"))
    (3 (setq units "minutes")
       (setq unit-singular "minute"))
    (4 (setq units "hours")
       (setq unit-singular "hour"))))


(defun trim (s-in start end)
  (let ((start (max 0 (- start)))
        (end (max 0 (- end))))
    (extract-abs start (- (get-duration 1) end) (cue s-in))))


(defun adjust (sig)
  (when (or (< start-adjust 0)(< end-adjust 0))
    (setf sig (trim sig start-adjust end-adjust)))
  (if (or (> start-adjust 0)(> end-adjust 0))
    (let ((start-adjust (max start-adjust 0))
          (end-adjust (max end-adjust 0))
          (dur (/ (snd-length sig ny:all) *sound-srate*)))
        (setf *default-sound-srate* *sound-srate*)  ; workaround bug 520
        (abs-env
          (sim (at 0 (cue (s-rest start-adjust)))
               (at start-adjust (cue sig))
               (at (+ dur start-adjust)(cue (s-rest end-adjust))))))
    sig))


;; unit conversion
(case t-units
  ;; provide scale factor.
  (0 (convert (/ *sound-srate*))) ; samples
  (1 (convert 0.001))             ; milliseconds
  (2 (convert 1.0))               ; seconds
  (3 (convert 60.0))              ; minutes
  (4 (convert 3600.0)))           ; hours (not used in this version)


;; error check
(cond
  ((and (= start-adjust 0)(= end-adjust 0))
     (setq err (format nil "Warning~%Nothing to do.")))
  ((<= (+ start-adjust end-adjust (get-duration 1)) 0)
     (setq err (format nil "Error.~%You are attempting to delete a total of ~
                            ~a ~a~% from a ~a ~a selection."
                       (abs (+ start-adjust-control end-adjust-control))
                       units dur-u unit-singular)))
  ((<= (+ start-adjust (get-duration 1)) 0)
     (setq err (format nil "Error.~%You are attempting to delete ~a ~a~%~
                            from the start of a ~a ~a selection."
                       (abs start-adjust-control)
                       units dur-u unit-singular)))
  ((<= (+ end-adjust (get-duration 1)) 0)
     (setq err (format nil "Error.~%You are attempting to delete ~a ~a~%~
                            from the end of a ~a ~a selection."
                       (abs end-adjust-control)
                       units dur-u unit-singular)))
  ((or (> start-adjust 43200)(> end-adjust 43200))
     (setq err (format nil "Critical Warning.~%~
                            Unable to add more than 12 hours.")))
  ((> (+ (max start-adjust 0)(max end-adjust 0)(get-duration 1)) 43200)
     (setq err (format nil "Critical Warning.~%~
                            Total duration will be greater than 12 hours."))))


(if (boundp 'err)
  (if (= error-control 0) err (s-rest 0))
  (multichan-expand #'adjust s))
