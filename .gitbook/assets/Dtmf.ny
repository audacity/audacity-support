;nyquist plug-in
;version 1
;type generate
;name "DTMF Generator"
;action "Generating DTMF ..."
;info "by David R. Sky, Dominic Mazzoni, Roger Dannenberg, W. Borgert\nReleased under terms of the GNU General Public License Version 2\nCreates Dual Tone Multi-Frequency tones also known as Touch Tones.\nEnter a tone string consisting of any of the following characters:\n0...9,  A...D,  *,  #,  a...z\nEach tone is followed by a silence of the specified duration; entering\na space in the string extends the silence by that duration.\nExamples: 1209 1336 1477 1633\n                697   1    2    3    A\n                770   4    5    6  B\n                852   7 8    9    C\n                941   *    0    #     D"

;control keys "Tone string" string "" "180audacity"
;control tl "Tone duration (milliseconds)" int "" 100 1 1000
;control sl "Silence duration after tone (milliseconds)" int "" 100 0 1000
;control twist "Twist (Reduced volume of low tone in each tone; dB)" real "" 0.0 0.0 4.0
;control volume "Volume (percent)" int "" 80 1 100

; DTMF (Dual Tone Multi-Frequency) generator
; otherwise known as Touch Tones (TM)
; by David R. Sky, Dominic Mazzoni, Roger B. Dannenberg, W. Borgert
; 2004-09, 2005-04
; January 7, 2006 now includes alphabet
; for example 123audacity 1800recycle 
; includes the 4 military 'numbers'
; A B C D, to the right of the regular number keypad
; Code reformatted for readability Sept 2016.
;
; Released under terms of the GNU General Public License version 2
; http://www.gnu.org/copyleft/gpl.html


; convert volume percent to flonum
; DTMF uses two tones so we cut volume by further one-half
(setf volume (/ volume 200.0))

; convert milliseconds to seconds
(setf tl (/ tl 1000.0))
(setf sl (/ sl 1000.0))

; Twist is the ratio of the high to low tone, in db
; used in real telephone applications.

(defun dtmf (key volume tl twist sl)
  ;; XLISP does not have 2-dimensional arrays, so we'll use row and column lists.
  (let ((row1 (list #\1 #\2 #\3 #\A #\a #\b #\c #\d #\e #\f))
        (row2 (list #\4 #\5 #\6 #\B #\g #\h #\i #\j #\k #\l #\m #\n #\o))
        (row3 (list #\7 #\8 #\9 #\C #\p #\q #\r #\s #\t #\u #\v #\w #\x #\y #\z))
        (row4 (list #\* #\0 #\# #\D))
        (col1 (list #\1 #\4 #\7 #\* #\g #\h #\i #\p #\q #\r #\s))
        (col2 (list #\2 #\5 #\8 #\0 #\a #\b #\c #\j #\k #\l #\t #\u #\v))
        (col3 (list #\3 #\6 #\9 #\# #\d #\e #\f #\m #\n #\o #\w #\x #\y #\z))
        (col4 (list #\A #\B #\C #\D)))
    (setf low
      (cond
        ((member key row1) 697)
        ((member key row2) 770)
        ((member key row3) 852)
        ((member key row4) 941)
        ( T 0)))
    (setf high
      (cond
        ((member key col1) 1209)
        ((member key col2) 1336)
        ((member key col3) 1477)
        ((member key col4) 1633)
        ( T 0)))
    (setf volume
      (cond
        ((or (member key row1) (member key row2)
             (member key row3) (member key row4))
            volume)
        ( T 0)))
    (seq
      (mult volume
            (pwl 0.002 1 (- tl 0.002) 1 tl)
            (sim
              (osc (hz-to-step high) tl)
              (loud (- twist) (osc (hz-to-step low) tl))))
      (s-rest sl))))

(seqrep (i (length keys))
        (dtmf (char keys i) volume tl twist sl))
