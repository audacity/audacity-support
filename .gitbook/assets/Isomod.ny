;nyquist plug-in
;version 1
;type process
;categories "http://lv2plug.in/ns/lv2core#ModulatorPlugin"
;name "IsoMod..."
;action "Modulating..."
;info "Isochronic Modulator by Steve Daulton. GPL v.2\nhttp://easyspacepro.com\n\n'Pulse Width' controls the length of each pulse.\n'Fade Time' adjusts the fade in/out speed of the pulses.\nThe modulation frequency (speed) and depth transform\ngradually from the initial settings to the final settings.\n\nPlug-in provided as an audio processing effect.\nThe author does not endorse or claim any relevance\nto the theory or practice of brainwave entrainment."

;control pw "Pulse Width [50%=Square]" real "%" 40 0 100
;control ft "Fade Time" real "%" 15 0 100
;control startf "Initial Modulation Frequency" real "Hz" 7 1 20
;control endf "Final Modulation Frequency" real "Hz" 2 1 20
;control starta "Initial Modulation Depth" int "%" 100 0 100
;control enda "Final Modulation Depth" int "%" 100 0 100

(setq pw (/ pw 100.0))
(setq  ft (/ ft 400.0))
(setq ft (* ft (min pw (- 1 pw)) 2))

; set tremolo *waveform* 
(setq *waveform*
   (abs-env (list (pwl ft 1 (- pw ft) 1 (+ pw ft) -1 (- 1 ft) -1 1 0)(hz-to-step 1.0) t)))

;; Function to generate sweep tone
(defun sweep (sf ef)
     (mult 0.5 (sum 1.0 (fmlfo (pwlv sf 1.0 ef) *waveform*))))

(let* ((starta (/ starta 100.0))
   (enda (/ enda 100.0))
   (wet (pwlv starta 1 enda))
   (dry (sum 1 (mult wet -1))))
   (mult s (sum dry (mult wet (sweep startf endf)))))
