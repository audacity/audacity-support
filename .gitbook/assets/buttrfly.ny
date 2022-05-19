;nyquist plug-in
;version 1
;type process
;name "Stereo Butterfly..."
;action "Stereo Butterfly is choreographing your audio..."
;info "by David R. Sky\nReleased under terms of GNU Public license"

;control width "Stereo width" real "width" 1.0 -1.0 1.0

; Stereo Butterfly (static)
; by David R. Sky, September 10, 2004
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; like a butterfly's wings at rest 
; 1.0 is wings wide open (full stereo)
; 0.0 is wings fully closed (audio sounds mono)
; -1.0 butterfly has totally flipped, wings wide open
; (left channel is fully flipped with right and vice versa)

; make sure width is between -1 and 1 inclusive
(setf width (min (max width -1.0) 1.0))

(defun butterfly (sound width) 
(vector 
; left channel
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
; right channel
(sum (mult (aref sound 1) (sum width 1) 0.5)(mult (aref sound 0) (sum width -1) -0.5))))

(butterfly s width)

