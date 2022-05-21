;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#EQPlugin"
;name "Desk EQ..."
;action "Equalizing..."
;info "By Steve Daulton (www.easyspacepro.com)\nReleased under GPL v2.\n"

;; desk-eq.ny by Steve Daulton July 2012.
;; Parameters modelled on Allen & Heath(TM) GL Series mixing console.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control hpf "100 Hz HPF" choice "Enabled,Disabled" 1 
;control HF-gain "HF Gain" real "dB @ 12 kHz" 0 -15 15
;control HM-freq "High-Mid Frequency" int "Hz" 3000 500 15000
;control HM-gain "High-Mid Gain" real "dB" 0 -15 15
;control LM-freq "Low-Mid Frequency" int "Hz" 180 35 1000
;control LM-gain "Low-Mid Gain" real "dB" 0 -15 15
;control LF-gain "LF Gain" real "dB @ 80 Hz" 0 -15 15

;; sanitise user input
(defun sanitise (var minval maxval)
  (max (min var maxval) minval))

(setq HF-gain (sanitise HF-gain -15 15))
(setq HM-freq (sanitise HM-freq 500 15000))
(setq HM-freq (sanitise HM-freq 500 (/ *sound-srate* 2)))
(setq HM-gain (sanitise HM-gain -15 15))
(setq LM-freq (sanitise LM-freq 35 1000))
(setq LM-gain (sanitise LM-gain -15 15))
(setq LF-gain (sanitise LF-gain -15 15))

(defun highshelf (sig gain)
  (eq-highshelf
    (eq-highshelf
      (eq-highshelf
        (eq-highshelf sig 1000 (* gain 0.3) 0.5)
        3000 (* gain 0.25) 0.5)
      6000 (* gain 0.4) 0.75)
    12000 (* gain 0.2) 0.5))

(defun lowshelf (sig gain)
  (eq-lowshelf
    (eq-lowshelf
      (eq-lowshelf
        (eq-lowshelf sig 1000 (* gain 0.3) 0.5)
        320 (* gain 0.25) 0.5)
      160 (* gain 0.4) 0.75)
    80 (* gain 0.2) 0.5))

(defun equalise (sig)
  (lowshelf  
    (eq-band
      (eq-band 
        (highshelf s HF-gain)
        LM-freq LM-gain 2.5)
      HM-freq HM-gain 2.5)
    LF-gain))

(if (< *sound-srate* 24000)
  (print "Error.\nThe track sample rate must be greater than 24000 Hz")
  (if (= hpf 0)
    (highpass2 (equalise s) 80 0.6)
    (equalise s)))

