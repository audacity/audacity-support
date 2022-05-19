;nyquist plug-in
;version 1
;type process
;name "Stereo Butterfly (LFO)..."
;action "Stereo Butterfly is choreographing your audio..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control f "LFO frequency" real "Hz" 0.20 0.01 20.00
;control width1 "Stereo width from..." real "width1" -1.00 -1.00 1.00
;control width2 "to..." real "width2" 1.00 -1.00 1.00 

; Stereo Butterfly (LFO)
; by David R. Sky, September 13, 2004
; simplified December 27, 2005
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; like a butterfly's fluttering wings 
; 1.00 is wings wide open (full stereo)
; 0 is wings fully closed (audio sounds mono)
; -1.00 butterfly has totally flipped, wings wide open
; (left channel is fully flipped with right and vice versa)
; and the LFO keeps changing the stereo width

; make sure width1 & width2 are between -1 and 1 inclusive
(setf width1 (min (max width1 -1) 1))
(setf width2 (min (max width2 -1) 1))

; calculate min and max widths
; and assign to w1 and w2
; w1 becomes less then or equal to w2
(setf w1 (min width1 width2))
(setf w2 (max width1 width2))

; calculate spread factor: how much to multiply LFO signal
; (w1-w2)/2
(setf spreadfactor (mult 0.5 (diff w1 w2)))

; Calculate offset: new center of LFO signal
; (w1+w2)/2
(setf offset (mult 0.5 (sum w1 w2)))

(defun butterfly (sound width) 
(vector 
; left channel
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
; right channel
(sum (mult (aref sound 1) (sum width 1) 0.5) 
(mult (aref sound 0) (sum width -1) -0.5)))) 

(butterfly s (sum offset (mult spreadfactor (lfo f))))
