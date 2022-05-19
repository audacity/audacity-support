;nyquist plug-in
;version 1
;type process
;name "Stereo Widener..."
;action "Widening stereo audio..."
;info "by David R. Sky\nReleased under terms of GNU Public License\n-Pan: -100=opposite channel, 0=center"

;control vol "Inverted signal volume - db" int "" -18 -48 -6
;control p "Pan position" int "" 0 -100 0
;control offset "Time offset - ms" int "" 0 0 20

#| Stereo Widener by David R. Sky, October 18, 2004
Updated March 19, 2006
Thanks to David Walsh and Monty of the Audacity-users list
for discussion and explanation of how to widen stereo.

Should work properly for both North American and European 
audacity-Nyquist -
N American uses . for decimal
European uses , for decimal
so calculations are done using floating whole numbers
(see two setf statements)

A stereo widener creates the illusion that your speakers are
further apart than they really are. Stereo widening results depend
on distance of your speakers from each other, the plug-in settings,
and your location in relation to the speakers.

This stereo widener works by inverting both left and right channels
of stereo audio to some degree, then panning those inverted signals
somewhere between the center pan position and the opposite channel.
A time offset of up to 20ms can be applied to enhance the illusion.

Variables:

1. Inverted signal volume
From -48db (minimum volume) to -6db (maximum volume), default 
-18db.

2. Pan position
From 0 (center) to -100 (opposite channel), default 0.

3. Time offset
From 0 to 20ms, default 0ms.
|#

; Stereo Butterfly function - used to 
; change the width of the stereo field.
(defun butterfly (sound width) 
(vector  
(sum (mult (aref sound 0) (sum width 1) 0.5)
(mult (aref sound 1) (sum width -1) -0.5))
(sum (mult (aref sound 1) (sum width 1) 0.5) 
(mult (aref sound 0) (sum width -1) -0.5)))) 

; convert arguments to floating values
(setf offset (/ (float offset) (float 1000)))
(setf p (/ (float p) (float 100)))


; applying stereo widener
(if (arrayp s)
(sim (cue s)
(at-abs offset 
(cue (butterfly (mult -1 (db-to-linear vol) s) p))))

(format nil "You must apply the stereo widener to stereo audio.")
)

