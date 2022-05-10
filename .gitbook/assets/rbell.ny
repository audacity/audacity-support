;nyquist plug-in
;version 1
;type generate
;name "Risset Bell"
;action "Generating Risset Bell..."
;info "Adapted by Steven Jones pluto@swbell.net\nA bell instrument based on the work Jean Claude Risset\nThis plugin is an adaptation of a demo file by Pedro Jose Morales\ncontained in the standard Nyquist distribution.
;control key "MIDI key" int "" 72 0 127
;control wdecay "Decay" float "sec" 10 0 30
;control fdecay "Fractional Decay" float "n/100 sec" 0 0 99

(setq frq (step-to-hz key))
(setq decay (+ wdecay (* 0.01 fdecay)))


(defun log2 (n)
  (/ (log (float n))(log 2.0)))
  
(defun percussion (decay)
  (exp-dec 0 (expt 2.0 (- (log2 decay) 3)) decay))


(defun rbell:partial (frq amp decay)
  (mult (sine (hz-to-step frq) decay)
	(scale amp (percussion decay))))





(defun rbell (frq decay)
  (sim 
   (rbell:partial (* frq .56)         1.00 (* decay 1.000))
   (rbell:partial (+ (* frq .56) 1)   0.67 (* decay 0.900))
   (rbell:partial (* frq .92)         1.35 (* decay 0.650))
   (rbell:partial (+ (* frq .92) 1.7) 1.80 (* decay 0.550))
   (rbell:partial (* frq 1.19)        2.67 (* decay 0.325))
   (rbell:partial (* frq 1.7)         1.67 (* decay 0.350))
   (rbell:partial (* frq 2.0)         1.46 (* decay 0.250))
   (rbell:partial (* frq 2.74)        1.33 (* decay 0.200))
   (rbell:partial (* frq 3.0)         1.33 (* decay 0.150))
   (rbell:partial (* frq 3.76)        1.00 (* decay 0.100))
   (rbell:partial (* frq 4.07)        1.33 (* decay 0.075))))


(setq rawsig (rbell frq decay))
(setq peakval (peak rawsig ny:all))
(scale (/ 1.0 peakval) rawsig)




