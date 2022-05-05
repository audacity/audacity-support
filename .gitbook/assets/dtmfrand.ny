;nyquist plug-in
;version 1
;type generate
;name "DTMF (random)..."
;action "Generating random DTMF..."
;info "Random Dual Tone Multi-Frequency generator\nby David R. Sky, Dominic Mazzoni, Roger Dannenberg, W. Borgert\n\nEnter a string consisting of 0..9, A..D, *, #, a..z\n1209 1336 1477 1633\n697   1    2    3    A\n770   4    5    6   B\n852   7 8    9    C\n941   *    0    #    D"

; make sure above info line is not word wrapped

;control tones "number of DTMF tones" int "" 20 1 120
;control mil "Include military DTMF tones A-D" int "0=no 1=yes" 0 0 1
;control sil "Include silent intervals" int "0=no 1=yes" 0 0 1
;control volume "Volume" real "linear" 0.3 0.001 1.000
;control tl "Tone length" real "seconds" 0.100 0.001 1.000
;control twist "High to low tone ratio" real "db" 0.0 0.0 4.0
;control sl "Post silence length" real "seconds" 0.100 0.000 1.000

; Random DTMF (Dual Tone Multi-Frequency) generator
; by David R. Sky, Dominic Mazzoni, Roger B. Dannenberg, W. Borgert
; 2004-09, 2005-04
; January 7, 2006 made randomized
; includes the 4 military 'numbers'
; A B C D, to the right of the numbers
; but since this plug-in generates random numbers
; to select which tones to generate, 
; A-D are 12-15
; Released under terms of the GNU General Public License version 2
; http://www.gnu.org/copyleft/gpl.html

; Twist is the ratio of the high to low tone, in db
; used in real telephone applications.

; regular DTMF tones: 12
; including military DTMF: 16
(setf limit (if (= mil 0) 12 16))

(defun random-dtmf (key volume tl twist sl)
  (setf low (if (member key 
'(1 2 3 12)) 697
              (if (member key 
'(4 5 6 13)) 770
                (if (member key 
'(7 8 9 14)) 852
                  (if (member key 
'(0 10 11 15)) 941 0)))))
  (setf high (if (member key 
'(1 4 7 10)) 1209
               (if (member key 
'(2 5 8 0)) 1336
                 (if (member key 
'(3 6 9 11)) 1477
                   (if (member key 
'(12 13 14 15)) 1633 0)))))
; limit is 12 for regular DTMF, 16 including military
; so if random number>limit, generate silence
  (setf volume (if (< key limit) volume 0.0))
  (seq
    (mult volume
          (pwl 0.002 1 (- tl 0.002) 1 tl)
          (sim
            (osc (hz-to-step high) tl)
            (loud (- 0 twist) (osc (hz-to-step low) tl))))
    (s-rest sl)))

(seqrep (i tones) 
(random-dtmf (random (+ limit sil)) volume tl twist sl))

