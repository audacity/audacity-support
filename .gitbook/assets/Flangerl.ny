;nyquist plug-in
;version 2
;type process
;name "Flanger (linear)..."
;action "Applying linear flanger..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control pos "High frequency flange position" int "percent" 0 -100 200
;control decrease "Time decrease" real "ms" 5.0 0.1 200.0
;control wet "Wet level" int "percent" 50 1 99
;control sign "Wet: inverted or positive" int "0=inverted 1=positive" 1 0 1

; Linear flanger by David R. Sky, December 7, 2005
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; pos is position in signal (percent)where high frequency portion
; of flange is heard - 50% means half-way through selection,
; flange reaches its peak.
; this value can be negative or above 100,
; in which case no peak flange effect is heard,
; the peak seems to be before or after the selection.

; decrease is time (ms) to reduce original selection
; to be mixed with dry signal, which creates the flange effect

; selection duration
(setf dur (/ len *sound-srate*))
(setf wet (* 0.01 wet))
(setf dry (- 1.0 wet))
; sign - whether wet signal is normal or inverted
(setf sign (if (= sign 0) -1.0 1.0))
(setf pos (* 0.01 pos))
(setf decrease (* 0.001 decrease))
; shrink is the new stretch-abs value of signal
; which is mixed back with original signal
(setf shrink (/ (- dur decrease) dur))

; normalize function
(defun normalize (signal)
(setf x (if (arrayp signal)
; stereo
(s-max (peak (aref signal 0) ny:all) (peak (aref signal 1) ny:all))
; mono
(peak signal ny:all))) 
; normalize signal
(scale (/ 0.95 x) signal))

; squish function to shrink dry sound
(defun squish (sound shrink)
(if (arrayp sound)
(vector
(force-srate 44100 (stretch-abs shrink (sound (aref sound 0))))
(force-srate 44100 (stretch-abs shrink (sound (aref sound 1)))))
(force-srate 44100 (stretch-abs shrink (sound sound)))))

(let (s1 s2 dry-offset wet-offset)
(setq s1 (normalize s)) ; assign (normalize s) to a local variable s1
(setq s nil) ; we don't need s any more so get rid of it
(setq s2 (squish s1 shrink)) ; s2 - the shrunk signal

; linear flange function
(defun l-flange (s1 s2 decrease pos dry wet)
; time offset of dry signal when pos<0
(setf dry-offset (if (< pos 0)
(* -1.0 pos decrease) 0))
; time offset of wet when pos>=0
(setf wet-offset (if (>= pos 0)
(* pos decrease) 0))

(sum 
; mixing dry signal...
(sim(s-rest dry-offset)
(at-abs dry-offset
(cue (scale (* dry) s1))))

; ...with wet 'squished' signal
(sim(s-rest wet-offset)
(at-abs wet-offset
(cue (scale (* sign wet) s2))))))


; performing linear flange if decrease is non-zero
(if (= decrease 0)
(format nil "Decrease value needs to be non-zero - ~%
flange effect not produced. ~%")
(normalize (l-flange s1 s2 decrease pos dry wet)))
) ; close let

