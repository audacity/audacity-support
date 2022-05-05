;nyquist plug-in
;version 1
;type generate
;name "PWM"
;action "Generating Modulated Pulse ...
;info "By Steven Jones    GNU October 2004\nPulse Width Modulation"
;control key "MIDI key" int "" 60 0 127
;control cents "Cents" int "" 0 0 99
;control durms "Duration" int "msec" 10000 1 30000
;control modcyc "Mod Rate" int "cycles" 1 1 100
;control modpercent "Mod Depth" int "%" 90 -100 100
;control modshape "Mod Wave" int "0-tri 1-up saw 2-down saw" 0 0 2
;control bias "Width" int "%" 0 0 100
;control amp "Amp" int "%" 100 0 100




(setq *tri*  (list (pwl 0.5 1 1)(hz-to-step 1) t)
      *usaw* (list (pwl 1 1 1)(hz-to-step 1) t)
      *dsaw* (list (pwl 0 1 1)(hz-to-step 1) t))




(setq 
 frq (step-to-hz (+ key (* 0.01 cents)))
 dur (* 0.001 durms)
 modfrq (/ modcyc (float dur))
 modamp (* 0.01 modpercent)
 modtab (cond ((= modshape 0) *tri*)
	      ((= modshape 1) *usaw*)
	      (t *dsaw*))
 width (* 0.01 bias))

(defun pwlosc (frq dur bias modamp modfrq modtab)
  (stretch dur
	   (osc-pulse frq (sum bias 
			       (scale modamp (lfo modfrq 1 modtab))))))


(scale (* 0.01 amp)
       (pwlosc frq dur width modamp modfrq modtab))
