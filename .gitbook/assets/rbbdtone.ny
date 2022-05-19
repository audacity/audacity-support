;nyquist plug-in
;version 1
;type process
;name "Reverse bouncing ball delay with Tone Shift..."
;action "Applying reverse bouncing ball Delay with tone shift..."
;info "Reverse bouncing ball delay with Tone Shift by David R. Sky"

;control decay "Decay amount" real "dB" 0.05 0.00 5.00
;control delay "Delay time" real "seconds" 0.02 0.01 1.00
;control count "Number of bounces" int "times" 15 1 100
;control toneshift1 "Tone shift (whole)" int "semitones" -1 -24 24
;control toneshift2 "Tone shift (cents)" int "cents" 0 -100 100

(setf toneshift (sum toneshift1 (mult toneshift2 0.01)))
(setf toneshift (expt 2.0 (/ toneshift 12.0)))
(setf toneshift (/ 1.0 toneshift))

(defun change (s toneshift)
(force-srate 44100 (stretch-abs toneshift (sound s))))

;; Like reverse bouncing ball, but each bounce is tone shifted.

(truncate count)
(setf revcount (sum count 1))

(defun revbounces (s decay delay count)
  (if (= count 0) 
(cue s)
      (sim (cue s)
               (loud decay (at (mult delay (- revcount count))
(revbounces (change s toneshift) decay delay 
(- count 1 ))))))) 
(stretch-abs 1 (revbounces s (- 0 decay) delay count))

