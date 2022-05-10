;nyquist plug-in
;version 2
;type generate
;name "Binaural Tones with surf 2..."
;action "Generating binaural tones with surf..."
;info "bitone2.ny by David R. Sky www.shellworld.net/~davidsky/nyquist.htm\nOpen blank stereo track in Audacity before using this plug-in.\nUse this plug-in at your own risk - see warning in text of this plug-in.\nApproximate brainwave frequency ranges: beta 14-21 hz; alpha 7-14 hz; thheta 4-7 hz; delta 0-4 hz\nReleased under terms of the GNU Public License"

;control f "Left channel tone frequency [hz]" real "" 100 50 1000
;control string1 "Right channel beat frequency1 [hz], duration1 [minutes], time change to frequency2 [minutes]" string "" "17.5 0.25 0.25"
;control string2 "Beat freq2, dur2, time change to freq3" string "" "10.5 0.25 0.25"
;control string3 "Beat freq3, dur3, time change to freq4" string "" "5.5 0.25 0.25"
;control string4 "Beat freq4, dur4, time change to freq5" string "" "2 0.25"
;control string5 "Beat freq5, dur5, time change to freq6" string "" ""  
;control string6 "Beat freq6, dur6" string "" ""  
;control adjust-time "Adjust total time to this many minutes [0=no adjustment]" int "" 0 0 60
;control fade "Fade-in and fade-out times [seconds]" int "" 10 0 120
;control surf-f "Stereo surf frequency [hz]" real "" 0.1 0 2
;control spread "Stereo surf spread [percent]" int "" 80 0 100
;control ratio "Tone to surf volume ratio [percent]" int "" 70 0 100

; Binaural tones generator with Surf 2  
; bitone2.ny by David R. Sky June 11, 2007
; www.shellworld.net/~davidsky/nyquist.htm
; Thanks to Matt R. for suggesting updating bitone.ny
; from constant beat frequency to changing over time

; Thanks to Steven Jones for eval-string-to-list function
; from his Harmonic Noise Nyquist plug-in,
; for pink noise generator from his pink.lsp file,
; and for rotate and flatten functions from his list-uti.lsp file.

#|
produces a stereo sound: a sinewave tone of one constant frequency
is generated in the left audio channel, and a series of changing
tones of slightly different frequencies are generated in the right
audio channel. The difference between these left- and right-channel
frequencies are called 'beat frequencies'. [See the note following
explanation of the various edit fields.]

There is also an optional stereo surf sound.

Copy bitone2.ny into your Audacity plug-ins folder, typically

c:\program files\audacity\plug-ins

for Windows users. Open Audacity in a new session.

To use this plug-in, first open a new stereo track in Audacity
[alt+p, s in Audacity pre-1.3, alt+t, n, s in 1.3 and later]. Open
the generate menu and select 'Binaural Tones with Surf 2' from the
drop-down menu.

Variables

1. Left channel tone frequency 
from 50hz to 1000hz, default 100hz.

2. Beat frequency [hz], duration [minutes], time to change to next
beat frequency [minutes] 
There are six of these edit fields in which you may enter up to
three indicated values, separated by a space. The first of these
edit fields has these default values:

17.5 0.25 0.25

In the sixth of these edit fields you may enter a final beat
frequency and duration of that frequency.

If you enter a single value only into any of these fields, the
duration of that beat frequency will be zero. If you leave any of
these edit fields blank they will be ignored. 

3. Adjust total time to this many minutes [0=no adjustment]
From 1 to 60 minutes; 0 means no time adjustment.

4. Fade-in and fade-out times [seconds]
Sets the time for fading in and fading out the volume at the start
and end of the generated audio.

5. Stereo surf frequency [hz]
from 0hz to 2hz, default 0.1 hz. If this setting is above 0hz, the
surf sound will be panned back and forth somewhere between the left
and right audio channels at the specified frequency, how far
depending on the next setting:

6. Stereo surf spread [percent] 
between 0 and 100percent, default 80%. The larger this number the
wider the surf sound will move away from the center pan position.
0% results in the surf sound remaining in the center pan position.

7. tone to surf volume ratio [percent] 
from 0 to 100 percent, default 70%. this is to adjust the relative
volume of the tones and surf sound.

According to published research, listening to these beat
frequencies can result in the main brainwave frequency to 'align'
with the beat frequencies, through a phenomenon called
'entrainment' - see 'The Science Of Binaural Beat Brainwave
Entrainment Technology - for meditation relaxation stress
management' at 

http://web-us.com/thescience.htm

I have no affiliation with this website or company.

According to published research, entrainment at different beat
frequencies can result in different states of awareness including
increased relaxation or alertness, lucid dreaming, and a host of
other states. There is a plethora of online literature which goes
into much more detail than here. Suffice to say that the general
range of the four most familiar brainwave frequencies are:

beta 14-21 hz [cycles per second] and higher; 
alpha 7-14 hz; 
theta 4-7 hz; 
delta 0-4 hz.

If you do further research you'll find many variations on these
bands as well as additional labels and frequency ranges, plus
states apparently associated with specific frequency ranges.

In addition to the tones, you can also generate pink noise-based
stereo surf. [Pink noise is a lower-frequency 'rushing' sound
compared with 'hissing' white noise.]. Technically speaking pink
noise is "equal energy per octave noise". However, I've made the
pink noise surf have a deeper sound.

Warning - The use of this plug-in may result in changed brainwave
frequencies, which can change how the user experiences and
interacts with his/her inner and outer worlds - "alltered states of
consciousness." 

By downloading, installing, using this plug-in and/or listening to
the audio it generates, you explicitly accept full responsibility
for any and all effects of its use, whether 'positive', 'negative',
intentional, unintentional , or otherwise. this plug-in is meant
for your own personal use and experimentation. There is no
guarantee of any kind for any effect from the use of this plug-in.

Written by David R. Sky, June 11, 2007. 
Thanks to Matt R. for suggestion of adding varying beat frequencies
after release of bitone.ny.
Thanks very much to Steven Jones for XLISP program code.
Released under terms of the GNU Public License
http://www.opensource.org/licenses/gpl-license.php 
|#

; Original version of bitone2.ny had a choice selection,
; 0=generate tones with surf, 1=display time w/beat frequency pairs.
; The second option was for debugging purposes only, 
; that ;control line was deleted for public release of bitone2.ny,
; but the displayed results can still be gotten 
; either by changing the following line to (setf choice 1)

(setf choice 0)

; or by adding the following ;control line:

; ;control choice "0=generate tones/surf 1=display time/beat frequency list" int "" 0 0 1

; which will present that option with the other edit fields
; when you open bitone2.ny.

; --------

; function to convert input string into a list
; input string is str, output list is assigned to symname
(defun eval-string-to-list (symname str)
  (let ((form (strcat "(setq " symname " (list " str "))")))    
(eval (read (make-string-input-stream form)))))

; convert string inputs into lists
(eval-string-to-list "list1" string1)
(eval-string-to-list "list2" string2)
(eval-string-to-list "list3" string3)
(eval-string-to-list "list4" string4)
(eval-string-to-list "list5" string5)
(eval-string-to-list "list6" string6)

; if all empty string inputs [and therefore the lists they became],
; set the choice value to generate an error message
(setf choice 
(if (and (null list1) (null list2) (null list3)
(null list4) (null list5) (null list6) ) ; end and
2 ; error message value
choice ; choice value already selected by user
) ; end if
) ; end setf

; if all empty lists, set list1 to be '(10 1) [arbitrary values],
; otherwise list1 remains unchanged
(setf list1 (if (= choice 2) '(10 1) list1))

(setf beat-list (list list1 list2 list3 list4 list5 list6))

; function tri-butlast
; 
; (tri-butlast list) returns first 3 elements of list
; (tri-butlast list n) returns LIST WITHOUT LAST N ELEMENTS OF LIST
; returns list if less than 3 elements in list
; 
(defun tri-butlast (lis &optional (n (- (length lis) 3)))
(if (<= n 0)
lis
(tri-butlast (reverse (cdr (reverse lis))) (1- n))
) ; end if
) ; end defun tri-butlast

; edited version of Rotate - rotate a list
; returns rotated list [last element becomes first element of list]
(defun rotate (lst)
(cons (car (last lst)) (tri-butlast lst 1)))

; function to remove empty lists [nil] from a list of lists
; [beat-list]
(defun no-nil (lis)
(dotimes (i (length lis))
(setf lis (rotate lis)) ; rotate lis
; if first element of lis is empty list [nil],
; pop it off lis
(if (null (first lis))
(pop lis)))
lis ; return de-nilled lis
)

; remove nil elements from beat-list
(setf beat-list (no-nil beat-list))

; function to make pwl t/l break points from string list:
; list->bp - list to break points
; from f [dur] [time] inputs from user
; note that first break point generated is actually the frequency [l] not a time.
; After creating break points of all string input lists,
; a 0 needs to be prepended to the beginning of the first list.
; returns new list.
(defun list->bp (lis)
; first we make sure lis is maximum 3 elements long
(setf lis (tri-butlast lis))
(cond
((= (length lis) 1) ; length 1 [f]
(list 
(first lis) 
0
)
) ; end length 1 [f]
((= (length lis) 2) ; length 2 [f dur]
(list 
(first lis) 
(float (* 60 (second lis))) 
(first lis)
(float (* 60 (second lis)))
)
) ; end length 2 [f dur]
(t  ; length 3 [f dur time]
(list 
(first lis) 
(float (* 60 (second lis)) )
(first lis) 
(float (* 60 (+ (second lis) (third lis))) ))
) ; end t [length 3 - f dur time]
) ; end cond
) ; end defun list->bp

; convert beat-list lists to lists with pwl break points
(dotimes (i (length beat-list))
(setf (nth i beat-list)
(list->bp (nth i beat-list))))

; function to add last time values of lists to time break points
; of successive lists
(defun add-time (lis)
(cond
((= (length lis) 1) ; list has only one list
lis) ; return lis
(t ; list has 2 or more embedded lists
(dotimes (i (1- (length lis)))
(setf last-time (first (last (nth i lis)))) ; get last element of sublist
(setf 
(nth 1 (nth (1+ i) lis))
(+ last-time (second (nth (1+ i) lis)))
) ; end setf
(setf (nth 3 (nth (1+ i) lis))
(if 
(fourth (nth (1+ i) lis))
(+ last-time (fourth (nth (1+ i) lis)))
(fourth (nth (1+ i) lis))
) ; end if
)  ; end setf
) ; end dotimes i
) ; end t
) ; end cond
lis ; return list
) ; end defun add-time

; add time values in binaural list
(setf beat-list (add-time beat-list))

; function to flatten embedded lists into a single list
(defun flatten (lst)
  (cond ((null lst) nil)
	((atom lst) (list lst))
	(t (append (flatten (car lst))
		   (flatten (cdr lst))))))

; flatten binaural list
(setf beat-list (flatten beat-list))

; dur - total duration
(setf dur (first (last beat-list)))

; convert adjust-time to minutes [if > 0]
(setf adjust-time 
(if (> adjust-time 0)
(float (* 60 adjust-time))
adjust-time) ; end if
) ; end setf

; convert total time in beat-list to adjust-list duration 
; [which is only used when adjust-time > 0]
(setf adjust-ratio 
(/ adjust-time dur))

; function to apply adjust-ratio to time values in beat-list
; returns list with new time values
(defun adjust (adjust-ratio lis)
(dotimes (i (truncate (/ (length lis) 2)))
(setf (nth (1+ (* 2 i)) lis)
(* adjust-ratio (nth (1+ (* 2 i)) lis))
) ; end setf
) ; end dotimes
lis ; return new lis
) ; end defun adjust

; apply time ratio adjustment to beat-list
; [only if adjust-time > 0]
(setf beat-list 
(if (> adjust-time 0)
(adjust adjust-ratio beat-list)
beat-list
) ; end if
) ; end setf

; set new dur to adjust-time
; [if adjust-time > 0]
(setf dur 
(if (> adjust-time 0)
adjust-time
(first (last beat-list))
) ; end if
) ; end setf

; prepend a zero onto beat-list
(push 0 beat-list)

; convert ratio to true [non-percentage] value
(setf ratio (* ratio 0.01))

; Pink noise generator
; eq-lowshelf boosts frequencies below 500hz
; for deeper surf sound
(defun pink (&optional (dur 1)(cutoff (/ *sound-srate* 16.0)))  
(mult 0.5 (eq-lowshelf (lp 
(lowpass6 (noise dur) cutoff)
(mult 2000 (sum 0.5 (mult 0.4 (lfo surf-f dur)))) ; frequency modulation for lp
) ; end lp
500 24) ; end eq-lowshelf
) ; end mult 0.5
) ; end defun pink


(defun get-ocean (surf-f)
(cond
((= surf-f 0) 0) ; just noise, no stereo surf
(t (lfo surf-f dur *sine-table* 180))
)) ; end defun get-ocean

; Butterfly function: used here to bring
; single channel of noise into apparent center 
; of stereo field, or to produce
; stereo ocean wave oscillations
(defun butterfly (width sound) 
(vector 
; left channel
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
; right channel
(sum (mult (aref sound 1) (sum width 1) 0.5)(mult (aref sound 0)
(sum width -1) -0.5))))


; Generating binaural tone with background noise, beat-list, 
; or error message if string input fields are all empty
(cond
((and (= choice 0) (> ratio 0.0) (< ratio 1.0)); tones with surf
; apply fade-in and fade-out envelope
(mult (pwl 0 0 fade 1.0 (- dur fade) 1.0 dur 0 dur)
(sim
(mult ratio 0.5 (vector
(osc (hz-to-step f) dur *sine-table*)
(fmosc(hz-to-step f) (pwl-list beat-list))
) ; end tones vector
) ; end mult
(butterfly (mult spread 0.01 (get-ocean surf-f)) 
(mult (- 1.0 ratio) 
; to create stereo surf, chosen noise of duration dur is in left channel, 
; with duration dur of silence in right channel.
; This is made stereo using butterfly function
(vector
(pink dur)
(s-rest dur)
) ; end noise vector
) ; end mult
) ; end butterfly
) ; end sim
) ; end mult pwl
) ; end choice 0

((and (= choice 0) (= ratio 0.0)) ; surf without tones
(mult (pwl 0 0 fade 1.0 (- dur fade) 1.0 dur 0 dur)
(butterfly (mult spread 0.01 (get-ocean surf-f)) 
; to create stereo surf, chosen noise of duration dur is in left channel, 
; with duration dur of silence in right channel.
; This is made stereo using butterfly function
(vector
(pink dur)
(s-rest dur)
) ; end noise vector
) ; end butterfly
) ; end mult pwl
) ; end surf without tones

((and (= choice 0) (= ratio 1.0)) ; tones without surf
; apply fade-in and fade-out envelope
(mult (pwl 0 0 fade 1.0 (- dur fade) 1.0 dur 0 dur)
(vector
(osc (hz-to-step f) dur *sine-table*)
(fmosc(hz-to-step f) (pwl-list beat-list))
) ; end tones vector
) ; end mult pwl
) ; end tones without surf

((= choice 1) ; display beat-list on screen
(format nil 
"List of time/beat frequency pairs (time values in seconds, ending with final time value) is ~% ~a ~%" 
beat-list)
) ; end choice 1
(t ; display error message on screen
(format nil
"Error - you haven't put any beat frequency, duration, or time change values~%
into any of the six string input fields.~% ~%
No beat frequency/time list, binaural tones or surf generated.")
) ; end t error message
) ; end cond
