;nyquist plug-in
;version 1
;type process
;name "Random Amplitude Modulation..."
;action "Playing around with your volume knob..."
;info "Random Amplitude Modulation by David R. Sky"

;control maxspeed "Max amp sweep speed" real "Hz" 0.50 0.01 20.00
;control factor "Amp sweep depth factor" int "factor" 80 1 300 

;; Random amplitude Modulation by David R. Sky September 2004

;; Note the lower the frequency (maxspeed), 
;; the higher factor must be to hear a result.
;; Factor can also be used to increase 
;; or decrease the depth of the effect.
;; (Factor and maxspeed are inversely proportional.)

(setf offset 0.5)

(defun modulator (offset factor maxspeed)
  (sum offset    (lp (mult factor (lp (noise) maxspeed))        (mult 0.5 maxspeed))))

(mult s (modulator offset factor maxspeed))
