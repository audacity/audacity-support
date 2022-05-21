;nyquist plug-in
;version 1
;type process
;name "High Pass Filter with Q..."
;action "Applying High Pass Filter with Q..."
;info "High Pass Filter with Q by David R. Sky"

;control freq "Cutoff frequency" real "Hz" 1000 20 10000
;control q "Filter q (resonance)" real "q" 1.00 0.00 5.00

;; Highpass with Q, works on mono and stereo audio

(if (arrayp s)
(vector (highpass2 (aref s 0) freq q)
(highpass2 (aref s 1) freq q))

(highpass2 s freq q))
