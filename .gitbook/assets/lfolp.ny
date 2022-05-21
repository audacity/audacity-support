;nyquist plug-in
;version 1
;type process
;name "LFO Low Pass Filter..."
;action "Applying LFO Low Pass Filter..."
;info "LFO low pass filter by David R. Sky.\nLFO depth/radius is how far (in octaves) from center f the filter sweeps"

;; LFO low pass filter by David R. Sky
;; October 14, 2004

;control center "Center cutoff frequency" real "Hz" 640 20 20000
;control depth "LFO depth (radius)" real "octaves" 1.0 0.0 10.0 
;control f "LFO frequency" real "Hz" 0.20 0.00 20.00 
;control phase "LFO starting phase" int "degrees" 0 -180 180

; basefreq: lowest cutoff frequency in the LFO sweep
(setf basefreq (/ center (expt 2 depth)))

; addfreq: factor to add to basefreq as LFO sweeps
(setf addfreq (mult basefreq  (sum -1 (expt 2  depth))))

(lp s (sum basefreq (mult addfreq (sum (lfo f 1.0 *sine-table*
phase)  1) 0.5)))

