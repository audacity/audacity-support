;nyquist plug-in
;version 4
;type process
;name "Chimes delay (V3)"
;author "Steve Daulton"
;action "Applying chimes delay"
;release "3.0.5"
;copyright "Released under terms of the GNU General Public License version 2 or later"

;; Based on a "Chimes Delay (V2) by David R Sky, January 30 2005.

;control chimeslist "Chimes note list" string "" "-24 -12 -5 0 4 7 12 14 19"
;control lownote "Lowest note" int "semitones" -12 -48 48
;control highnote "Highest note" int "semitones" 24 -48 48
;control maxdelay "Maximum delay time" real "seconds" 10.0 0.5 120.0
;control minvol "Minimum volume" int "%" 50.0 0.0 100.0
;control count "Number of chime delays" int "number" 20 1 100


;; Ensure lownote is lower than highnote.
(let ((temp lownote))
  (setf lownote (min lownote highnote))
  (setf highnote (max temp highnote)))


(defun random-range (minimum maximum)
  ;;; Return a random number between minimum and maximum
  (let ((range (- maximum minimum)))
    (+ minimum (* (rrandom) range))))

; panning function
(defun random-pan (sig)
  (let* ((left (rrandom))
         (right (- 1 left)))
    (vector (mult left (aref sig 0))
            (mult right (aref sig 1)))))


(defun rand-shift (notelist)
  ;;; Return a random note from notelist as step value.
  (let* ((n (random (length notelist)))
         (shift (nth n notelist)))
    (expt 2.0 (/ shift -12.0))))


(defun make-list (low high &aux (acc ()))
  ;;; Return a list of integers from low to high.
  (let ((range (1+ (- high low))))
    (dotimes (i range acc)
      (push (+ low i) acc))))


(defun get-random-note (sig &optional gain1)
  (let ((rate *sound-srate*)
        (amp (random-range (/ minvol 100.0) 1.0))
        (shift (rand-shift chimeslist)))
    (setf sig (force-srate rate (stretch-abs shift (sound sig))))
    (unless gain1
      (setf sig (mult amp sig))
      (when (arrayp sig)
        (setf sig (random-pan sig))))
    sig))


;; convert chimeslist from string to list of numbers.
(setf chimeslist (eval-string (format nil "(list ~a)" chimeslist)))

; if no chimes list, make list using lownote and highnote values
(when (null chimeslist)
  (setf chimeslist (make-list lownote highnote)))

(let ((out (get-random-note *track* t)))
  (dotimes (i count out)
    (setf out
      (sim out
           (at-abs (random-range 0.0 maxdelay)
                   (cue (get-random-note *track*)))))))
