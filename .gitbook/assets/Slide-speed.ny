;nyquist plug-in
;version 4
;type process
;debugbutton disabled
;name "Sliding Speed Change..."
;action "Changing speed..."
;author "Steve Daulton"
;copyright "Released under terms of the GNU General Public License version 2"

;control initial "Initial speed (0.1 to 10 x)" float-text "" 1 0.1 10
;control final "Final speed (0.1 to 10 x)" float-text "" 1 0.1 10

(defun get-map (dur s0 s1)
  (control-srate-abs *sound-srate*
    (let ((env (pwlv s0 dur s1)))
      (integrate env))))

(defun get-dur (dur s0 s1)
  ;; y = s0 + x(s1 -  s0)
  ;; integral y = (s0 * x) + ((s1 - s0) x^2)/2
  ;; new-duration = old-duration / (integral y from 0 to 1)
  (/ dur (+ s0 (/ (- s1 s0) 2))))

(defun timestretch (sig d0 s0 s1)
  (abs-env
    ;; Find the output duration first, then
    ;; create the speed map the right length for snd-compose.
    (let* ((dur (get-dur d0 s0 s1))
           (map (get-map dur s0 s1)))
      (snd-compose sig map))))


(if (or (/= initial 1)(/= final 1))
    (multichan-expand #'timestretch *track* (get-duration 1) initial final)
    "") ; As of Audacity 2.2.0, an empty string is a valid null return value.
