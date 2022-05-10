;nyquist plug-in
;version 2
;type generate
;name "Harmonic Noise"
;action "Harmonic Noise..."
;info "Author: Steven Jones   GPL  Dec 2004\n\nHarmonic noise generates tones which are approximately harmonic. \nFor each note in  MIDI note list an n-partial tone is produced. Each \npartial of each tone is actually a narrow band of noise centered at the \nideal harmonic frequency. MIDI notes may be specified either as integers \nor using the Nyquist constants 'g3' for third octave g, 'bf4' for fourth \noctave b flat, 'gs2' for second octave g sharp etc. Higher band width values \nresults in a more noisy tone.  The final parameter selects between one of \ntwo harmonic distributions."
;control notes "MIDI Note List" string "" "c2 c3 ef4 g4 bf4 c5"
;control n "Number of Harmonics" int "" 8 1 32
;control dur "Duration" int "sec" 10 1 30
;control bw "Band Width" int "Hz" 2 1 1000
;control mode "Odd Harmonics Only" int "0=all 1=odd" 0 0 1




;; Format user's MIDI note list into a LISP expression and evaluate. The
;; result is assigned to symname.
;;
(defun eval-string-to-list (symname str)
  (let ((form (strcat "(setq " symname " (list " str "))")))
    (eval (read (make-string-input-stream form)))))


;; A noisy sine wave oscillator. Uses filtered noise to ring modulate sine
;; wave.
;;
(defun nseosc (hz dur bw)
  (mult (osc (hz-to-step hz) dur)
	(lowpass4 (noise dur) bw)))


;; An n "harmonic" noisy oscillator.
;;
(defun hnosc (pitch dur &key (bw 100)(n 8)(odd nil))
  (let (hz ffn j)
    (setq hz (step-to-hz pitch))
    (setq ffn (if odd 
		  #'(lambda (j)(* hz (+ (* j 2) 1)))
		#'(lambda (j)(* hz j))))
    (simrep (i (truncate n))
	    (progn 
	      (setq j (+ i 1)) 
	      (scale (/ 1.0 j)
		     (nseosc (funcall ffn j) dur bw))))))

	


;; Evaluate user's note list and generate tone.
;;
(eval-string-to-list "notelist" notes)
(setq rawsig (simrep (i (length notelist))
		     (hnosc (nth i notelist) dur :bw bw :n n :odd (= mode 1)))) 

;; Noramlize.
;;
(setq peakamp (peak rawsig ny:all))
(scale (* 0.95 (/ 1.0 peakamp)) rawsig)

