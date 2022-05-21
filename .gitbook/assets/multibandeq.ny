;nyquist plug-in
;version 1
;type process
;name "Multiband EQ..."
;action "Applying gain to one band..."
;info "Multiband EQ by David Sky"

;control band "Band number of (T)" int "band" 1 1 30 
;control gain "Gain" real "db" 0.0 -24.0 24.0
;control bands "Total number of bands (T)" int "bands" 10 2 30  

;; You can set the total number of bands (T) between 2 and 30.
;; Then you can choose the band number and apply gain to it 
;;  [between -24 and +24 db]. 
;; If there are T bands (total number of bands), choose band from 1 to T.

; make sure bands and band are integers
(truncate bands) 
(truncate band) 

; This plug-in tests the following:

; if bands < 2, set bands to 2
(setf bands (max 2 bands))

; if bands > 30, set bands to 30
(setf bands (min 30 bands))

; if band < 1, set band to 1
(setf band (max 1 band))

; if band > bands, set band to bands
(setf band (min band bands))

; set the width of each channel in octaves
; [convert to linear scale using octaves]
; [almost ten octaves between 20 Hz and 20 kHz]
(setf width (/ 9.96578428466 bands))

; calculate center f of band [in octaves above 20 Hz]
(setf center (mult width 0.5 (- (mult band 2) 1)))

; convert center of band [in octaves above 20 Hz] to frequency 
(setf f (mult 20 (expt 2 center)))

; apply E Q to the band
(eq-band s f gain width)
