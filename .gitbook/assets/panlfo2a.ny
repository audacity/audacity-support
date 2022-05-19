;nyquist plug-in
;version 3
;type process
;name "Panning [LFO] 2a..."
;action "Panning your audio using a low-frequency oscillator..."
;info "panlfo2a.ny Version 3 Nyquist plug-in by David R. Sky www.shellworld.net/~davidsky/ \nFor panning, your selected audio needs to be stereo. \nPans your stereo audio using an LFO [low-frequency oscillator]. \nFor left-most and right-most pan positions: 0%=left channel, 50%=center, 100%=right channel \nReleased under terms of the GNU General Public License version 2"

;control rate "LFO frequency [hz]" real "" 0.1 0.02 20 
;control waveform "LFO waveform" choice "sine,triangle,saw,inverted saw,pulse" 0
;control duty "pulse waveform duty cycle [percent]" int "" 50 1 99
;control phase "LFO starting phase [degrees]" int "" 0 -180 180
;control left "Leftmost pan position [percent]" int "" 5 0 100
;control right "Rightmost pan position [percent]" int "" 95 0 100


; LFO Panning by David R. Sky
; simplified December 29, 2005
; improved [with multiple LFO waveform choice] panlfo2.ny September 7, 2007
; panlfo2a.ny is a version 3 Nyquist plug-in 
; for Audacity 1.3.3 and later

(cond


; check if selected audio is stereo
((not (arrayp s))
(format nil
"Error - your selected audio is mono,
it needs to be stereo to be panned.
LFO Panning effect has not been applied. ~%"))


; check if left and right pan values are equal
((= left right)
(format nil 
"Error - you have set identical leftmost and rightmost pan positions: ~a ~a
these values need to be different.
LFO panning effect has not been applied. ~%" left right))


; has passed error-checking, apply LFO panning
(t
; function to pan stereo audio
; by Dominic Mazzoni
; 'where' can be a number or signal, from 0 to +1, inclusive
; 0 left channel, 0.5 center pan position, 1.0 right channel
(defun pan2 (sound where)
   (vector (mult (aref sound 0) (sum 1 (mult -1 where)))
       (mult (aref sound 1) where)))


; duty is for pulse waveform only -
; 50% first half of waveform is higher [right-most pan position],
; and last half of waveform is lower value [left-most pan position]
; 1% duty means first 1% is higher, last 99% is lower
;
; first convert duty percent to a linear value
; duty is anywhere between 1 and 99 inclusive
(setf duty (* duty 0.01))

; calculate duration of selected audio
(setf dur (/ len *sound-srate*))

; create pulse waveform using pwl function
(setq *pulse-table* (list 
(pwl 0 1 (/ duty dur) 1 (/ duty dur) -1 (/ dur)  -1 (/ dur)) 
(hz-to-step 1) t))

; setting chosen Nyquist waveform
(setq *waveform* 
(cond
((= waveform 0) *sine-table*)
((= waveform 1) *tri-table*)
((or (= waveform 2) (= waveform 3)) *saw-table*)
(t *pulse-table*)))

; if inverted saw is chosen, set sign value to -1
(setf sign (if (= waveform 3) -1.0 1.0))

; calculate range - how far LFO sweeps
(setf range (* 0.01 (abs (- left right))))

; offset - how far right of the left channel
; the LFO sweep takes place
; for default values of 20% and 80%, range is 60%
; and offset becomes 20%
(setf offset (* 0.01 (min left right)))

; determine scaling factor to use after audio has been panned
; this is because left and right channels may have had maximum amplitude
; before panning, so closer to middle pan position after panning,
; volume will sound reduced
(setf scale-factor (* 2 (- 1.0 
(* 0.01 (max (abs (- 50 left))
(abs (- 50 right)))) )))


; function to return LFO waveform for panning
(defun get-lfo 
(offset sign range rate *waveform* phase)
(sum offset (mult range (sum 0.5 (mult sign 0.5 
(lfo rate 1.0 *waveform* phase))))))


; applying LFO 	panning
(pan2 
; following lines convert stereo audio into mono-sounding audio 
; for proper panning effect
(mult 0.5 scale-factor 
(vector (sum (aref s 0) (aref s 1)) (sum (aref s 1) (aref s 0))))
(get-lfo offset sign range rate *waveform* phase))
)) ; end cond

