;nyquist plug-in
;version 3
;type process
;name "Parametric EQ..."
;categories "http://lv2plug.in/ns/lv2core/#FilterPlugin"
;action "Applying parametric EQ..."
;info "by Steve Daulton and Bill Wharrie.\nReleased under GPL v2."

;; Parametric.ny by Steve Daulton and Bill Wharrie. Sept 2012
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html 
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control freq "Frequency (Hz)" real "" 1000 10 10000
;control width "Width" real "" 5 0 10
;control gain "Gain (dB)" real "" 0 -15 15

; width in approx 1/2 octaves
(setq width (* width 0.5))

;; print warning to debug window if freq too high
(when (> freq (/ *sound-srate* 4.0))
  (format t "Warning.\nMaximum filter frequency~%at ~a Hz sample rate is ~a Hz"
          *sound-srate* (/ *sound-srate* 4.0)))

;; Sanitize user input
(defun sanitize (var minval maxval)
  (max (min var maxval) minval))

(setq freq (sanitize freq 10 (min 10000 (/ *sound-srate* 4.0))))
(setq width (sanitize width 0.1 10))
(setq gain (sanitize gain -15 15))

(if (= gain 0)
    (format nil "Nothing to do.~%Gain set to zero")
    (eq-band s freq gain width))