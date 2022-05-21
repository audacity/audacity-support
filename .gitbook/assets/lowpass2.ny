;nyquist plug-in
;version 1
;type process
;name "Low Pass Filter with Q..."
;action "Applying Low Pass Filter with Q..."
;info "Low Pass Filter with Q by David R. Sky"

;control freq "Cutoff frequency" real "Hz" 1000 20 10000
;control q "Filter q (resonance)" real "q" 1.00 0.00 5.00

;; Lowpass with q, works on mono and stereo audio

(if (arrayp s)
(vector (lowpass2 (aref s 0) freq q)
(lowpass2 (aref s 1) freq q))

(lowpass2 s freq q))
