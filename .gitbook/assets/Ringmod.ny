;nyquist plug-in
;version 1
;type process
;name "Ring modulator..."
;action "Applying ring modulator..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

; Ring Modulator (multi-waveform) by David R. Sky September 18, 2004
; simplified January 2, 2006
; Audacity's tremolo effect, altered
; 
; A ring modulator is just a tremolo effect,
; but instead of using an LFO to amplitude modulate audio,
; an audio signal is used.
; the result is a combination of the sum of and the difference 
; between the two input signal frequencies
; e.g., two sine waves of 440 Hz and 660 hz produce a result of
; 220 Hz (difference) and 1100 Hz (sum).
; This plug-in also allows use of triangle, sawtooth and pulse waveforms,
; so the results are the sums and differences between the 
; harmonics of the modulating signal 
; and harmonics of the signal being modulated.

;control mod "Modulation frequency" real "Hz" 500.0 20.0 5000.0 
;control amount "Amount" int "percent" 100 0 100
;control waveform "Waveform" int "0=sin 1=tri 2=saw 3=pulse" 0 0 3
;control bias "Pulse bias" int "percent" 0 -100 100

; If the pulse waveform is selected, bias is the pulse width.
; 0=square wave, higher numbers give wider positive signal,
; lower numbers give narrower positive signal

(setf waveform (max 0 (min 3 (truncate waveform))))

(setf bias (if (= waveform 3) 
(mult 0.01 (max -100 (min bias 100))) bias))

(setf *table* (cond
((= waveform 0) *sine-table*)
((= waveform 1) *tri-table*)
((= waveform 2) *saw-table*)))

(defun ring (s amount mod *table*)
(mult (sum (const (- 1.0 (/ amount 200.0))) (scale (/ amount 200.0)
(osc (hz-to-step mod) 1 *table*))) s))

; pulse - pulse waveform modulator with variable pulse width (bias)
(defun ring-pulse (s amount mod bias)
(mult (sum (const (- 1.0 (/ amount 200.0))) (scale (/ amount 200.0)
(osc-pulse mod bias))) s))

; ring modulating
(cond 
; sine, tri or saw ring modulation
((< waveform 3) (ring s amount mod *table*))
; pulse ring modulation
((= waveform 3) (ring-pulse s amount mod bias)))

