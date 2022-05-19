;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core#GatePlugin"
;name "Pop Mute"
;action "Muting pops..."
;info "by Steve Daulton (www.easyspacepro.com). GPL v2.\n\n"
;; popmute.ny by Steve Daulton. Sept 2011
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .
;; For Audacity 1.3.4 or later.

;control help "View Help" choice "No,Yes" 0
;control thresh "Threshold" real "dB" -6 -24 0
;control floor "Mute Level" real "dB" -24 -100 0
;control look "Look ahead" real "milliseconds" 10 1 100
;control rel "Release time" real "milliseconds" 10 1 1000


;;; Help screen
(defun help ()
  (setq help
"Sounds (such as 'pops') that have a peak level above
the 'Threshold' level will be lowered to a 'residual'
level set by the 'Mute Level'. Be aware that ALL
sounds above the threshold will be affected.
Take care to avoid selecting loud sounds that should
not be muted.\n
The effect 'looks ahead' for peaks so that it can
begin to lower the level of the sound smoothly a
short time before the peak occurs. This is set by
the 'Look ahead' time value.\n
After the peak has passed, the level will smoothly
return to normal over a period set by the 'Release
time' setting.\n
To attenuate brief clicks, time values of around
5 ms are likely to work well. For larger pops,
values of 10 ms or more may sound better.\n
For reverberant sounds such as hand claps, the 
'Release time' may be increased so as to catch
some of the reverberation.")
  (format t "~a" help)    ; output to debug window
  (format nil "~a" help)) ; output to popup

;;; PopMute function
(defun popmute (s-in)
  (let* ((s-abs (s-abs s-in))
         (env (gate s-abs look atk rel floor thresh))
         (env (diff env (1+ floor)))
         (env (s-min (mult -1 floor) env))
         (env (clip env 1))
         (env (mult -1 env)))
    (mult s-in env)))

(if (= help 1)
  (help)                ; show help
  (progn                ; else run program
    (setq err "")       ; initialise error message
    
    ;;; Error Checking
    (if (> thresh 0)(setq err (strcat err (format nil
      "Threshold (~a dB) must be below 0 dB.~%~%" thresh))))
    (if (> floor 0)(setq err (strcat err (format nil
      "Mute Level (~a dB) must be below 0 dB.~%~%" floor))))
    (if (< look 0)(setq err (strcat err (format nil
      "Look ahead (~a ms) must be positive.~%~%" look))))
    (if (< rel 0)(setq err (strcat err (format nil
      "Release time (~a ms) must be positive.~%~%" rel))))
      
    ;; If errors, print them 
    (if (>(length err)0)
      (format nil "ERROR:~%~%~a" err)
      ;; else process
      (progn
        ;; scale input values
        (setq floor (db-to-linear floor))
        (setq thresh (db-to-linear thresh))
        (setq look (/ look 1000.0))
        (setq rel (/ rel 1000.0))
        (setq atk look)
        ;; pop mute all channels
        (multichan-expand #'popmute s)))))
