;nyquist plug-in
;version 3
;type process
;name "Level Speech..."
;action "Leveling speech dynamics..."

;; LevelSpeech.ny by Steve Daulton (www.easyspacepro.com). March 2014
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

;control amount "Leveling amount (%)" real "" 50 0 100

(setq amount (min 1 (max 0 (/ amount 100))))
(setq threshold (db-to-linear (* -24 amount)))
(setq ratio (power amount (/ 3.0)))
(print (linear-to-db threshold))
(print ratio)

(defun get-env (sig)
  (let* ((sr (snd-srate sig))
         (risetime 0.5)   ; seconds
         (falltime 1.0)  ; seconds
         (lookahead (truncate (* risetime sr)))
         ; pad the end. Really we want to remain at the
         ; last sample value but in Nyquist loads the
         ; entire sound into ram to get the value.
         (sig (if (< dur 1000)
                  (progn
                    (setq end-lev (abs-env (sref sig (- dur (/ sr)))))
                    (sim sig (snd-const end-lev dur sr 0.6)))
                  (sim sig (snd-const 1 dur sr 0.6))))
         (env (snd-follow sig threshold risetime falltime lookahead))
         (env (extract-abs (+ risetime (/ 20 sr)) (+ risetime (/ 20 sr) dur) env))
         (env (sum (- 1 ratio)(mult ratio env)))
         (env (snd-exp (diff 0 (snd-log env)))))
    env))

;; absolute maximum signal
(defun max-sig (sig)
  (if (arrayp sig)
      (s-max (snd-abs (aref sig 0))(snd-abs (aref sig 1)))
      (snd-abs sig)))

;;; brick wall limiter
(defun limit (s-in)   
  (let* ((la-time (/ 300.0))                      ; lookahead time (seconds)
         (la-s (round (* la-time *sound-srate*))) ; lookahead samples
         (pad-time (* 3 la-time))                 ; padding required at start (s)
         (pad-s (* 3 la-s))                       ; padding smaples
         (padding (snd-const (peak s-in pad-s) 0 *sound-srate* (* 3.0 la-time)))
         (peak-env (snd-avg s-in (* 4 la-s) la-s OP-PEAK))
         (peak-env (sim padding (at-abs pad-time (cue peak-env))))
         (peak-env (extract 0 1 (s-max 1 peak-env))))
    (mult s-in
      (snd-exp 
        (mult -1 (snd-log peak-env))))))

(setq dur (get-duration 1))

(cond
  ((< dur 2) "Error.\nSelection must be at least 2 seconds.")
  ((= ratio 0) (mult (db-to-linear -1) (multichan-expand #'limit s)))
  (t (let ((s (multichan-expand #'limit s)))
       (mult s (get-env (max-sig s))))))



