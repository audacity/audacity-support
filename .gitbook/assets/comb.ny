;nyquist plug-in
;version 1
;type process
;name "Comb filter..."
;action "Applying Comb filter..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

; Comb filter by David R. Sky August 2004
; updated December 31 2005 with normalization function
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; the higher 'decay' is, 
; the more the comb filter resonates
; at frequencies that are integer multiples of f

;control f "Comb frequency" real "Hz" 440 20 5000
;control decay "Comb decay" real "decay" 0.025 0 0.1
;control norm-level "Normalization level" real "" 0.95 0.0 1.0

; normalize function
(defun normalize (signal)
(setf x (if (arrayp signal)
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))
(peak signal ny:all)))
(scale (/ norm-level x) signal))

(normalize (comb s decay f))

