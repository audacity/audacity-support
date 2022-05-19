;nyquist plug-in
;version 1
;type process
;name "Stereo Butterfly (ramp)..."
;action "Stereo Butterfly is choreographing your audio..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control spread1 "Spread stereo from..." real "spread1" 0.00 -1.00 1.00 
;control spread2 "to..." real "spread2" 1.00 -1.00 1.00

; Stereo Butterfly (ramp)
; by David R. Sky, September 25, 2004
; updated (greatly simplified) December 27, 2005
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; Third in the Stereo Butterfly series
; like a butterfly's wings 
; opening or closing from one position to another
; 1.0 is wings wide open (full stereo)
; 0.0 is wings closed (audio sounds mono)
; -1.0 butterfly has totally flipped, wings wide open
; (left channel is fully flipped with right and vice versa)   
; and the ramp changes the stereo width
; over duration of the selection
; for instance, 0 to +1 means 
; going from sounding mono to full stereo

; make sure spread 1 & 2 are both between -1 and 1
(setf spread1 (min (max spread1 -1) 1))
(setf spread2 (min (max spread2 -1) 1))

(defun butterfly (sound width) 
(vector 
; left channel
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
; right channel
(sum (mult (aref sound 1) (sum width 1) 0.5) 
(mult (aref sound 0) (sum width -1) -0.5)))) 

(butterfly s (pwl 0 spread1 1 spread2 1))
