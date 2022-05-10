;nyquist plug-in
;version 1
;type generate
;name "Surf [Oxygene]..."
;action "Generating Oxygene surf..."
;info "surf-oxy.ny by David R. Sky www.shellworld.net/~davidsky/nyquist.htm \nBased on surf sound in Jean-Michel jarre's 1976 album _Oxygene_.\nOne cycle of Oxygene surf: sweep + post-sweep silence + crash + post-crash silence\nTo generate stereo Oxygene surf, first open a blank stereo track in Audacity.\nReleased under terms of the GNU Public License"

;control channels "Surf output [1=mono 2=stereo]" int "" 2 1 2
;control spread "Stereo spread [stereo only - percent]" int "" 80 -100 100
;control fade "Fade-in and fade-out times [seconds]" real "" 0 0 120
;control count "Number of Oxygene surf cycles" int "" 10 1 120
;control surf-type "Surf type [0=white noise 1=pink noise]" int "" 1 0 1
;control start-f "Sweep starting filter frequency [hz]" real "" 100 40 1000
;control end-f "Sweep ending filter frequency [hz]" real "" 1000 100 10000
;control sweep-t "Sweep duration [seconds]" real "" 1.5 0.2 10
;control pause-t "Post-sweep silence duration [seconds]" real "" 2 0.2 10
;control crash-f "Crash filter frequency [hz]" int "" 300 40 2000
;control boost "Crash bass frequency boost [db]" real "" 24 0 60
;control crash-t "Crash duration [seconds]" real "" 5 0.2 10
;control post-t "Post-crash silence duration [seconds]" real "" 2 0.2 10

; Surf [Oxygene] by David R. Sky, June 20, 2007.
; http://www.shellworld.net/~davidsky/nyquist.htm
; based on surf sound in Jean-Michel Jarre's 1976 electronic album _Oxygene_.
; Thanks to Steven Jones for pink noise Nyquist code from pink.lsp.
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php 

#|
surf-oxy.ny: Jean-Michel Jarre's _Oxygene_ surf

Jean-Michel Jarre put out a hauntingly beautiful electronic album
in 1976, _Oxygene_. One section of this album had a repeating surf
sound: a sweep from the right to the left audio channel, a pause,
and then a deep crash in the right channel. After another pause,
this cycle repeated many times. Very relaxing to listen to.

This sound generator plug-in emulates that surf cycle, in either
mono or stereo.

Copy surf-oxy.ny into your Audacity plug-ins folder, typically

c:\program files\audacity\plug-ins

in Windows. 

Start a new session of Audacity. To generate stereo surf, first
open a blank stereo track [alt+p, s in Audacity pre-1.3, alt+t, n,
s in 1.3 and later]. Open the generate menu. Click on 
'Surf [Oxygene]'. 

Variables:

1. Surf output [1=mono 2=stereo]
To generate mono or stereo Oxygene surf.

2. Stereo spread [stereo only - percent]
If you've chosen to generate stereo Oxygene surf, this setting will
determine how widely the surf sweeps away from the center pan
position. From +100 percent to -100 percent. Positive values make
the sweep section go from the right to the left, with the crash in
the right. Negative values reverse this pattern.

3. Fade-in and fade-out times [seconds]
Time to fade in and fade out the volume at the start and end of the
surf, if you wish.

4. Number of Oxygene surf cycles
How many Oxygene surf cycles to generate.

5. Surf type [0=white noise 1=pink noise]
White noise is a higher-frequency 'hissing', whereas pink noise is
a lower-frequency 'rushing' sound.

The following two settings
6. Sweep starting filter frequency [hz]
7. Sweep ending filter frequency [hz]
set the starting and ending frequencies for the lowpass filter to
sweep the sweep portion of Oxygene surf. [A lowpass filter allows
frequencies below a certain value to pass, while frequencies above
that value are attenuated, or reduced in volume.]

8. Sweep duration [seconds]
This sets how slow or fast the sweep portion of Oxygene surf takes.


9. Post-sweep silence duration [seconds]
Duration of the silence after the sweep.

10. Crash filter frequency [hz]
The lowpass filter frequency of the crash. 

11. Crash bass frequency boost [db]
How much to increase the volume of the above filter frequency and
below. 0db means no boost, 6db means double the amplitude of this
bass frequency, and so on.

12. Crash duration [seconds]
Duration of the crash.

12. Post-crash silence duration [seconds]
how much silence before the Oxygene surf cycle repeats.

Notes

1. If you get an error message 'Nyquist returned too many audio
channels', this means you tried to generate stereo surf without
having first opened a blank stereo track in Audacity. See
instructions at the top of this help file on how to do this.

2. In the original _Oxygene_, reverb was applied to the surf,
giving it a more expansive sound and feeling. If you want to have
reverb added to Oxygene surf, you need to apply it yourself after
the surf sound has been generated. There's 'Gverb' already in the
Audacity effects menu, and many people use Anwida's free VST reverb
plug-in.

3. Seagulls not included.

Written by David R. Sky, June 20, 2007.
http://www.shellworld.net/~davidsky/nyquist.htm
Thanks to Steven Jones for pink noise Nyquist code.
Released under terms of the GNU Public License
http://www.opensource.org/licenses/gpl-license.php 
|#

; calculate duration of one surf cycle
(setf surf-t (+ sweep-t pause-t crash-t post-t))
; calculate duration of 'count' number of surf cycles
; for fade-in and fade-out envelope
(setf count-t (* count surf-t))


; function to generate pink noise
; thanks to Steven Jones - from his pink.lsp file
(defun pink (dur &optional (cutoff (/ *sound-srate* 16.0)))  
(lowpass6 (noise dur) cutoff)) 


; function to determine maximum amplitude of signal,
; which is then converted to scale value 
; for optimum amplitude without clipping surf
; returns flonum
(defun get-maximum (signal)
(setf max-level (peak signal 1000000))
(/ 0.8 max-level))


; function to generate white noise or pink noise
(defun get-noise (surf-type dur)
(if (= surf-type 0)
(noise dur) (pink dur)))


; function to generate non-normalized sweep
(defun generate-sweep (sweep-t surf-type start-f end-f )
; we multiply two pwl signals to get logarhythmic fade-in
(mult (pwl 0 0 (- sweep-t 0.01) 1 sweep-t 0 sweep-t)
(pwl 0 0 (- sweep-t 0.01) 1 sweep-t 0 sweep-t)
(lp (get-noise surf-type sweep-t) 
; multiply two frequency sweep pwl's 
; to get logarhythmic frequency sweep
(mult (pwl 0 (sqrt start-f) sweep-t (sqrt end-f) sweep-t)
(pwl 0 (sqrt start-f) sweep-t (sqrt end-f) sweep-t)
) ; end mult frequency pwl's
) ; end lp
) ; end mult envelope pwl's
) ; end defun


; function to generate non-normalized crash
(defun generate-crash (crash-t surf-type crash-f boost)
; again multiply two envelope pwl's 
; to give logarhythmic fade-out
(mult (pwl 0 0 0.01 1 crash-t 0 crash-t)
(pwl 0 0 0.01 1 crash-t 0 crash-t) 
; eq-lowshelf: function to boost bass frequency of crash
(eq-lowshelf 
(lp (get-noise surf-type crash-t) crash-f)
crash-f boost) ; end eq-lowshelf
) ; end mult
) ; end defun generate-crash


; function to generate one cycle of Oxygene surf
(defun surf-oxygene 
(scale-sweep sweep-t surf-type start-f end-f pause-t
scale-crash crash-t surf-type crash-f boost post-t)
; sequence four audio portions
(seq
; 1. sweep
(scale scale-sweep (generate-sweep sweep-t surf-type start-f end-f))
; 2. post-sweep silence
(s-rest pause-t)
; 3. crash
(scale scale-crash (generate-crash crash-t surf-type crash-f boost))
; 4. post-crash silence
(s-rest post-t)
) ; end seq
) ; end defun surf-oxygene


; Stereo Butterfly function: 'swishes' stereo left and right channels 
; back and forth with each other
; 1.0 full stereo spread
; 0 both channels in the middle [sounds mono]
; -1.0 left and right channels flipped with each other
; can use flonum or control signal for width argument
(defun butterfly (width sound) 
(vector 
; left channel
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
; right channel
(sum (mult (aref sound 1) (sum width 1) 0.5)(mult (aref sound 0)
(sum width -1) -0.5))))


; get scale [normalization] values for one sweep and one crash
; we do this only once so that we don't need 
; to normalize every generated sweep and crash
(setf scale-sweep (get-maximum (generate-sweep sweep-t surf-type start-f end-f)))
(setf scale-crash (get-maximum (generate-crash crash-t surf-type crash-f boost)))


; generate repeated Oxygene surf
(mult 
(pwl 0 0 fade 1.0 (- count-t fade) 1.0 count-t 0 count-t)
(seqrep (i count)
(cond
((= channels 1) ; generate mono Oxygene surf
(surf-oxygene 
scale-sweep sweep-t surf-type start-f end-f pause-t
scale-crash crash-t surf-type crash-f boost post-t)
) ; close generate mono surf

(t ; generate stereo Oxygene surf
(butterfly (mult spread 0.01 
(pwl 0 -1.0 sweep-t 1 sweep-t 1 (+ sweep-t pause-t) -1 surf-t -1 surf-t)
) ; end mult spread
(vector 
(surf-oxygene ; Oxygene surf in left channel
scale-sweep sweep-t surf-type start-f end-f pause-t
scale-crash crash-t surf-type crash-f boost post-t)
(s-rest surf-t) ; silence in right channel 
) ; end vector
) ; end butterfly
) ; close stereo surf
) ; end cond
) ; end seqrep 
) ; end mult pwl
