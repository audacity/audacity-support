;nyquist plug-in
;version 1
;type process
;name "Mutron"
;action "Mutron..."
;info "Author: Steven Jones   pluto@swbell.net\n\nGPL  Sep 2004\n"
;control center "Center/Cutoff" real "Hz" 100 0 10000
;control depth "Depth" real "Hz" 5000 -10000 10000
;control bw "Band Width" int "Hz" 100 50 400
;control mode "Mode" int "0=Low 1=High 2=Notch 3=Band" 3 0 3

;; An envelope follower controlled filter loosely based on the mutron stomp
;; box. September 18 2004, Steven Jones, This software is released under the
;; terms of the GNU public license.



;; Round is required by rms function but apparently isn't included in the
;; Audacity version of Nyquist ?

(defun round (x) (truncate (+ 0.5 x)))


;; Low pass filter with a bit of resonance.
;;
(defun rslp (signal ctrl bw)
  (sum (lp signal ctrl)
       (reson signal ctrl bw 1)))



;; High pass filter with resonance
;;
(defun rshp (signal ctrl bw)
  (sum (hp signal ctrl)
       (reson signal ctrl bw 1)))


;; The basic effect.
;;
(defun mutron:core (signal center depth bw mode)
  (let ((ctrlsig (sum center (scale depth (rms signal)))))
    (cond ((= mode 0)(rslp signal ctrlsig bw))
	  ((= mode 1)(rshp signal ctrlsig bw))
	  ((= mode 2)(areson signal ctrlsig bw))
	  (t (reson signal ctrlsig bw 1)))))


;; Calls mutron:core twice, the first time so we can find peak amplitudes to
;; normalize.
;;
(defun mutron (signal center depth bw mode)
  (let ((peakval (peak (mutron:core signal center depth bw mode) NY:ALL)))
    (scale (/ 1.0 peakval)(mutron:core signal center depth bw mode))))



;; Call mutron on global signal s, mono and two channel sounds supported.
;;
(if (arrayp s)
    (vector (mutron (aref s 0) center depth bw mode)
	    (mutron (aref s 1) center depth bw mode))
  (mutron s center depth bw mode ))







