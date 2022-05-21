;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core#ModulatorPlugin"
;name "Variable Tremolo"
;action "Applying Tremolo..."
;info "by Steve Daulton. Released under terms of GPL Version 2\nhttp://audacity.easyspacepro.com\n\n'Starting phase' sets where to start tremolo in the waveform cycle.\nThe speed and depth of the tremolo oscilation can be set for the\nstart and the end of the selection.\nThe transition from initial settings to final settings is linear."

;control wave "Tremolo Shape" choice "sine,triangle,sawtooth,inverse sawtooth,square" 0
;control phase "Starting Phase" real "degrees" 90 0 360
;control startf "Initial Tremolo Frequency" real "Hz" 4 1 20
;control endf "Final Tremolo Frequency" real "Hz" 12 1 20
;control starta "Initial Tremolo Amount" int "%" 40 0 100
;control enda "Final Tremolo Amount" int "%" 40 0 100

; set tremolo *waveform* 
(setq *waveform* (cond
   ((= wave 0) ; sine
   *sine-table*)
   ((= wave 1) ; triangle
   *tri-table*)
   ((= wave 2) ; sawtooth
   (abs-env (list (pwl 0 -1 .995  1 1 -1 1) (hz-to-step 1.0) t)))
   ((= wave 3) ; inverse sawtooth
   (abs-env (list (pwl 0 1 .995  -1 1 1 1) (hz-to-step 1.0) t)))
   (t ; square
   (abs-env (list (pwl 0 1 .495 1 .5 -1 .995 -1 1 1 1) (hz-to-step 1.0) t)))))

;; Function to generate sweep tone
(defun sweep (sf ef wf ph)
     (mult 0.5 (sum 1.0 (fmlfo (pwlv sf 1.0 ef) *waveform* phase))))

(let* ((starta (/ starta 100.0))
   (enda (/ enda 100.0))
   (wet (pwlv starta 1 enda))
   (dry (sum 1 (mult wet -1))))
   (mult s (sum dry (mult wet (sweep startf endf *waveform* phase)))))
