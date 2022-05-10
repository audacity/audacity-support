;nyquist plug-in
;version 1
;type generate
;name "Surf [LFO]..."
;action "Generating LFO surf..."
;info "surf-lfo.ny by David R. Sky www.shellworld.net/~davidsky/nyquist.htm \nTo generate stereo surf, first open a new stereo track in Audacity.\nReleased under terms of the GNU Public License"

;control channels "Mono or stereo surf [1=mono 2=stereo]" int "" 2 1 2
;control spread "Stereo spread [stereo only: percent]" int "" 80 -100 100
;control fade "Fade-in and fade-out times [seconds]" real "" 15 0 30
;control dur "Surf duration [minutes]" real "" 1 0 60
;control surf-type "Surf type [0=white noise 1=pink noise]" int "" 1 0 1
;control surf-f "Surf sweep frequency [hz]" real "" 0.1 0.01 1
;control lower "Lower filter frequency [hz]" int "" 100 40 5000
;control upper "Upper filter frequency [hz]" int "" 1000 100 20000
;control bass-f "Bass frequency to boost [hz]" int "" 100 10 2000
;control boost "Bass boost [db]" int "" 18 0 60

; LFO Surf by David R. Sky, June 16, 2007.
; http://www.shellworld.net/~davidsky/nyquist.htm
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php 

#|
LFO: low frequency oscillator. A signal whose frequency is
generally below the human ear's ability to hear as a tone, usually
20 cycles per second [Hertz or hz].

Generates mono or stereo surf which sweeps between a lower and
upper filter frequency. Stereo surf also sweeps back-and-forth
somewhere between the left and right audio channels.

Copy surf-lfo.ny into your Audacity plug-ins folder, typically

c:\program files\audacity\plug-ins

in Windows. 

Start a new session of Audacity. To generate stereo surf, first
open a blank stereo track [alt+p, s in Audacity pre-1.3, alt+t, n,
s in 1.3 and later]. Open the generate menu. Click on 'Surf [LFO]'.

Variables with instructions:

1. Mono or stereo surf [1=mono 2=stereo]
Mono surf is heard only in the center between the two speakers, or
in the middle of your head when wearing headphones. Stereo surf
sweeps back-and-forth somewhere between the two audio channels,
depending on the next setting, Stereo Spread.

2. Stereo spread [stereo only: percent]
The larger this value, the more widely the stereo surf will move
back-and-forth between the left and right audio channels. 
When this value is above zero, the deeper section of the surf sweep
will be heard more in the left channel; below zero, the deeper
section of the surf sweep will be heard mor in the right channel.

3. Fade-in and fade-out times [seconds]
To smoothly fade in and fade out the volume at the start and end of
the surf.

4. Surf duration [minutes]
Up to sixty minutes of LFO surf.

5. Surf type [0=white noise 1=pink noise]
White noise is more of a 'hissing' sound, whereas pink noise is a
lower 'rushing' sound.
Technically, white noise is 'equal energy per frequency', whereas
pink noise is 'equal energy per octave'.

6. Surf sweep frequency [hz]
Sets how slow or fast the surf sweeps between the lower and upper
filter frequencies, and the left and right channels [for stereo
surf].


The next two variables
7. Lower filter frequency [hz]
8. Upper filter frequency [hz]
determine how low and how high the lowpass filter sweeps the surf
noise.

9. Bass frequency to boost [hz]
You can boost [increase the volume of] frequencies of the surf
sound below this setting, to get a deeper-sounding surf. Somewhat
equivalent to the bass knob on your stereo.

10. Bass boost [db]
Sets how much to boost the above bass frequency. 0db means no
boost, 6db means double the amplitude of the bass frequency, and so
on.

Note

If you get an error message 'Nyquist returned too many audio
channels', this means you tried to generate stereo surf without
first having opened a blank stereo track in audacity. See
instructions at the start of this help file for instructions on how
to do this.

Written by David R. Sky, June 17, 2007.
http://www.shellworld.net/~davidsky/nyquist.htm
Thanks to Steven Jones for pink noise generator code.
Released under terms of the GNU Public License
http://www.opensource.org/licenses/gpl-license.php 
|#


; first make sure lower and upper frequency values really are lower and upper:
(setf range (list lower upper))
(setf range (sort range '<))
(setf lower (nth 0 range))
(setf upper (nth 1 range))
; range - range of frequencies for lp filter sweep
(setf range (- upper lower))
; convert minutes to seconds
(setf dur (* dur 60))
; if fade-in plus fade-out times > dur,
; set fade to 1/2 dur
(setf fade (if (< dur (* 2.0 fade))
(* dur 0.5) fade))


; function to generate white noise
; with bass boost
(defun white (dur bass-f boost)  
(eq-lowshelf (noise dur) bass-f boost)) 


; function to generate pink noise
; by Steven Jones
; altered to boost bass frequency using eq-lowshelf
(defun pink (dur bass-f boost &optional (cutoff (/ *sound-srate* 16.0)))  
(eq-lowshelf 
(lowpass6 (noise dur) cutoff)
bass-f boost)) 


; function to multiply LFO signal by itself:
; Used on the LFO control signal 
; after it has been converted to sweep from between -1 and +1
; to between 0 and +1.
; without this conversion, the result of using a straight sinewave
; to modulate the lowpass filter 
; sounds like there is more high-frequency hissing 
; than low-frequency rushing.
(defun sqr-signal (signal)
(mult signal signal))


; function to expand lfo to sweep between lower and upper filtering frequencies
(defun expand-signal (range lower signal)
(sum lower (mult range signal)))


; function to normalize signal to 0.9 level,
; as output becomes clipped somewhere above this level
(defun normalize (signal)
; check peak amplitude for max 1 million samples
(setf max-level (peak signal 1000000))
(scale (/ 0.9 max-level) signal))


; function to generate white- or pink-noise-based signal
(defun get-noise (dur bass-f boost)
(if (= surf-type 0)
(white dur bass-f boost) (pink dur bass-f boost)))


; function to generate LFO surf
(defun surf-lfo (dur fade bass-f boost range lower surf-f )
; apply fade-in and fade-out envelope
(mult (pwl 0 0 fade 1.0 (- dur fade) 1.0 dur 0 dur)
(normalize
(lp 
; unmodified noise
(get-noise dur bass-f boost)
; expand control signal to sweep between lower and upper frequencies
(expand-signal range lower 
; square control signal [multiply it with itself]
(sqr-signal 
; convert LFO signal to sweep between -1 and +1,
; to sweep between 0 and +1
(sum 0.5 (mult 0.5 (lfo surf-f (* dur 60) *sine-table* -90)))
) ; end sqr-signal
) ; end expand-signal
) ; end lp
) ; end normalize
) ; end mult pwl
) ; end defun surf-lfo


; Stereo Butterfly function: 'swishes' left and right channels back and forth
; with each other
; +1.0 full stereo spread
; 0.0 both channels sound like they're in the middle
; -1.0 l/r channels flipped with each other
; can use flonum or control signal for width argument
(defun butterfly (width sound) 
(vector 
; left channel
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
; right channel
(sum (mult (aref sound 1) (sum width 1) 0.5)(mult (aref sound 0)
(sum width -1) -0.5))))



; generate mono or stereo LFO surf
(cond
((= channels 1) ; generate mono surf
(surf-lfo dur fade bass-f boost range lower surf-f)
) ; end generate mono surf

(t ; generate stereo surf
(butterfly 
(mult spread 0.01 
(lfo surf-f dur *sine-table* 90)
) ; end mult spread 0.01
(vector
; left channel: surf sound
(surf-lfo dur fade bass-f boost range lower surf-f)
; right channel: silence
(s-rest dur)
) ; end vector
) ; end butterfly
) ; end generate stereo surf
) ; end cond
