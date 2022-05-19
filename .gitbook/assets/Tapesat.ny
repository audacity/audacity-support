;nyquist plug-in
;version 3
;type process
;preview enabled
;categories "http://lv2plug.in/ns/lv2core/#DynamicsPlugin"
;name "Tape Saturation Limiter..."
;action "Processing peaks..."
;info "by Jvo Studer <jvo@gmx.ch>\nGPL v2.\n"

;; tapesat.ny by Jvo Studer, March 2011
;; based on 'Soft Clipper' by Steve Daulton.
;; Simulates Tape saturation using a soft clipping limiter.
;; Version 1.1 added 2Hz DC blocking highpass filter
;; Preview button and a few formatting and GUI tweaks
;; by Steve Daulton Oct 2015.
;;
;; Released under terms of the GNU General Public License version 2
;; http://www.gnu.org/licenses/gpl-2.0.html

;control thres "Saturation threshold" real "dB" -3 -6 -1
;control ratio "Limiting ratio [Soft]" real "[Hard]" 2 1 4
;control hfhz "High freq. saturation crossover" int "Hz" 4500 2000 9000
;control hfgain "High freq. saturation reduction" real "dB" -5 -8 -1
;control makeup "Auto make-up gain" choice "Off,On" 0

(setq thresh (db-to-linear thres))        ; convert to linear threshold
(setq hfhz (max (min hfhz (/ *sound-srate* 2.0)) 1000))
(setq ratio (max 1.01 ratio))

(if (> ratio 2.0)
    (setq ratio (* 3.09 ratio))           ; scale large ratio settings
    (setq ratio (* 6.18 (- ratio 1))))    ; scale small ratio settings
(setq nratio (- ratio))                   ; negative ratio
(setq nthresh (- thresh))                 ; negative threshold
(setq iratio (/ ratio))                   ; inverse ratio
(setq inratio (/ nratio))                 ; inverse negative ratio
(setq clip (- thresh 1.0))                ; clipping region
(setq clip (* ratio clip))                ; scaled by negative ratio
(setq clip (* iratio (- 1.0 (exp clip)))) ; clipped amplitude of clipping region
(setq amp (* 1.023 (+ thresh clip)))      ; amplitude of clipped maximum + 0.2dB

(defun sclimit (s-in mkup)
  (let* ((top (sum nthresh (s-max s-in thresh)))    ; positive peak
         (top (mult nratio top))                    ; scaled by negative ratio
         (bottom (sum thresh (s-min s-in nthresh))) ; negative peak
         (bottom (mult ratio bottom))               ; scaled by ratio
         (gain (if (= mkup 1) (/ amp) 1.0)))        ; gain for make-up or 1.0
    (mult gain
          (sim 
            (s-min thresh (s-max s-in nthresh))     ; middle bit
            (mult inratio (sum -1 (s-exp top)))
            (mult iratio (sum -1 (s-exp bottom)))))))

(let* ((pregain (* -1 hfgain))
       (sig (hp s 5.5))
       (sig (eq-highshelf sig hfhz pregain 0.7))
       (sig (multichan-expand #'sclimit sig makeup)))
  (hp (eq-highshelf sig hfhz hfgain 0.7)
      2.0))
