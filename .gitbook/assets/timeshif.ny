;nyquist plug-in
;version 2
;type process
;name "Time shifter..."
;action "Time shifting one or two tracks..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

#| Time shifter by David R. Sky, March 23, 2006
Released under terms of the GNU Public License
http://www.opensource.org/licenses/gpl-license.php

How to use - Select audio. If mono track, adjust the mono/left
channel time, if stereo adjust left and/or right channel time.

How it works - if time shift<0ms, chop out specified amount of
audio from start of track; otherwise insert specified amount of
silence before track and shift track forward specified amount of
time.
|#

;control l "Mono/left channel shift" int "" 0 -1000 1000
;control r "Right channel shift" int "" 0 -1000 1000
;control choice "0=milliseconds 1=seconds" int "" 0 0 1

; time shift function
(defun shift (sound dur time)
(if (< time 0)
; if time<0
(extract-abs (- time) dur sound)
; otherwise...
(sim (s-rest time)
(at-abs time (cue sound))
) ; end sim
) ; end if
) ; end defun

; determine selection duration in seconds
(setf dur (/ len *sound-srate*))

; divisor - either 1000 for ms or 1 for s
(setf divisor (if (= choice 0) 1000 1))

; convert integer time to float time
; using float of integers rather than decimal numbers
; so plug-in can work for European Nyquist as well
; which uses , for decimal point
(setf l (/ (float l) (float divisor)))
(setf r (/ (float r) (float divisor)))


; applying time shift
(if (arrayp s)
; apply to stereo track
(vector (shift (aref s 0) dur l)
(shift (aref s 1) dur r)
) ; end vector
; apply to mono track
(shift s dur l)
) ; end if

