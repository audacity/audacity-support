;nyquist plug-in
;version 1
;type process
;name "Panning (ramp)..."
;action "Applying ramp panning..."
;info "by David R. Sky\n-10 is left, 0 is center, 10 is right\nReleased under terms of GNU Public License"

;control start "Start position" int "where" -10 -10 10
;control end "End position" int "where" 10 -10 10

; Ramp Panning by David R. Sky
; simplified to match Audacity 1.3.1 static pan positions
; from -10 left to 10 right pan positions
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

(defun pan-position (position)
(+ 0.5 (* 0.05 (float position))))

(defun pan2 (sound where)
   (vector (mult (aref sound 0) (sum 1 (mult -1 where)))
       (mult (aref sound 1) where)))

(pan2 
; making any stereo signal sound mono
(vector 
(sum (aref s 0) (aref s 1))
(sum (aref s 1) (aref s 0)))
(pwl 0 (pan-position start) 1 (pan-position end) 1))
