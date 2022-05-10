;nyquist plug-in
;version 1
;type generate
;name "Fire and Explosion sounds..."
;action "Generating fire or explosion sound..."
;info "firex.ny by David R. Sky www.shellworld.net/~davidsky/nyquist.htm \nEmulates a Korg MS-10 synthesizer patch. \nReleased under terms of the GNU Public License"

;control choice "Audio type [0=fire 1=explosion]" int "" 1 0 1
;control dur "Sound duration [seconds]" real "" 3 0.1 60
;control attack "Attack time [milliseconds]" int "" 50 0 500
;control decay "Explosion decay time [milliseconds]" int "" 500 0 500
;control sustain "Decay down to this level [percent]" int "" 30 1 100
;control cutoff "Cutoff frequency [hz]" int "" 3800 100 10000
;control q "Filter quality [q]" real "" 10 1 20
;control freq "Bass boost frequency [hz]" int "" 300 10 1000
;control boost "Bass boost [db]" int "" 30 0 60
;control clip-level "clipping amount  [percent]" int "" 55 0 99

; Fire and Explosion sound Generator firex.ny by David R. Sky, July 6, 2007
; Based on a Korg MS-10 modular synthesizer patch:
; pink noise modulated the cutoff frequency
;  of a VCF filtering white noise.
; http://www.shellworld.net/~davidsky/nyquist.htm
; This version available from http://wiki.audacityteam.org/wiki/Nyquist_Generate_Plug-ins
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php

#|
firex.ny: Fire and explosion sounds

Creation of this plug-in started as an attempt to duplicate the
patch of a Korg MS-10 synthesizer I owned in the late 1980's. More
detailed explanation of this patch is in the notes following
variables explanation below.

1. 0=fire 1=explosion
Choose between generating a fire sound [constant volume for your
set duration] or explosion [fading out over the same duration].

2. Sound duration [seconds]
Duration of the fire or explosion sound.

3. Attack time [milliseconds]
Time [in milliseconds] for the sound to go from zero to maximum
volume. When fire is chosen, this is also time for the sound to
drop from maximum to zero at the end of the sound.

4. Explosion decay time [milliseconds]
After the initial attack time for an explosion sound, how fast to
drop from maximum to the next level:

5. Decay down to this level [percent]
AFter the attack and decay times, the level at which the sound
begins to fade out for the remaining duration of the explosion
sound. 

6. Cutoff frequency [hz]
Audio frequencies below this setting are heard, frequencies above
this value are attenuated [reduced in volume]. A lower setting
generates a deeper-sounding result.

7. Filter quality [q]
The result of lowering this parameter value is to "smoothen" the
generated sound and decrease the number of high frequencies.

8. Bass boost frequency [hz]
The low frequency portion of the fire or explosion sound below
which is boosted, how much depending on the next setting:

9. Bass boost [db]
How much to increase the volume of the above bass frequency. 0db
means no boost, 6db means double the volume, and so on.

10. clipping amount  [percent]
Deliberately clipping the fire or explosion sound creates a
'meatier' or more 'severe' sound.

Notes

1. The basic patch in the MS-10 which created a great explosion
sound was pink noise modulating the cutoff frequency of the VCF
[voltage-controlled filter] filtering white noise.


Written by David R. Sky July 6, 2007.
Minor bug fix, new defaults and license text update, SD Sept 2011
http://www.shellworld.net/~davidsky/nyquist.htm
Released under terms of the GNU Public License
http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
|#


; convert milliseconds to seconds
(setf attack (* attack 0.001))
(setf decay (* decay 0.001))

; convert sustain and clip-level percent values to linear values
; internally, normalize function normalizes to default 0.98 rather than 1.0,
; so clip-level is adjusted to 0.98 rather than 1.0
(setf sustain (* sustain 0.01))
(setf clip-level (- 0.98 (* clip-level 0.0098)))


; function to normalize sound result
; returns sound normalized to level
(defun normalize (sound &optional (level 0.98))
; maximum 1 million samples to check peak level
(setf max-level (peak sound 1000000))
(scale (/ level max-level) sound))


; function to generate envelope
; returns envelope control signal
(defun get-env (choice attack decay sustain dur)
(cond
((= choice 0) ; fire envelope
(pwl 0 0 attack 1.0 (- dur attack) 1.0 dur 0 dur)
) ; end fire envelope choice

(t ; explosion envelope
(mult ; multiplying two linear envelopes gives exponential envelope
(pwl 0 0 attack 1 (+ attack decay) (sqrt sustain) dur 0 dur)
(pwl 0 0 attack 1 (+ attack decay) (sqrt sustain) dur 0 dur)
) ; end mult
) ; end explosion envelope
) ; end cond
) ; end defun get-env


; generate fire or explosion sound
(normalize 
(mult (get-env choice attack decay sustain dur)
(clip ; clipping makes a 'meatier' sound
(normalize 
(eq-lowshelf 
(lp (noise dur) 
(lowpass2 (mult (get-env choice attack decay sustain dur) cutoff (noise dur)) 
cutoff q))
freq boost) ; end eq-lowshelf
) ; end inner normalize
clip-level) ; end clip
) ; end mult
0.95) ; end outer normalize
