;nyquist plug-in
;version 1
;type process
;name "Classic EQ(15)"
;action "Equalizing..."
;info "Classic 15 Band Equalizer by Josu Etxeberria and David Sky"


;control Fre1 "25Hz" real "db" 0.0 -24.0 24.0
;control Fre2 "40Hz" real "db" 0.0 -24.0 24.0
;control Fre3 "63Hz" real "db" 0.0 -24.0 24.0
;control Fre4 "100Hz" real "db" 0.0 -24.0 24.0
;control Fre5 "160Hz" real "db" 0.0 -24.0 24.0
;control Fre6 "255Hz" real "db" 0.0 -24.0 24.0
;control Fre7 "420Hz" real "db" 0.0 -24.0 24.0
;control Fre8 "640Hz" real "db" 0.0 -24.0 24.0
;control Fre9 "1,00KHz" real "db" 0.0 -24.0 24.0
;control Fre10 "1,70KHz" real "db" 0.0 -24.0 24.0
;control Fre11 "2,56KHz" real "db" 0.0 -24.0 24.0
;control Fre12 "4,25KHz" real "db" 0.0 -24.0 24.0
;control Fre13 "6,85KHz" real "db" 0.0 -24.0 24.0
;control Fre14 "10,20KHz" real "db" 0.0 -24.0 24.0
;control Fre15 "16,00KHz" real "db" 0.0 -24.0 24.0


; [convert to linear scale using octaves]
; [almost ten octaves between 20 Hz and 20 kHz]
(setf width (/ 9.96578428466 15))



; calculate centers of different bands [in octaves above 20 Hz]

(setf center1 (mult width 0.5 (- (mult 1 2) 1)))
(setf center2 (mult width 0.5 (- (mult 2 2) 1)))
(setf center3 (mult width 0.5 (- (mult 3 2) 1)))
(setf center4 (mult width 0.5 (- (mult 4 2) 1)))
(setf center5 (mult width 0.5 (- (mult 5 2) 1)))
(setf center6 (mult width 0.5 (- (mult 6 2) 1)))
(setf center7 (mult width 0.5 (- (mult 7 2) 1)))
(setf center8 (mult width 0.5 (- (mult 8 2) 1)))
(setf center9 (mult width 0.5 (- (mult 9 2) 1)))
(setf center10 (mult width 0.5 (- (mult 10 2) 1)))
(setf center11 (mult width 0.5 (- (mult 11 2) 1)))
(setf center12 (mult width 0.5 (- (mult 12 2) 1)))
(setf center13 (mult width 0.5 (- (mult 13 2) 1)))
(setf center14 (mult width 0.5 (- (mult 14 2) 1)))
(setf center15 (mult width 0.5 (- (mult 15 2) 1)))

; convert centers [in octaves above 20 Hz] to frequency 

(setf f1 (mult 20 (expt 2 center1)))
(setf f2 (mult 20 (expt 2 center2)))
(setf f3 (mult 20 (expt 2 center3)))
(setf f4 (mult 20 (expt 2 center4)))
(setf f5 (mult 20 (expt 2 center5)))
(setf f6 (mult 20 (expt 2 center6)))
(setf f7 (mult 20 (expt 2 center7)))
(setf f8 (mult 20 (expt 2 center8)))
(setf f9 (mult 20 (expt 2 center9)))
(setf f10 (mult 20 (expt 2 center10)))
(setf f11 (mult 20 (expt 2 center11)))
(setf f12 (mult 20 (expt 2 center12)))
(setf f13 (mult 20 (expt 2 center13)))
(setf f14 (mult 20 (expt 2 center14)))
(setf f15 (mult 20 (expt 2 center15)))

; apply EQ to sound
 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
(eq-band 
s 
f15 Fre15 width) 
f14 Fre14 width) 
f13 Fre13 width) 
f12 Fre12 width) 
f11 Fre11 width) 
f10 Fre10 width) 
f9 Fre9 width) 
f8 Fre8 width) 
f7 Fre7 width) 
f6 Fre6 width) 
f5 Fre5 width) 
f4 Fre4 width) 
f3 Fre3 width) 
f2 Fre2 width) 
f1 Fre1 width)
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php








