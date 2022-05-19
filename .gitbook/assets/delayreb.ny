;nyquist plug-in
;version 1
;type process
;name "Delay (reverse bouncing ball)..."
;action "Applying reverse bouncing ball Delay..."
;info "by David R. Sky\nReleased under terms of GNU Public license"

;control decay "Decay amount" real "dB" 0.50 0.00 5.00
;control delay "Delay time" real "seconds" 0.05 0.01 1.00
;control count "Number of bounces" int "times" 15 1 100

; Reverse Bouncing Ball Delay by David R. Sky
; Based on delays by Roger B. Dannenberg.
; updated December 30, 2005 - includes normalization
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; Note: this effect will use up memory proportional to
; delay * count, since that many samples must be buffered
; before the first block is freed.

; The first delay will be 
; delay time, slowing down to delay time * count

(setf revcount (sum count 1))

; reverse bouncing ball delay function
(defun revbounces (s decay delay count)
  (if (= count 0) 
(cue s)
      (sim (cue s)
               (loud decay (at (mult delay (- revcount count))
(revbounces s decay delay 
(- count 1 ))))))) 

; normalize function
(defun normalize (signal)
(setf x (if (not (arrayp signal))
; mono audio
(peak signal ny:all)
; stereo audio
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))))
(scale (/ 0.95 x) signal))

(normalize (stretch-abs 1 (revbounces s (- 0 decay) delay count)))

