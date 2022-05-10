;nyquist plug-in
;version 1
;type generate
;name "Variable Duration Silence generator..."
;action "Generating selected length of silence..."
;info "Variable Duration silence generator by David R. Sky"

;control s1 "Silence duration 1" int "seconds" 0 0 60
;control s2 "Silence duration 2" real "seconds" 0.000 0.000 0.999

;; Variable Duration Silence Generator by David R. Sky
;; September 13, 2004
;; 
;; Silence duration 1 is thousandths of a second (1/1000 s) 
;; silence duration 2 is whole seconds
;; length of silence can be from 0.000 s to 60.999 s

; I wanted a specific length of silence appended to a sound 
; such as Steven Jones' Risset Drum,
; in order to repeat the sound as many times as I wanted
; for a rhythmic effect

(setf s1 (max 0 (min (truncate s1) 60)))
(setf s2 (max 0.000 (min s2 0.999)))

(s-rest (sum s1 s2))
