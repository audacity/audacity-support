;nyquist plug-in
;version 4
;type process
;name "Change Speed by Semitones..."
;action "Processing..."
;restoresplits 0
;author "Steve Daulton"
;copyright "Released under terms of the GNU General Public License version 2"

;control pitch "Semitones change" real "" 0 -24 24

(setf ratio (power 2.0  (/ pitch -12)))
(resample *track* (* *sound-srate* ratio))