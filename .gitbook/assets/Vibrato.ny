;nyquist plug-in
;version 4
;type process
;name "Vibrato"
;author "Steve Daulton (audionyq.com)"
;copyright "Released under terms of the GNU General Public License version 2 or later."
;release 3.0.2.0

;; Limitations:
;; This plug-in is intended for use on short selections.
;; Due to cumulative rounding errors, the sound quality will
;; gradually deteriorate on long selections, so it is recommended
;; to apply the effect to selections that are less than 1 minute.

;; vibrato.ny by Steve Daulton, June 2010
;; Updated: June 2021
;; Released under terms of the GNU General Public License version 2
;; http://www.gnu.org/copyleft/gpl.html

;control text "Limitation: Sound quality will deteriorate on long selections."
;control initial-speed "Initial speed" real "Hz" 1 0 10
;control final-speed "Final speed" real "Hz" 5 0 10
;control initial-depth "Initial depth" real "%" 10 0 100
;control mid-depth "Mid point depth" real "%" 100 0 100
;control final-depth "Final depth" real "%" 0 0 100
;control mid-pos "Mid point position" real "%" 30 0 100

;; Change scale from % to a scale of 0 to 1
(setq initial-depth (/ initial-depth 100.0))
(setq mid-depth (/ mid-depth 100.0))
(setq final-depth (/ final-depth 100.0))
(setq mid-pos (/ mid-pos 100.0))

(defun vibrato (sig)
  (let ((vib-depth (pwlv initial-depth mid-pos mid-depth 1 final-depth))
        (mod (hzosc (pwlv initial-speed 1 final-speed)))
        (p1 (/ (log 2.0) 6.0))  ;help calculate ratio scaled to +/- 1 whole tone.
        hz-ratio map)
    (setf hz-ratio (s-exp (mult (mult vib-depth mod) p1)))
    (setf map (integrate hz-ratio))
    (snd-compose sig (force-srate *sound-srate* map))))

(multichan-expand #'vibrato *track*)
