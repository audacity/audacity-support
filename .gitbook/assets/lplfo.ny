;nyquist plug-in
;version 1
;type process
;name "Low Pass Filter (LFO)..."
;action "Applying LFO Low Pass Filter..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control f "LFO frequency" real "Hz" 0.20 0.00 20.00 
;control lo-f "Lower cutoff frequency" int "hz" 160 20 20000
;control hi-f "Upper cutoff frequency" int "hz" 2560 20 20000
;control phase "LFO starting phase" int "degrees" 0 -180 180

; LFO low pass filter by David R. Sky
; October 14, 2004
; simplified December 30, 2005
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

(setf factor (abs (- hi-f lo-f)))
(setf center (/ factor 2.0))

(defun get-lfo (f phase factor center)
(sum center (mult factor 
; convert LFO sweep: -1 to +1
; to 0 to +1
(sum 0.5 (mult 0.5 (lfo f 1.0 *sine-table* phase))))))

; normalize function
(defun normalize (signal)
(setf x (if (arrayp signal)
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))
(peak signal ny:all)))
(scale (/ 0.95 x) signal))

(normalize (lp s (get-lfo f phase factor center)))

