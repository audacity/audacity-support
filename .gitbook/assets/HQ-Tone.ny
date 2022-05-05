;nyquist plug-in
;version 4
;type generate
;name "HQ-Tone"
;preview linear
;action "Generating tone..."
;author "Steve Daulton"
;copyright "Steve Daulton (audionyq.com)"
;release 3.0.2-2
;copyright "Released under terms of the GNU General Public License version 2 or later."

;; Released under terms of the GNU General Public License version 2 or later:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

;; hq-tone.ny An alias free oscillator by Steve Daulton. Sept 2011
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .
;; For Audacity 1.3.4 or later.

;control wave "Waveform" choice "Sine,Square,Triangle,Saw,Inverse Saw" 1
;control freq "Frequency (Hz)" real "" 440 20 10000
;control amp "Amplitude (0 to 1)" real "" 0.8 0 1
;control dur "Duration" time "" 30 0 nil
;control phase "Phase (-180 to 180)" real "" 0 -180 180
;control smooth "Smoothing" choice "Enabled,Disabled" 0


(setf smooth (= smooth 0))

;;; (hq-tone frequency duration | opt-arg [wave] [linear amplitude] [phase])
;;; wave 0=sine 1=square 2=triangle 3=saw 4=inverse saw
(defun hq-tone (f dur &optional wave (amp 1) (phase 0))
  (setq len (* *sound-srate* dur))               ; set LEN to get a progress bar
  (setq wlength (/ *sound-srate* freq))          ; wavelength in samples
  ;; if at least one harmonic
  (cond
    ((or (and (= wave 1)(< f (/ *sound-srate* 6.0)))
            (and (> wave 1)(< f (/ *sound-srate* 4.0)))
            (= wave 0))
      (case wave
        (1 (square-wav f amp dur phase))
        (2 (tri-wav f amp dur phase))
        (3 (saw-wav f amp dur phase))
        (4 (inv-saw-wav f amp dur phase))
        (T (sine-wav f amp dur phase))))
    (t  ; else return a sine wave and debug warning
      (format T "Warning:~%~
                Frequency (~a Hz) very high for sample rate (~a Hz).~%~
                Only the fundamental frequency can be produced."
                f *sound-srate*)
      (sine-wav f amp dur phase))))


  ;; Square wave function (no alias)
  (defun square-wav (f amp dur ph)
    (setq f (float f))
    (let* ((wave (build-harmonic 1 2048))
           (wl (+ (/ *sound-srate*)(/ freq)))    ; adjust start
           (dur (+ wl dur)))
      (do ((i 3.0 (setq i (+ 2.0 i))))           ; odd harmonics
          ((or (>= (* i f)(/ *sound-srate* 2.0))(> i 2048)) wave)
        (setq wave (sum wave (mult (/ i) (build-harmonic (truncate i) 2048)))))
      (setq wave (osc (hz-to-step f) dur (maketable wave) ph))
      (when smooth
        (setq wave (lowpass2 wave (/ *sound-srate* 4) 0.56))
        (setq wave (extract-abs wl (+ dur wl)(cue wave))))
      (mult wave amp (/ (peak wave (truncate (* 4 wlength)))))))

  ;; Triangle wave function  (no alias)
  (defun tri-wav (f amp dur ph)
    (setq f (float f))
    (let ((wave (build-harmonic 1 2048)))
      (do ((i 3.0 (setq i (+ 2.0 i)))            ; odd harmonics
           (alt -1.0 (setq alt (* -1.0 alt))))   ; reverse phase of alternate harmonics
          ((or (>= (* i f)(/ *sound-srate* 2.0))(> i 2048)) wave)
        (setq wave 
          (sum wave (mult (/ alt(* i i))(build-harmonic (truncate i) 2048)))))
      (setq wave (osc (hz-to-step f) dur (maketable wave) ph))
      (mult wave amp (/ (peak wave (truncate (* 4 wlength)))))))

  ;; Inverse Saw wave function (no alias)
  (defun inv-saw-wav (f amp dur ph)
    (setq f (float f))
    (let* ((wave (build-harmonic 1 2048))
           (wl (+ (/ *sound-srate*)(/ freq)))    ; adjust start
           (dur (+ wl dur)))
      (do ((i 2.0 (setq i (1+ i))))              ; all harmonics
          ((or (>= (* i f)(/ *sound-srate* 2.0))(> i 2048)) wave)
        (setq wave (sum wave (mult (/ i) (build-harmonic (truncate i) 2048)))))
      (setq wave (osc (hz-to-step f) dur (maketable wave)(+ 180 ph)))
      (when smooth
        (setq wave (lowpass2 wave (/ *sound-srate* 3.8) 0.55))
        (setq wave (extract-abs wl (+ dur wl)(cue wave))))
      (mult wave amp (/ (peak wave (truncate (* 4 wlength)))))))

  ;; Saw wave function (no alias)
  (defun saw-wav (f amp dur ph)
    (mult -1 (inv-saw-wav f amp dur ph)))

  ;; Sine wave function
  (defun sine-wav (f amp dur ph)
    (scale amp (osc (hz-to-step f) dur *table* ph)))


;;; Error check and run if OK.
(cond 
  ((> freq (/ *sound-srate* 2)) ; check max frequency
    (format nil "Error.~%~
                Frequency (~a hz) will alias at~%~
                current sample rate (~a hz)."
                freq *sound-srate*))
  ((< freq 1) ; check min frequency
    (format nil "Error.~%Frequencies below 1 Hz are not supported,~%"))
  ((<= amp 0) ; check for sub-zero amplitude
    (format nil "Amplitude set to ~a (linear).~%Nothing to do.~%" amp))
  ((<= dur 0) ; check for zero duration
    (format nil "Duration set to ~a seconds.~%Nothing to do.~%" dur))
  ; else generate tone
  (T (hq-tone freq dur wave amp phase)))
