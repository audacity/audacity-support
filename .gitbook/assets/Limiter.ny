;nyquist plug-in
;version 1
;type process
;categories "http://lv2plug.in/ns/lv2core/#DynamicsPlugin"
;name "Limiter..."
;action "Limiting..."
;info "by Steve Daulton. (www.easyspacepro.com).\nReleased under GPL v2.\n"

;; limiter.ny by Steve Daulton November 2011
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html 

;control thresh "Limit to (dB)" real "" -3 -10 0
;control hold "Hold (ms)" real "" 10 1 50
;control makeup "Make-up Gain (0=No, 1=Yes)" int "" 1 0 1

(setq hold (max 1.0 hold))
(setq thresh (min 0 thresh))

(defun limit (s-in thr m-up hld)
  (let* ((thr (db-to-linear thr))
         (step (truncate (* (/ hld 3000.0) *sound-srate*)))
         (waveshape (snd-avg s-in (* 4 step) step op-peak))
         (env (sum thr (mult thr (diff 1 waveshape))))
         (env (clip env 1))
         (offset (/ (* 3 step) *sound-srate*))
         (initial (peak s-in (* 2 step)))
         (pause-lev (sum thr (mult thr (diff 1 initial))))
         (pause-lev (clip pause-lev 0.9))
         (pause (snd-const pause-lev 0 *sound-srate* offset)))
    (setq env 
      (sim
         pause
         (at-abs offset (cue env))))
    (if (= m-up 1)
      (mult (/ thr) s-in env)
      (mult s-in env))))

(multichan-expand #'limit (clip s 1) thresh makeup hold)
