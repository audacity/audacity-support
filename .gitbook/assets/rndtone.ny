;nyquist plug-in
;version 1
;type generate
;name "RNDTONE"
;action "Generating RNDTONE..."
;info "Random tone generator by Steven Jones pluto@swbell.net  GNU 2004"
;control *dur* "Duration" real "Sec" 20 1 30
;control *n* "Density" int "Tone count" 60 1 100
;control *floor* "Low frq limit" real "Hz" 300 20 1000
;control *ceiling* "High frq limit" real "Hz" 600 20 1000


;; Return random number in interval [low,high)
;;
(defun rndr (low high)
  (let ((range (abs (- high low)))
	(floor (min low high)))
    (+ floor (random (truncate range)))))



(defun make-cue-list (n)
  (if (plusp n)				
      (let* ((start (* 0.75 (rndr 0 *dur*))) ;start time
	     (dur (rndr 1 (+ 1 (- *dur* start))))  ;tones duration
	     (att (* 0.5 (rndr 0 dur)))      ;attack time
	     (dec (rndr 0 (- dur att)))      ;decay time
	     (sus (max 0 (- dur att dec)))   ;sustain time
	     (frq (rndr *floor* *ceiling*))  ;tone frequency in Hz
	     (amp (rndr -9 0))               ;amplitude in db
	     )
	(cons (list start dur att sus dec frq amp)(make-cue-list (- n 1))))
    nil))



(defun asd (a s d)
  (pwl a 1 (+ a s) 1 (+ a s d)))



(defun rndtone (cuelist)
  (simrep (n (length cuelist))
	  (let* ((args (nth n cuelist))
		 (start (car args))
		 (attack (third args))
		 (decay (fourth args))
		 (sustain (nth 4 args))
		 (frq (nth 5 args))
		 (amp (nth 6 args)))
	    (at start (cue (scale-db amp (mult (osc (hz-to-step frq)(second args))
					       (asd attack sustain decay))))))))



(setq cue1 (make-cue-list *n*))
(setq peak1 (peak (rndtone cue1) ny:all))
(scale (* 0.9 (/ 1.0 peak1))(rndtone cue1))
