;nyquist plug-in
;version 1
;type process
;name "Delay (Stereo Flip)..."
;action "Applying delay, flipping stereo..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control decay "Decay amount" real "dB" 3.0 0.0 24.0
;control delay "Delay time" real "seconds" 0.5 0.0 5.0
;control count "Number of delays" int "times" 10 1 100
;control norm-level "Normalization level" real "" 0.95 0.0 1.0

; Delay with Stereo Flip by David R. Sky
; December 2, 2004; updated January 3, 2006
; a delay effect which flips stereo channels with each delay
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; Inspired by a sound effect in the opening track of
; Mike Oldfield's "Songs From Distant Earth"
; Thanks to Steven Jones for illustrating
; how to check for even/odd numbers

; set original and flipped audio samples
(let (s:orig s:flip i x)
(setq s:orig (vector (aref s 0) (aref s 1)))
(setq s:flip (vector (aref s 1) (aref s 0)))
(setq s (s-rest 0))

; function to produce next delay
(defun nextflip (i decay delay s s:orig s:flip)
(setf pos (* i delay))
(setf vol (* -1 i decay))
(if (evenp i) ; if i is even, do not flip
(sim (cue s) (at-abs pos (loud vol (cue s:orig)))) 
(sim (cue s) (at-abs pos (loud vol (cue s:flip)))))) 

; normalize function
(defun normalize (signal)
(setf x 
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all)))
(scale (/ norm-level x) signal))

; generating the delays
(normalize (simrep (i (+ 1 count))
(nextflip i decay delay s s:orig s:flip)))
) ; close let
