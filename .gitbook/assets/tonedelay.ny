;nyquist plug-in
;version 1
;type process
;name "Delay with tone Shift..."
;action "Applying Delay with tone shift..."
;info "Delay with Tone Shift by David R. sky"

;control decay "Decay amount" real "dB" 0 0 24
;control delay "Delay time" real "seconds" 0.5 0.0 5.0
;control count "Number of echos" int "times" 5 1 30
;control toneshift1 "Tone shift (whole)" int "semitones" 1 -24 24
;control toneshift2 "Tone shift (cents)" int "cents" 0 -100 100

(setf toneshift (sum toneshift1 (mult toneshift2 0.01)))
(setf toneshift (expt 2.0 (/ toneshift 12.0)))
(setf toneshift (/ 1.0 toneshift))

(defun change (s toneshift)
(force-srate 44100 (stretch-abs toneshift (sound s))))

(defun delays (s decay delay count)
  (if (= count 0) (cue s)
      (sim (cue s)                
(loud decay (at delay (delays (change s toneshift) decay delay (-
count 1))))))) 

(stretch-abs 1 (delays s (- 0 decay) delay count))

