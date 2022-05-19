;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core#GatePlugin"
;name "Noise Gate"
;action "Gating audio..."
;info "by Steve Daulton (http://easyspacepro.com). Released under GPL v2.\n\n'VIEW HELP' is available in the 'Select Function' menu.\n"

;; Mono/Stereo Noise Gate - version 3 plug-in (requires Audacity 1.3 or later)
;; by Steve Daulton June 2011
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .


;control funct "Select Function" choice "Gate,Analyse Noise Level,View Help 1,View Help 2,View Help 3,View Tips" 0
;control stlink "Stereo Linking" choice "Link Stereo Tracks,Don't Link Stereo" 0
;control hpf "Apply Low-Cut filter" choice "No,10Hz 6dB/octave,20Hz 6dB/octave" 0
;control freq "Gate frequencies above" real "kHz" 0 0 10
;control level-red "Level reduction" real "dB" -12 -100 0
;control thresh "Gate threshold" real "dB" -48 -96 -6
;control attack "Attack/Decay" real "milliseconds" 250 10 1000


;; Error checking
(setq err "") ; initialise error message
(if (< funct 2)(progn ; don't bother for help screens
   (if (>= freq (/ *sound-srate* 2.0)) ; filter frequency greater than Nyquist
      (setq err (strcat err (format NIL
"~%Gate filter (Gate frequencies above) must be less
than half of the sample rate.
Current setting of ~a Hz is too high.
The selected audio has a sample rate of ~a Hz~%"
freq *sound-srate*))))
   (if (< LEN 100) ; 100 samples required 
      (setq err (strcat err (format NIL
"~%Insufficient audio selected.
Please make the selection longer.~%"))))))


(if (> (length err) 0) ; there are errors
(strcat "ERROR!\n" err) ;show error messages
(progn

(setq help1
(format NIL
"OVERVIEW. \n
Noise Gates may be used to cut the level of residual
noise between sections of a recording. While this
is essentially a very simple effect, this Noise Gate
has a number of features and settings that allow it
to be both effective and unobtrusive and well suited
to most types of audio.\n
FUNCTIONS: Select whether you want to Apply the Noise
Gate, Test the noise level, or Read this help file.\n
LINK STEREO will process both channels of a stereo
track together and will only gate audio when both
channels fall below the gate threshold.\n
LOW CUT FILTER: Removes sub-sonic frequencies including
DC off-set. DC corrected tracking is used whether
or not the Low Cut Filter has been selected.\n
View Help screen with the 'Debug' button for an
output that can be copy/pasted."))

(setq help2
(format NIL
"GATE FREQUENCIES ABOVE:
applies the gate only to frequencies above the set
level. It may be useful for reducing tape hiss, but
may also introduce a small amount of 'phase distortion'. 
Set below 0.1 kHz to switch this feature off.\n
LEVEL REDUCTION:
How much the gated sections are reduced in volume. 
Gating to absolute silence may sound unnatural and 
'clinical'. The default -12dB will provide significant 
reduction in the audio level of gated sections while 
avoiding the 'gate slam' that is a common criticism
of noise gates. If the Level Reduction is set 
below -96 dB the gate will 'shut' to absolute silence.\n
GATE THRESHOLD:
When the audio level drops below this threshold the
gate will 'close' and the output level will be reduced.
When the audio level rises above this threshold the 
gate will 'open' and the output will return to the
same level as the input."))

(setq help3
(format NIL
"ATTACK/DECAY: How quickly the gate opens and closes.
At the minimum (10 ms) the gate will fully open and
close almost instantly as the audio level crosses
the threshold. This could cause the gate to 'flutter'
or 'snap'. At the maximum (1000 ms), the gate will
begin to slowly open (fade-in) 1 second before the
sound level exceeds the Threshold, and will gradually
close (fade-out) after the sound level drops below
the Threshold over a period of 1 second. Longer gate 
times (up to 10 seconds) may be achieved using text
input rather than the slider.\n
Suggested work-flow: 
1) Analyse the noise level
2) Test the gate on a short selection with the Level 
Reduction set to -100 dB
3) Adjust the Gate Threshold if necessary and retest.
4) Adjust the Level Reduction slider and test. For
the most 'transparent' results avoid setting the Level
Reduction any lower than absolutely necessary.
5) When the settings are correct, apply to the entire song."))

(setq help4
(format NIL
"USAGE TIPS:
The Gate level should be just above the level of the
noise to be removed. If the gate threshold is too high,
sound that should be retained will be cut. If the
threshold is set too low, noise will be above the
threshold and allowed through the gate.
-6 dB (maximum) will cut even moderately loud sounds.
-96 dB (minimum) will allow virtually all sound to 
pass un-gated.\n
To find a suitable Gate Threshold setting, select a 
portion of the track that contains only background
noise, then use the 'Analyse Noise Level' function.\n
If the noise cut-off sounds too abrupt, increase the
Attack/Decay setting. Longer settings are often better 
when a high degree of noise reduction is being performed.\n
If the noise remaining after applying the effect is
too geat, either set the Level Reduction lower or 
raise the Threshold."))
;; End of Help screens

(defun sanitise (var min max)
   (if (> var max) max
      (if (< var min) min var)))

; check and initialise variables
(setq silence (if (> level-red -96) 0 1)) ; flag for silence
(setq freq (* 1000.0 (sanitise freq 0 10))) ; convert from kHz to Hz
(if (< freq 100)(setq freq 0)) ; low frequency settings do not work well
(setq level-red (db-to-linear (sanitise level-red -96 0)))
(setq thresh (db-to-linear (sanitise thresh -96 0)))
(setq attack (sanitise (/ attack 1000.0) 0.001 10.0))
(setq look attack)
(setq decay attack) ; this could be replaced with a slider if required

;; Apply low frequency HP filter.
;; Only first order filters are used as steeper filters introduce ringing.
;; To use higher order filters add the required options to the hpf control.
(setq s
(case hpf
   (1 (hp s 10))
	(2 (hp s 20))
	(3 (highpass2 s 10 0.7))
	(4 (highpass2 s 20 0.7))
	(5 (highpass4 s 10))
	(6 (highpass4 s 20))
	(7 (highpass6 s 10))
	(8 (highpass6 s 20))
	(9 (highpass8 s 10))
	(10 (highpass8 s 20))
	(T s)))

(defun gate-follow (s-in mode)
   (setq s-in (hp s-in 20)) ; hp filter to remove DC off-set
   (if (and(= mode 0)(arrayp s-in)) ; stereo track set to mono/link
      (s-max (s-abs(aref s-in 0))(s-abs(aref s-in 1)))
	   (s-abs s-in)))

; function to round number to specified decimal places and return as a string.
(defun roundn (num places)
   (let* ((x (format NIL "~a" places))
            (ff (strcat "%#1." x "f")))
      (setq *float-format* ff)
      (format NIL "~a" num)))

(defun show (s-in)
; find peak amplitude ignoring DC off-set
   (defun lev (s-test test-len)
      (let*
         ((pos (sum 1 (clip (sum s-test -1) 1)))
         (neg (sum -1 (clip (sum s-test 1) 1)))
         (lev (peak pos test-len))
         (inv-lev (peak neg test-len)))
      (/ (+ lev inv-lev)2.0)))
; output text message
	(setq test-length (truncate (min LEN (/ *sound-srate* 2.0))))
   (if (arrayp s-in)
	   (Let*
         ((levL (linear-to-db (lev (aref s-in 0) test-length)))
         (levR (linear-to-db (lev (aref s-in 1) test-length)))
         (target (* 0.925 (max levL levR)))) ; suggest 7.5% above noise level
(format NIL "Peak based on first ~a seconds:~%
Left Channel ~a dB
Right Channel ~a dB~%
Suggested Threshold Setting ~a dB."
(roundn (/ test-length *sound-srate*) 2)
(roundn levL 2)
(roundn levR 2)
(roundn target 0)))            
         (Let* 
            ((levm (linear-to-db (lev s-in test-length)))
            (target (* 0.925 levm))) ; suggest 7.5% above noise level
(format NIL "Peak based on first ~a seconds ~a dB
~%Suggested Threshold Setting ~a dB."
(roundn (/ test-length *sound-srate*) 2)
(roundn levm 2)
(roundn target 0)))))


(defun noisegate (s-in gatefollow lookahead risetime falltime floor threshold Hz)
   (defun gate-s (x)
      (mult x 
         (/ (- 1 (* silence floor)))
         (diff (clip (gate gatefollow lookahead risetime falltime  floor threshold) 1.0)(* silence floor))))
   (if (> Hz 20)
	   (sim
         (gate-s (highpass8 s-in Hz))
		   (lowpass8 s-in (* 0.91 Hz)))
      (gate-s s-in)))

;; Run program
(case funct
   (1 (show s))
   (2 (format T "~a" help1)(format nil "~a" help1)); print help file to display and debug
   (3 (format T "~a" help2)(format nil "~a" help2))
   (4 (format T "~a" help3)(format nil "~a" help3))
   (5 (format T "~a" help4)(format nil "~a" help4))
   (T 
(setq gatefollow (gate-follow s stlink))
(multichan-expand #' noisegate s gatefollow look attack decay level-red thresh freq)))))
