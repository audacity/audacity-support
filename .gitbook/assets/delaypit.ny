;nyquist plug-in
;version 1
;type process
;name "Delay (Pitch change)..."
;action "Applying Delay with Pitch change..."
;info "by David R. sky\nReleased under terms of GNU Public License"

;control decay "Decay amount" real "dB" 0 0 24
;control delay "Delay time" real "seconds" 0.5 0.0 5.0
;control count "Number of echoes" int "times" 10 1 30
;control shift "Pitch change factor" real "shift" 1.1 1.001 3
;control md "Pitch: increase or decrease" int "0=increase 1=decrease" 0 0 1
;control norm-level "Normalization level" real "" 0.95 0.0 1.0

; delay with Pitch Change by David R. Sky
; updated January 4, 2006 to also work in stereo,
; also includes normalization
; note that pitch change is accompanied with change in duration

; setting stretch factor
(setf shift (cond 
((= md 0) (/ 1.0 shift))
((= md 1) shift)))

; function to stretch audio 
(defun change (sound shift)
(if (arrayp sound)
(vector
(force-srate 44100 (stretch-abs shift (sound (aref sound 0))))
(force-srate 44100 (stretch-abs shift (sound (aref sound 1)))))
(force-srate 44100 (stretch-abs shift (sound sound)))))

; Roger Dannenberg's delay function, slightly altered
(defun delays (s decay delay count shift)
  (if (= count 0) (cue s)
      (sim (cue s)                
(loud decay (at delay (delays (change s shift) decay delay (- count 1) shift)))))) 

; normalize function
(defun normalize (signal)
(setf x (if (arrayp signal)
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))
(peak signal ny:all)))
(scale (/ norm-level x) signal))


; applying the effect
(normalize (stretch-abs 1 (delays s (- 0 decay) delay count shift)))

