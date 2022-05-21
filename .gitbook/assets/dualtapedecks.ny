;nyquist plug-in
;version 2
;type process
;name "Dual Tape Decks..."
;action "Applying dual tape decks effect..."
;info "Dual Tape Decks by David R. Sky\nSimulating two out-of-synch tape decks"

;control modulation "LFO frequency" real "hz" 0.100 0.001 25.000
;control phase "Starting phase" real "degrees" 0 -180 180
;control phasediff "Phase difference" real "degrees" 180 0 360
;control depth "Depth" real "depth" 0.100 0.001 2.000

;; dual Tape Decks by David R. Sky September 26, 2004
;; Simulates two tape decks playing identical tapes,
;; but they are out-of-synch with each other.
;; Can produce some interesting stereo effects.
;; Speakers and headphones sound different.
;; Best suited to apply to stereo sounds.
;; 

; maxdepth and offset do not seem to have 
; any useful effect for this plug-in
; (that is, to need any control inputs)
(setf maxdepth 0.5)
(setf offset 0.25)

(if (arrayp s) 
(vector 
(snd-tapv (aref s 0) offset (mult depth 
(lfo modulation 1.0 *sine-table* phase)) maxdepth) 

(snd-tapv (aref s 1) offset (mult depth 
(lfo modulation 1.0 *sine-table* (sum phase phasediff))) maxdepth)
)

(snd-tapv s offset (mult depth 
(lfo modulation 1.0 *sine-table* phase)) maxdepth) 
)

