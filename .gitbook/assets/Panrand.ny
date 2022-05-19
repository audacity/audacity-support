;nyquist plug-in
;version 2
;type process
;name "Panning (random)..."
;action "Randomly panning..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control maxspeed "Maximum random panning speed" real "Hz" 0.2 0.01 10
;control maxwidth "Maximum stereo width" int "percent" 100 0 100

; Random Panning by David R. Sky September 2004
; updated December 30, 2005
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; selection duration
(setf dur (/ len *sound-srate*))
; convert maxwidth integer to true percent
(setf maxwidth (* 0.01 maxwidth))

(defun pan2 (sound where)
   (vector (mult (aref sound 0) (sum 1 (mult -1 where)))
       (mult (aref sound 1) where)))

(let (signal x)
(defun normalize (maxwidth signal)
(setf x (peak signal ny:all))
(scale (/ maxwidth x) signal))

(setq signal (sum 0.5 (mult 0.5 
(normalize maxwidth (lowpass2 (noise) maxspeed)))))

(pan2 
(vector (sum (aref s 0) (aref s 1)) (sum (aref s 1) (aref s 0)))
signal)
) ; close let

