;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core#HighpassPlugin"
;name "Resonant Filter..."
;action "Applying Filter..."
;info "by Steve Daulton (www.easyspacepro.com)\nReleased under GPL v2.\n"

;; resonant.ny by Steve Daulton June 2012
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .

;control frequency "Filter frequency" real "Hz" 1000 1 20000
;control q "Resonance (Q)" real "" 10 0.1 100
;control type "Filter type" choice "Low Pass,High Pass,Band Pass" 0
;control amp "Output Gain" real "dB" -12 -60 0


(setq amp (db-to-linear amp))

(cond 
  ((> frequency (/ *sound-srate* 2))
    (format nil "Filter frequency is set at ~a Hz but must not~%~
                be greater than ~a Hz (half of the track sample rate)."
            frequency
            (truncate (/ *sound-srate* 2.0))))
  ((<= frequency 1)
    (format nil "Filter frequency is set at ~a Hz~%but must be at least 1 Hz."
            frequency))
  ((< q 0.1)
    (format nil "Q is set at ~a but must be at least 0.1." q))
  ((= type 0)(mult amp (lowpass2 s frequency q)))
  ((= type 1)(mult amp (highpass2 s frequency q)))
  ((= type 2)(mult amp (highpass2 (lowpass2 s frequency q) frequency q))))
  