;nyquist plug-in
;version 1
;type process
;name "Random low pass filter..."
;action "Playing around with your low pass cutoff knob..."
;info "Random low pass filter by David R. Sky"

;control maxspeed "Max filter sweep speed" real "hz" 0.20 0.01 10.00
;control factor "Filter depth factor" int "factor" 20 1 300
;control freq "Maximum cutoff frequency" real "Hz" 2000 20 5000

;; Random low pass filter by David R. Sky September 2004
;; 
;; Note the lower the maxspeed frequency, 
;; the higher factor must be to hear a result.
;; Factor can also be used to increase 
;; or decrease the depth of the effect.
;; (Factor and maxspeed are inversely proportional.)
;; Freq in this plug-in is the maximum cutoff frequency
;; of the randomly-modulated low pass filter.

(defun ransiglog (freq factor maxspeed)

(mult freq (lp (mult factor (lp (noise) maxspeed))
(mult 0.5 maxspeed))))

(lp s (ransiglog freq factor maxspeed))

