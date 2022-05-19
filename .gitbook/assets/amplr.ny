;nyquist plug-in
;version 1
;type process
;name "Amplify left or right channel..."
;action "Amplifying one channel..."
;info "Amplify left or right channel by David R. Sky"

;control channel "Channel" int "0=left 1=right" 0 0 1
;control amp "Amplification" real "db" 0.0 -24.0 24.0

;; Amplify lef or right channel by David R. Sky, October 18, 2004
;; This plug-in was written specifically to help people who use
;; a screen reader, and people who prefer to use the keyboard
;; over a mouse.
;; 
;; Select audio in Audacity, select left or right channel and
;; amout to amplify that track (in decibels).

(if (= channel 0)

(vector 
(mult (aref s 0) (db-to-linear amp))
(aref s 1))

(vector 
(aref s 0) 
(mult (aref s 1) (db-to-linear amp))))

