;nyquist plug-in
;version 1
;type process
;name "Hyperexp"
;action "Performing Effect: Hyperexp..."
;info "Author: Steven Jones   pluto@swbell.net\n\nGPL  Sep 2004\n
;control norm "Normalize" int "0=no 1=yes" 1 0 1


(defun round (x) (truncate (+ 0.5 x)))

(defun hyperexp:invert (signal)
  (let ((min 0.001))
    (recip (sum min signal))))

(defun hyperexp:mono (signal)
  (let* ((env (hyperexp:invert (rms signal))))
    (mult signal env)))

(defun hyperexp (signal)
  (if (soundp signal)
      (hyperexp:mono signal)
    (vector (hyperexp:mono (aref signal 0))
	    (hyperexp:mono (aref signal 1))
	    )))




(defun peak2  (signal)
  (if (soundp signal)
      (peak signal NY:ALL)
    (max (peak (aref signal 0) NY:ALL)
	 (peak (aref signal 1) NY:ALL)
	 )))


(setq peakval
      (if norm
	  (peak2 (hyperexp s))
	1))

(scale (/ 1.0 peakval) (hyperexp s))





