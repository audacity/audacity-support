;nyquist plug-in
;version 4
;type generate
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;name "Pluck (Hz)..."
;preview linear
;action "Generating pluck sound..."
;author "David R.Sky"
;copyright "Released under terms of the GNU General Public License version 2"

;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .

;control freq "Pluck frequency (Hz)" float-text "" 261.626 10 10000
;control fade "Fade-out type" choice "abrupt,gradual" 0
;control dur "Duration [seconds]" float-text "" 1 0.1 30

; original pluck.ny modified by David R.Sky October 2007
; Modified by Steve Daulton 2016


; set final-amp for abrupt or gradual fade
(setf final-amp (if (= fade 1) 0.001 0.000001))

;; Get length of preview
(setq pdur
  (if (get '*track* 'view) ;NIL if preview
      dur
      (get '*project* 'preview-duration)))

(let* ((pluck-sound (snd-pluck *sound-srate* freq 0 dur final-amp))
       (pluck-sound (extract-abs 0 pdur pluck-sound)) ; shorten if necessary for preview.
       (max-peak (peak pluck-sound ny:all)))
  ;; snd-pluck has a random element and will occasionally produce
  ;; zero amplitude at very high pitch settings. Avoid division by zero.
  (if (> max-peak 0)
      (scale (/ 0.8 max-peak) pluck-sound)
      pluck-sound))
