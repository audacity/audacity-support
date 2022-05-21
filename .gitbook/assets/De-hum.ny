;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#FilterPlugin"
;name "Hum Remover"
;action "Filtering...."
;info "By Steve Daulton. http://audacity.easyspacepro.com\nReleased under GPL v2 Dec. 2009\n\nFor Audacity 1.3.8 or later.\n\n"


;control basef "Select Region" choice "Europe (50Hz),USA (60Hz)" 0
;control odd "Number of odd Harmonics" int "" 1 0 200
;control even "Number of even Harmonics" int "" 0 0 20
;control thresh "Hum Threshold Level(0 to 100%)" real "" 10 0 100

(setq basef 
   (case basef 
      (0 50)
      (1 60)))

(defun sanitise (var min max)
   (if (> var max) max
      (if (< var min) min var)))

(setq floor 0.00002)
(setq odd (sanitise odd 0 1000))
(setq even (sanitise even 0 1000))
(setq thresh (/ (sanitise thresh 0 100) 100.0))
(setq attack 0.25)
(setq look attack)

(if (or (> (* basef (1+ (* odd 2.0)))(/ *sound-srate* 2.0))(> (* basef (+ 2 (* even 2.0)))(/ *sound-srate* 2.0)))
   (format nil "Error!~%~%Sample rate of ~aHz is too low for ~a harmonics.~%~%Set fewer harmonics." *sound-srate* (max odd even))
   (progn
      (defun dehum (s-in itr itr2)
         (dotimes (var itr s-in)
            (setq s-in 
               (notch2 s-in (* basef (1+ (* var 2.0))) (+ (* 4 var) 2))))
         (dotimes (var itr2 s-in)
            (setq s-in
               (notch2 s-in (* basef (+ 2 (* var 2.0))) (+ (* 4 var) 4)))))

; left/right tracks linked for gate-follow to prevent left/right wobble         
      (defun gate-follow (s-in)
         (setq s-in (hp s-in 20)) ; hp filter to remove DC off-set
         (if (arrayp s-in) ; if stereo track
            (s-max (s-abs(aref s-in 0))(s-abs(aref s-in 1)))
            (s-abs s-in)))

   (setq gatefollow (gate-follow s)) ; audio for gate to follow

; gate envelope tracks gate-follow 
   (setq g-env 
      (clip (gate gatefollow look attack attack  floor thresh) 1.0))

      (defun noisegate (s-in env)
         (mult s-in env))

      (defun residual (s-in env)
         (mult s-in (sum 1.0 (mult -1 env))))

      (sim 
         (multichan-expand #' noisegate s g-env)
         (dehum (multichan-expand #' residual s g-env) odd even))))
