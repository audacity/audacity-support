;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#SpatialPlugin"
;name "Pseudo-Stereo..."
;action "Creating pseudo-stereo..."
;info "By Steve Daulton (http://easyspacepro.com). Released under GPL v2.\n\nIf the result is too echoey, reduce the 'Delay factor' or 'Effect mix'.\n***  Requires a 2 channel track  ***\n"

;; pseudostereo.ny by Steve Daulton June 2011.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .
;; version 0.1 June 2011
;; Requires Audacity 1.3 or later.

;control source "Select source channel" choice "Left (upper),Right (lower)" 0
;control df "Delay factor (%)" real "" 30 0 100
;control mix "Effect mix (%)" real "" 80 0 100


(setq df (max 0 (min 1 (/ df 100.0))))
(setq mix (max 0 (min 1 (/ mix 100.0))))

;; Spacialize  Functions
;; create new Left channel
(defun Lsplit (leftch)
  (let((f1 (lp leftch 300)) ;Common Sub below 300
       (f2 (feedback-delay(lp(hp leftch 300)600)(* df 0.2) 0)) ;Low on LEFT 300-600
       (f3 (lp(hp leftch 600)1200)) ;Common MID - 600-1200
       (f4 (feedback-delay(lp(hp leftch 1200)2400)(* df 0.08) 0)) ;High Mid on LEFT 1200-2400
       (f5 (hp  leftch 2400))) ;Common Presence
    (sim f1 f2 f3 f4 f5))) ;mix sounds
;; create new Right channel
(defun Rsplit (rightch)
  (let((f1 (lp rightch 300)) ;Common Sub below 300
       (f2 (feedback-delay(lp(hp rightch 300)600)(* df 0.14) 0)) ;Low Mid on RIGHT 300-600 Hz
       (f3 (lp(hp rightch 600)1200)) ;Common MID - 600-1200
       (f4 (feedback-delay(lp(hp rightch 1200)2400)(* df 0.06) 0)) ;Treble on RIGHT 1200-2400
       (f5 (hp rightch 2400))) ;Common Presence
    (sim f1 f2 f3 f4 f5))) ;mix sounds

(if (arrayp s) ;test for stereo
  (progn
    (setf s (if (= source 0)(aref s 0)(aref s 1)))
    (if (< *sound-srate* 4800)
        (format nil "Error.\nTrack sample rate too low for Stereo Simulation.")
        (vector
          (sim (mult mix (Lsplit s))(mult (- 1 mix) s))
          (sim (mult mix (Rsplit s))(mult (- 1 mix) s)))))
      (format nil "Error.\n2 channel (stereo) track required."))
