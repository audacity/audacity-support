;nyquist plug-in
;version 2
;type process
;name "Audio selection Sequencer 2..."
;action "Sequencing your audio selection..."
;info "seq2.ny by David R. Sky: for help, see seq2.txt in the seq2.zip file, or www.shellworld.net/~davidsky/seq2.htm \nTo generate a rest, use r, n, (),  or a blank svp input line. \nReleased under terms of the GNU General Public License version 2"

;control tempo "Tempo [beats per minute], beats per sequence, sequence starting offset [beats]" string " " "210.0 8 0.0"
;control panning "Pan stereo selection [0=no 1=yes]" int " " 1 0 1
;control random-time "Timing randomization [plus or minus percent]" int " " 0 0 100
;control random-measures "Number of repeated randomized sequences" int " " 0 0 8
;control transpose "Overall transpose value, then for successive measures" string " " "0 0 0 5 5 0 0 -5 -5"
;control sequences "Sequences to generate" int " " 4 1 96
;control svp1 "1: Semitone, volume, pan value[s]" string " " "(0 1 0) (4 .5 .2) (7 .5 .8) (2 1 .5)"
;control svp2 "2: SVP value[s]" string " " "(12 .5 .8) (7 .5 .2) (4 1 1) r"
;control svp3 "3: SVP value[s]" string " " " "  
;control svp4 "4: SVP value[s]" string " " " "  
;control svp5 "5: SVP value[s]" string " " " "  
;control svp6 "6: SVP value[s]" string " " " "  


; Audio Selection Sequencer 2 by David R. Sky, August 29, 2007
; much improved over seq1b.ny from Dec. 17, 2004
; sequences mono or stereo audio selection in Audacity
; can also pan stereo selection for each note
; can also transpose successive sequences
; Thanks to feedback from Edgar Franke, Martyn Shaw - 
; for Nyquist code pointers and visual layout
;
; I have been careful to unbind symbols and functions when no longer needed,
; to hopefully avoid problem[s] encountered 
; in previous long Nyquist plug-ins
;
; Released under terms of the GNU General Public License version 2
; http://www.gnu.org/copyleft/gpl.html

; function to convert stereo selection to mono-sounding selection
; if panning = 1
; returns "selection"
(defun sample (s panning)
(if (arrayp s)
(if (= panning 1)
(vector (mult 0.5 (sum (aref s 0) (aref s 1)))
(mult 0 (sum (aref s 1) (aref s 0))))
;
s) ; end inner if
;
s))


; function to replace all occurances of "n", "N", "r", "R"
; [from "nil" and "rest"]
; with replacement text [a rest]
; and get rid of all other alphabetic characters in the string
(defun replace-n&r (string replacement-string)
(setf temp2-string "")
(dotimes (i (length string))
(setf char (char-downcase (char string i)))
(setf temp2-string 
(cond
((or (char= char #\r)
(char= char #\n))
(strcat temp2-string " " replacement-string " "))
;
((> (char-code char) 96)
temp2-string)
;
(t
(strcat temp2-string (string char))))))
temp2-string)


; function to convert string to a list
; returns list
(defun string-to-list (string)
(read (make-string-input-stream (format nil "(~a)" string))))


(let* (
(tempo (string-to-list tempo))
(beats-per-seq (if (second tempo) (max 1 (min 96 (truncate (second tempo)))) 8))
(beats-offset (if (third tempo) (third tempo) 0))
; tempo can be expressed as a flonum or as a LISP calculation:
; eg., [/ 210 16] would make tempo 1/16 of 210.0 bpm
;  [* 210 16] would make tempo 16 times 210 bpm
(tempo (if (car tempo)
(if (listp (car tempo))
(float (eval (car tempo)))
(car tempo))
210.0))
; end tempo assignment
(beat-dur (/ 60.0 tempo)) ; duration of one beat
(beats-offset (* beat-dur beats-offset)) ; convert beats-offset to time
(small-seq-dur (* beats-per-seq beat-dur)) ; duration of one [small] sequence
(selection (sample s panning))
(dur (/ len *sound-srate*)) ; selection duration
; set s to nil 
(s nil)
(svp-string-list (list svp1 svp2 svp3 svp4 svp5 svp6))
(temp-string "")
(temp2-string "")
; convert transpose string input to transpose-list
(transpose-list (string-to-list (replace-n&r transpose "nil")))
(transpose-list (if (null transpose-list)
'(0 0) transpose-list))
(overall-transpose (if (null (car transpose-list)) 0 (car transpose-list)))
(transpose-list (if (> (length transpose-list) 1)
(cdr transpose-list) '(0)))
(transpose-length (length transpose-list))
i j k n 
svp-element svp-list temp-list vol semitone pan
samples peak-level) ; end let* args


; unbind s and sample function
(setf (symbol-value 's) '*unbound*)
(setf (symbol-function 'sample) '*unbound*)

; concatenate all svp string inputs into one string
(dotimes (i (length svp-string-list))
(setf temp-string (if 
(null (string-to-list (nth i svp-string-list)))
(strcat temp-string " (0 0 0.5)")
(strcat temp-string " " (nth i svp-string-list)))))

; unbind string input values svp1 and up,
; and svp-string-list
(setf (symbol-value 'svp1) '*unbound*)
(setf (symbol-value 'svp2) '*unbound*)
(setf (symbol-value 'svp3) '*unbound*)
(setf (symbol-value 'svp4) '*unbound*)
(setf (symbol-value 'svp5) '*unbound*)
(setf (symbol-value 'svp6) '*unbound*)
(setf (symbol-value 'svp-string-list) '*unbound*)

; convert temp2-string to a list 
; and assign to master-list
(setf master-list (string-to-list (replace-n&r temp-string "(0 0 0.5)")))

; unbind temp-string, temp2-string, char,
; and string-to-list, replace-n&r functions
(setf (symbol-value 'temp-string) '*unbound*)
(setf (symbol-value 'temp2-string) '*unbound*)
(setf (symbol-value 'char) '*unbound*)
(setf (symbol-function 'string-to-list) '*unbound*)
(setf (symbol-function 'replace-n&r) '*unbound*)

; create temp-list, which is beats-per-seq long master-list
(dotimes (i beats-per-seq)
(setf temp-list (if (numberp (nth i master-list))
(append temp-list (list (list (nth i master-list))))
(append temp-list (list (nth i master-list))))))

; assign temp-list to master-list
(setf master-list temp-list)

; function to add random time variation to each beat
; if random-time > 0, 
; introduces random timing variation to sequenced notes
(defun get-random-time (beat-dur random-time)
(if (= random-time 0) 0
(* beat-dur (nth (random 2) (list -1.0 1.0))
(* 0.001 (random (truncate (* random-time 0.01 1000)))))))


; function to add volume and pan values to sublists
; if they are absent
; also prepends randomized time to each sublist
(defun add-values-to-list (list  beat-dur random-time)
(dotimes (i (length list))
(setf temp-list (nth i list))
(setf (nth i list)
(cond
((null temp-list) ; nil, a rest
(list (get-random-time beat-dur random-time) 0 0 0.5))
;
((= (length temp-list) 1) ; semitone value only
(append (list (get-random-time beat-dur random-time)) temp-list (list 1.0 0.5)))
;
((= (length temp-list) 2) ; semitone, vol values
(append (list (get-random-time beat-dur random-time)) temp-list (list 0.5)))
;
(t ; semitone, vol and pan values present
; [any values after these are ignored]
(append (list (get-random-time beat-dur random-time)) 
(list (first temp-list))
(list (second temp-list))
(list (min 1.0 (max 0 (third temp-list))))))))))


; add default vol and pan values to sublists of master-list
; which do not already have these values,
; and prepend randomized time offsets to each sublist
; note that first sublist of master-list contains time offset value
; which will later be made zero 
(add-values-to-list master-list beat-dur random-time)

; unbind get-random-time and add-values-to-list functions
(setf (symbol-function 'get-random-time) '*unbound*)
(setf (symbol-function 'add-values-to-list) '*unbound*)


; for randomized sequences only: function to append 
; random-measures number of non-randomized master-list,
; before randomizing 
(defun multi-list (list random-measures)
(setf temp-list list)
(dotimes (i (1- random-measures))
(setf temp-list (append temp-list list)))
temp-list)


; function to rotate a list:
; [my-rotate [list 0 1 2 3 4 5]] -> [[1 2 3 4 5 0]
; [my-rotate [list 0 1 2 3 4 5] 2] -> [2 3 4 5 0 1]
(defun my-rotate (list &optional (n 1))
(if (<= n 0) 
list
(my-rotate (append (last list) (reverse (cdr (reverse list)))) (1- n))))


; function to randomize a list
; needs my-rotate function above
(defun randomize-list (list)
(setf temp-list nil)
(dotimes (i (length list))
(setf list (my-rotate list (random (length list))))
(setf temp-list (push (car list) temp-list))
(pop list))
temp-list)


; randomize master-list if random-measures > 0
(setf master-list (if (= random-measures 0)
master-list
(randomize-list (multi-list master-list random-measures))))

; unbind temp-list, list, and 
; multi-list, my-rotate, randomize-list functions
(setf (symbol-value 'temp-llist) '*unbound*)
(setf (symbol-value 'list) '*unbound*)
(setf (symbol-function 'multi-list) '*unbound*)
(setf (symbol-function 'my-rotate) '*unbound*)
(setf (symbol-function 'randomize-list) '*unbound*)

; make sure first time offset of master-list is 0,
; so first generated note is at the exact start
; [if no beat offset]
(setf (car (car master-list)) 0.0)


; function to retrieve semitone, vol and pan values 
; from master-list
(defun get-svp-values (master-list i overall-transpose j transpose-list)
(setf svp-list (nth i master-list))
(cond 
((or 
(null (nth j transpose-list))
(= (length svp-list) 1)
(null svp-list))
(setf vol 0)) ; a rest
;
(t ; offset, semitone, vol and pan values in svp-list
(setf semitone (+ overall-transpose (nth j transpose-list) (second svp-list)))
(setf vol (third svp-list))
(setf pan (fourth svp-list)))))


; function to return stretch factor
; depending on semitone value
(defun return-stretch (semitone)
(/ (expt 2.0 (/ semitone 12.0))))


; function to pan stereo audio 
; [has to be made mono first using sample function]
; works by panning only the l channel of the selection,
; since selection was converted to both channels being mixed in l channel,
; r channel being made silent
; only l channel of selection is stretched, 
; saving calculation time during sequence generation
(defun l-channel-pan (where sound)
   (vector (mult (diff 1.0 where) (aref sound 0))
(mult where (aref sound 0))))


; function to stretch or shrink selection to new semitone value,
; or return silence if vol = 0
; and pan if panning is called for
(defun stretch-selection (semitone selection)
(if (arrayp selection)
(if (= panning 0)
(vector 
(force-srate *sound-srate* (stretch-abs (return-stretch semitone) 
(sound (aref selection 0))))
(force-srate *sound-srate* (stretch-abs (return-stretch semitone) 
(sound (aref selection 1)))))
;
(vector 
(force-srate *sound-srate* (stretch-abs (return-stretch semitone) 
(sound (aref selection 0)))))) ; end if panning=0
; stretch mono selection
(force-srate *sound-srate* (stretch-abs (return-stretch semitone) 
(sound selection)))))


; function to generate new note in sequence
(defun new-note (selection i j master-list overall-transpose transpose-list)
(get-svp-values master-list i overall-transpose j transpose-list)
(cond 
((= vol 0) (s-rest beat-dur)) ; return silence
;
((= semitone 0) ; no transposition needed
(if (arrayp selection)
(if (= panning 0)
(scale vol selection)
(scale vol (l-channel-pan pan selection)))
(scale vol selection)))
;
(t ; return transposed selection
(if (arrayp selection)
(if (= panning 0)  ; do not pan stereo selection
(scale vol (stretch-selection semitone selection))
;
(scale vol (l-channel-pan pan 
(stretch-selection semitone selection))))
;
(scale vol 
(stretch-selection semitone selection))))))


; calculate new beats-per-seq value if random-measures > 0
; beats-per-seq is used in sequence generation,
; rather than length of master-list
; because master-list might not be programmed with beats-per-seq 
; number of notes
; so notes after master-list are rests
(setf beats-per-seq
(if (= random-measures 0) beats-per-seq
(* random-measures beats-per-seq)))

; calculate new small-seq-dur value if random-measures > 0
; small-seq-dur: duration of one 'small' sequence 
; [made from master-list]
(setf small-seq-dur 
(if (= random-measures 0) 
small-seq-dur
(* small-seq-dur random-measures )))

; calculate large-seq-dur
; this is duration of sequence 
; after one full cycle of transpositions
(setf large-seq-dur (* small-seq-dur transpose-length))

; calculate number of sequences to normalize:
; samples in 1.5 times large-seq-dur
(setf samples (truncate (* 1.5 large-seq-dur *sound-srate*)))


(flet 
; local function which is used to normalize sequence
((normalize (samples signal)
(setf peak-level (if (arrayp signal)
(max (peak (aref signal 0) samples)
(peak (aref signal 1) samples))
(peak signal samples)))
(if (> peak-level 0)
(scale (/ 0.95 peak-level) signal)
(cue signal))))


; generateing sequences
(sim 
; initial beats-dur offset [silence]...
(if (arrayp selection)
(vector (s-rest beats-offset) (s-rest beats-offset))
(s-rest beats-offset))
; ...followed by sequence
(at-abs beats-offset (cue
(normalize samples (simrep (k sequences)

; generate transposed list of small sequences
(simrep (j (length transpose-list))

; generate one [small] sequence
(simrep (i beats-per-seq)
(at-abs 
(+ (car (nth i master-list)) (* k large-seq-dur) 
(* j small-seq-dur) (* i beat-dur))
(cue (new-note selection i j master-list overall-transpose transpose-list))
) ; end at-abs
) ; end simrep i
) ; end simrep j
) ; end simrep k
) ; end normalize
) ; end cue
) ; end at-abs
) ; end sim
) ; end flet
) ; end let*
