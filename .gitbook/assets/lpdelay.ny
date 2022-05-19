;nyquist plug-in
;version 1
;type process
;name "Delay (low pass filter)..."
;action "Performing Delay with low pass filter..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control decay "Decay amount" real "dB" 0.0 0.0 24.0
;control delay "Delay time" real "seconds" 0.5 0.0 5.0
;control count "Number of echos" int "times" 10 1 30
;control f "Start cutoff frequency" real "hz" 1000 100 20000 
;control lower "Cutoff reduction" real "octaves" 0.5 0.1 5.0 
;control norm-level "Normalization level" real "" 0.95 0.0 1.0

; Delay with low pass filter by David R. sky
; updated December 31, 2005
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; This plug-in is result of a desire to create a delay effect 
; heard in a popular Cher tune in the late 1990s or later.
; Uses delays by Roger Dannenberg.
; Note: this effect will use up memory proportional to
; delay * count, since that many samples must be buffered
; before the first block is freed.
; with each delay, the cutoff frequency of the lowpass 
; filter is reduced for that delay.

; set upcount (which goes in direction 1 to count), 
; reverse of count
(setf upcount (+ count 1))

; Set octave drop [od]
(setf od (expt 2.0 lower))

; calculate cutoff freq for each new delay
(defun lpl (s f od upcount count)
(lp s (/ f (expt od (- upcount count)))))

; normalize function
(defun normalize (signal)
(setf x (if (arrayp signal)
(max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))
(peak signal ny:all)))
(scale (/ norm-level x) signal))

; delay with lp filter function
(defun lpdelays (s decay delay count)
  (if (= count 0) (cue s)
      (sim (cue s)
               (loud decay (at delay (lpdelays (lpl s f od upcount
count) decay delay (- count 1))))))) 

(normalize (stretch-abs 1 (lpdelays s (- 0 decay) delay count)))

