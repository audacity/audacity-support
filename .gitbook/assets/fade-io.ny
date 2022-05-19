;nyquist plug-in
;version 2
;type process
;name "Fade In and Out..."
;action "Fading in and out..."
;info "Fade In and Out by David R. Sky"

;control in "Fade in time" real "seconds" 1.00 0.00 30.00
;control out "Fade out time" real "seconds" 1.00 0.00 30.00

;; Fade In and Out by David R. Sky, October 22, 2004

; set duration of selection in seconds
(setf dur (/ len *sound-srate*)) 

; set in and out as percentages of duration
(setf in (/ in dur))
(setf out (/ out dur))

; set percentage of dur that has gone by for start of fade out
(setf out (- 1.0 out))

; PWL treats time as not seconds, but percentages of selection.

(mult (pwl in 1 out 1 1 0) s)

