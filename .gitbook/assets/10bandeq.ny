;nyquist plug-in
;version 1
;type process
;name "Ten band E Q..."
;action "Applying one band of the Ten Band E Q..."
;info "(1:28) (2:56) (3:112) (4:224) (5:448)  Ten Band E Q by David Sky\n(6:893) (7:1.8k) (8:3.6k) (9:7.1k) (10:14k) "

;control band "Band number(1-10)" int "band" 1 1 10 
;control gain "Gain" real "db" 0.0 -24.0 24.0

;; Choose band number 1 - 10 and apply gain to it 
;;  [between -24 and +24 db].

; make sure band is an integer
(truncate band) 

; This plug-in tests the following:

; if band < 1, set band to 1
(setf band (max 1 band))

; if band > 10, set band to 10
(setf band (min band 10))

; set the width of each band in octaves
; [convert to linear scale using octaves]
; [almost ten octaves between 20 Hz and 20 kHz]
(setf width (/ 9.96578428466 10))

; calculate center f of band [in octaves above 20 Hz]
(setf center (mult width 0.5 (- (mult band 2) 1)))

; convert center of band n [in octaves above 20 Hz] to frequency 
(setf f (mult 20 (expt 2 center)))

; apply E Q to the band [f]
(eq-band s f gain width)
