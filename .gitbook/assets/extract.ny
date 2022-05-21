;nyquist plug-in
;version 2
;type process
;name "Extract Audio..."
;action "Extracting audio..."
;info "by David R. Sky\nReleased under terms of GNU Public License"

;control choice "Time or percent" int "0=time 1=%" 0 0 1
;control start "Start time" real "seconds" 0.0 0.0 600.0
;control end "End time" real "seconds" 1.0 0.0 600.0
;control start-% "Start percent" real "percent" 0.0 0.0 100.0
;control end-% "End percent" real "percent" 50.0 0.0 100.0

; Extract Audio by David R. Sky March 21, 2005
; updated January 2, 2006
; combines two plug-ins into one
; ensures start < end
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

; selection duration for calculating %
(setf dur (/ len *sound-srate*))

; set start and end times based on time or percent choice
(setf start (if (= choice 0)
start (* 0.01 start-% dur)))

(setf end (if (= choice 0)
end (* 0.01 end-% dur)))

; set open and close
(setf open (min start end))
(setf close (max start end))

; extracting audio
(if (arrayp s)
; extract from stereo audio
(vector (extract-abs open close (aref s 0))
(extract-abs open close (aref s 1)))
; extract from mono audio
(extract-abs open close s))

