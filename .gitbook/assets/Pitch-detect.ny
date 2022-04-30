;nyquist plug-in
;version 3
;type analyze
;categories "http://lv2plug.in/ns/lv2core#AnalyserPlugin"
;name "Pitch Detect..."
;action "Detecting Pitch..."
;info "by Steve Daulton (www.easyspacepro.com).\nReleased under GPL v2.\n"

;; pitch-detect.ny by Steve Daulton April 2013
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html 
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control range "Frequency range" choice "20 - 1000 Hz,100 - 2000 Hz,1 kHz - 10 kHz" 1
;control dur "Analyse first (seconds)" real "" 0.2 0.1 1

;; Set frequency ranges
(case range
  (0 (psetq min-hz 20 max-hz 1000))
  (1 (psetq min-hz 100 max-hz 2000))
  (2 (psetq min-hz 1000 max-hz 10000))
  ; Over 10 kHz is not accurate unless using a high sample rate
  (T (psetq min-hz 10000 max-hz (/ *sound-srate* 2))))

;; Set range in steps (MIDI note numbers)
(psetq minstep (hz-to-step min-hz)
       maxstep (hz-to-step max-hz))

;; Initializations
(setq dur (max 0.1 (min 1 dur)))  ; sanitize duration
(setq err "")       ; initialise error message
(setq f0 nil)       ; initialise detected frequency
(setq confidence 1) ; initialise confidence

;;; Error check
(when (< (get-duration 1) 0.1)
  (setf err "Selection too short."))

;;; MIDI note number to note name
(defun notename (step)
  (let ((notenames (list "C" "C sharp" "D" "D sharp" "E" "F"
                         "F sharp" "G" "G sharp" "A" "B flat" "B"))
        (step (round step)))
    (format nil "~a ~a"
      (nth (rem step 12) notenames)
      (truncate (/ (- step 12) 12)))))

;;; format output
(defun prettyfrequency (val)
  (setq units
    (case range
      ((0 1) "Hz")
      (2 "kHz")
      (T (if (> val 1000) "kHz" "Hz"))))
  (setq val
    (cond
      ((<= range 1) (round val))
      ((< val 10000) (setq *float-format* "%1.2f")(/ val 1000.0))
      (T (setq *float-format* "%1.1f") (/ val 1000.0))))
  (format nil "~a ~a" val units))

;;; Apply YIN to first DUR seconds
(defun getyin (sig dur)
  (let ((srate (min *sound-srate* (* 8 max-hz))))
    (if (< srate *sound-srate*)
        (progn
          (setf sig
            (if (arrayp sig)
                (sum
                  (extract-abs 0 dur (force-srate srate (aref sig 0)))
                  (extract-abs 0 dur (force-srate srate (aref sig 1))))
                (extract-abs 0 dur (force-srate srate sig))))
          (setq srate (snd-srate sig)))
        (setf sig
          (if (arrayp sig)
              (sum
                (extract-abs 0 dur (aref sig 0))
                (extract-abs 0 dur (aref sig 1)))
              (extract-abs 0 dur sig))))
    (let ((stepsize (truncate  (/ (* 4 srate) min-hz))))
      (yin sig minstep maxstep stepsize))))

;;; Find most confident frequency
(defun bestguess (yin-out)
  (do ((step (snd-fetch (aref yin-out 0))(snd-fetch (aref yin-out 0)))
       (conf (snd-fetch (aref yin-out 1))(snd-fetch (aref yin-out 1))))
      ((not step))
     ;(format t "~a Hz \t ~a %~%" (step-to-hz step) (* 100 (- 1 conf)))
    (when (and (= conf conf)  ; protect against nan
               (< conf confidence))
      (setq confidence conf)
      (setq f0 step)))
  f0)


(if (> (length err) 0)
    (format nil "Error.~%~a" err)
    (let ((f0 (bestguess (getyin s dur))))
      (if f0
          (format nil 
                  "Pitch detection range: ~a~%~%~
                  Detected Note: ~a~%~
                  Detected Frequency: ~a.~%"
                  (case range
                    (0 "20 - 1000 Hz.")
                    (1 "100 - 2000 Hz.")
                    (T "1 kHz - 10 kHz."))
                  (notename f0)
                  (prettyfrequency (round (step-to-hz f0))))
          "Frequency cannot be detected.\nFrequency may be out of range.")))
