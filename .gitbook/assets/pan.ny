;nyquist plug-in
;version 1
;type process
;name "Panning..."
;action "Panning audio..."
;info "by David R. Sky, dominic Mazzoni\nReleased under terms of GNU Public License"

;control where "Pan position" int "0=left 1=right" 0.5 0 1.0

; Panning by David R. Sky, Dominic Mazzoni
; updated January 10, 2006
; to ensure input audio is mono-stereo
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; pan anywhere between 0 (left) and 1 (right)

(defun pan2 (sound where)
   (vector (mult (aref sound 0) (sum 1 (mult -1 where)))
       (mult (aref sound 1) where)))

(pan2 
; making the input stereo audio sound mono for proper panning
(vector 
; left channel
(sum (aref s 0) (aref s 1))
; right channel
(sum (aref s 1) (aref s 0)))
 where)
