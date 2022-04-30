;nyquist plug-in
;version 2
;type analyze
;name "Peak Finder rft..."
;action "Analysing the audio ..."
;control equal-levels "Place labels at" choice "first peak only,all equally loud peaks" 1  
;control minimum-distance "Minimum Distance:[samples]" int "" 100 1 1000

;info "Peak Finder by edgar-rft@web.de" 

; no garbage collector messages please
(setf *gc-flag* nil)

(if (< minimum-distance 1)
    (setf minimum-distance 1)
  (setf minimum-distance (truncate minimum-distance)))

(defun make-peak-waveform (sound) 
  (if (arrayp sound) 
      (snd-maxv (snd-abs (aref s 0)) (snd-abs (aref s 1)))
    (snd-abs sound)))

(defun add-label (time text)
  (setq label-list (cons (list time text) label-list)))

(setf label-list nil)

;; The main working part of the program.
(let* ((peak-waveform (make-peak-waveform s))
       (maximum-peak 0.0) (last-peak 0.0))
  (do ((n 0 (1+ n))                                   ; sample counter
       (current-sample (snd-fetch peak-waveform)      ; init-form
                       (setq vowel-sample             ; loop-form
                             (snd-fetch peak-waveform))))
    ; Exit when we run out of samples, return the number of samples (n)
    ((not current-sample) n)
    (cond ((and (= equal-levels 1)
                (= current-sample maximum-peak)
                (> (- n last-peak) minimum-distance))
           (format t "n: ~A, lp: ~A, n-lp: ~A m: ~A~%" n last-peak (- n last-peak) minimum-distance)
           (setf last-peak n)
           (add-label (/ n *sound-srate*) (format nil "~AdB" (linear-to-db current-sample))))
          ((> current-sample maximum-peak)
           (setf maximum-peak current-sample)
           (setf last-peak n)
           (setf label-list `((,(/ n *sound-srate*) ,(format nil "~AdB" (linear-to-db current-sample)))))))))

(format t "resulting list: ~S~%" label-list)

; If no peaks were found, return a message
(if (null label-list)
    "No Peaks found."
  label-list)
