;nyquist plug-in
;version 1
;type process
;name "Equalization (one band customizable)..."
;action "Applying EQ to the band..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control f "Center frequency" real "Hz" 440.0 20.0 20000.0 
;control width "Band width in octaves" real "octaves" 1.0 0.1 5.0 
;control gain "Gain" real "db" 0.0 -48.0 48.0
;control apply "Apply normalization" int "0=no 1=yes" 0 0 1
;control norm-level "Normalization level" real "linear" 0.95 0.0 1.0

; customizable One-band Equalization by David R. Sky
; updated January 6, 2006
; now includes normalization
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; normalize function
(defun normalize (signal norm-level)
(setf x (if (not (arrayp signal))
; mono audio
(peak signal ny:all)
; stereo audio
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))))
(scale (/ norm-level x) signal))


; applying EQ
(if (= apply 0)
(eq-band s f gain width)
(normalize (eq-band s f gain width) norm-level))

