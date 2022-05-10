;nyquist plug-in
;version 1
;type generate
;name "KLSTRBAS"
;action "Generating KLSTRBAS..."
;info "By Steven Jones pluto@swbell.net  GNU 2004\nKLSTRBAS creates dense sounds by combining multiple waveforms.\nThe number of source components is 4 times the density value.\nThe frequency relationship between components is determined by\na combination of the detune and flange values. Specifically the\nnth component has a frequency p * ((1 + d/100 + 1/(10^f))^n)\nWhere p is the fundamental frequency, d is the detune parameter\nand f is the flange parameter.\n\nNote wave tables are not band limited so aliasing will occur at\nsufficiently high frequencies."
;control key "MIDI key" int "" 45 0 127
;control decay "Decay" float "sec" 2 0 30
;control fdecay "Fractional Decay" float "n/100 sec" 0 0 99
;control ni "Density" int "" 4 1 6
;control rf "Detune" int "" 0 0 99
;control flange "Flange" int "" 2 0 4
;control tab "Wave table" int "0=sine 1=tri 2=sqr 3=saw" 3 0 3
 




(setq *sqr-table*  (list (pwl 0 1 0.5 1 0.5 -1 1 -1 1) (hz-to-step 1) t))

(setq frq (hz-to-step key))
(setq decay (+ decay (* 0.01 fdecay)))
(setq n (* ni 4))
(setq detune (- 4 flange))
(setq r (+ 1 (/ rf 100.0)(/ (expt 10.0 detune))))
(setq wavtab (cond ((= tab 0) *sine-table*)
		   ((= tab 1) *tri-table*)
		   ((= tab 2) *sqr-table*)
		   (t *saw-table*)))



(defun log2 (n)
  (/ (log (float n))(log 2.0)))
  
(defun percussion (decay)
  (exp-dec 0 (expt 2.0 (- (log2 decay) 3)) decay))


(defun cluster-bass (frq decay n r tab )
  (mult 
   (simrep (i (truncate n))
	   (osc (hz-to-step (* frq (expt (float r) i))) decay tab))
   (percussion decay)))




(setq rawsig (cluster-bass frq decay n r wavtab))
(setq peakval (peak rawsig ny:all))
(scale (/ 1.0 peakval) rawsig)


	
