;nyquist plug-in
;version 1
;type generate
;name "Tuning Fork..."
;action "Generating tone..."
;info "by David R. Sky\nReleased under terms of GNU Public License\nmiddle C=MIDI note 60 A440=69"

;control dur "Tone duration" real "seconds" 5.0 0.0 300.0
;control cf "Constant volume or fade out" int "0=constant 1=fade" 0 0 1
;control mf "MIDI or frequency" int "0=MIDI 1=frequency" 0 0 1
;control midin "MIDI note" real "MIDI note" 69.0 16.0 127.0
;control f "frequency" real "Hz" 440.0 20.0 20000.0

; Tuning Fork by David R. Sky
; updated january 4, 2006
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; set correct frequency
(setf midin (if (= mf 0) midin (hz-to-step f)))

; envelope function
(defun envelope (cf dur)
(if (= cf 0)
(pwl 0.002 1 (- dur 0.002) 1 dur)
(pwl 0.002 1 dur)))

; generate tone
(mult (envelope cf dur) (osc midin dur))

