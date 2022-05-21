;nyquist plug-in
;version 1
;type process
;name "Random Pitch Modulation..."
;action "Randomly warping your audio..."
;info "Random Pitch Modulation by David R. Sky"

;control depth "Warping depth" real "depth" 0.100 0.001 2.000
;control maxspeed "Max sweep speed" real "Hz" 0.50 0.01 20.00
;control factor "Sweep depth factor" int "factor" 80 1 300
;control maxdepth "Max pitch mod depth" real "depth" 0.50 0.01 3.00

;; Random pitch Modulation by David R. Sky October 1, 2004
;; As in previous random plug-ins,
;; maxspeed and factor are inversely proportional
;; 
;; works on mono and stereo audio
;; if stereo, each channel will have different random modulation

(defun ransiglin (offset factor maxspeed)

(sum offset (lp (mult factor (lp (noise) maxspeed)) (mult 0.5
maxspeed))))

(setf offset (mult 0.50 maxdepth))

(if (arrayp s) 
(vector 
(snd-tapv (aref s 0) offset (mult depth 
(ransiglin offset factor maxspeed)) maxdepth) 

(snd-tapv (aref s 1) offset (mult depth 
(ransiglin offset factor maxspeed)) maxdepth))

(snd-tapv s offset (mult depth 
(ransiglin offset factor maxspeed)) maxdepth))

