;nyquist plug-in
;version 4
;type process
;preview linear
;name "Delay Tempo with Pan..."
;action "Performing Delay with bpm and panning..."
;release 2.3.1
;author "Felipe Zanabria and Steve Daulton"
;copyright "Released under terms of the GNU General Public License version 2"

;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

;control decay "Decay" float "dB" -6 -24 0
;control bpm "Tempo" float "bpm" 120 1 500
;control noteval "Note values:" choice "Half note (0.5),Quarter note (1),Eighth note (2),Sixteenth note (4),Thirty-second note (8),Sixty-fourth note (16)" 2
;control echoes "Number of echoes" int "times" 5 1 100
;control spread "Pan spread" float "move" 0.0 -1 1
;control options "Optional filters:" choice "None,High pass filter,Low pass filter,Band pass filter" 0
;control hz "Filter frequency" float "Hz" 1000 10 10000
;control width "Filter width (bandpass only)" float "Hz" 1500 0 10000
;control wet "Wet level" int "dB" 0 -24 0

(defun stereo-delay (sig)
  ;;; Mix multiple repeats of panned, filtered and delayed mono mix
  ;;; of the signal, with the original stereo signal.
  ;;; Return the mix.
  (let ((out sig)
        (mono (filter (mono-mix sig)))
        (delay (note-to-seconds bpm noteval)))
    (do ((i 1 (1+ i))
         (gain (+ decay wet) (+ gain decay))
         (where spread (- where)))  ;Reverse pan position on each repeat.
        ((> i echoes) out)
      (setf echo (loud gain (cue mono)))
      (setf out (sim out
                     (at-abs (* i delay)
                        (cue (stereo-pan echo where))))))))


(defun stereo-pan (sig where)
  ;;; Pan a mono signal by 'where' ratio using the same
  ;;; pan law as Audacity track pan control.
  ;;; Return the stereo result.
  (if (> where 0)
      (vector (mult (- 1 where) sig)
              sig)
      (vector sig
              (mult (- 1 (abs where)) sig))))


(defun mono-mix (stereo)
  ;;; Return mono mix of stereo input.
  (mult 0.5 (sum (aref stereo 0)
                 (aref stereo 1))))


(defun note-to-seconds(bpm noteval)
  ;;; Convert note type (whole, half, quarter ...) at given tempo (bpm).
  ;;; Return delay time in seconds.
  (let ((beat-length (/ 60.0 bpm)))
    (case noteval
      (0 (/ beat-length 0.5))
      (1 beat-length)
      (2 (/ beat-length 2.0))
      (3 (/ beat-length 4.0))
      (4 (/ beat-length 8.0))
      (t (/ beat-length 16.0)))))


(defun filter (sig)
  (case options
    (0 sig)
    (1 (highpass2 sig hz))
    (2 (lowpass2 sig hz))
    (t (bandpass sig hz width))))


(defun bandpass (sig cf width)
  ;;; We get ratio as the positive solution of a quadratic.
  (let ((ratio (solve-quadratic hz (- width) (- hz))))
    (setf hi (* hz ratio))
    (setf low (/ hz ratio))
    (highpass2 (lowpass2 sig hi) low)))


(defun solve-quadratic (a b c)
  ;;; Positive solution of a quadratic
  (/ (+ (- b) (sqrt (- (* b b)(* 4 a c))))(* 2 a)))


(setf dur (get-duration 1))
(if (arrayp *track*)
    (let ((temp-result (stereo-delay *track*)))
      (multichan-expand #'extract-abs 0 dur temp-result))
    "Error.\
Stereo track required.")
