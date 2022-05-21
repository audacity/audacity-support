;nyquist plug-in
;version 2
;type process
;name "Regular interval audio splitter..."
;action "splitting audio by inserting regular interval silences..."
;info "by David R. Sky www.shellworld.net/~davidsky/ \nReleased under terms of the GNU General Public License version 2 \nSplits audio into desired number of segments by inserting silences of\nspecified duration. You can also specify fade-in and fade-out lengths\nfor each segment. By setting number of segments to ' 1 ' you can use\naudio splitter to apply a specified fade-in and fade-out to a single\nlength of audio in one action."

;control chunks "Number of audio segments" int "" 10 1 120
;control shift-t "Silence duration between segments [seconds]" real "" 1 0.01 10
;control fade "Fade-in/fade-out length [milliseconds; 0 = no fade]" int "" 20 0 500

; Audio chunker by David R. Sky, September 2, 2006.
; updated october 2007, converting shift-t in percentage value to seconds
; Released under terms of the GNU General Public License version 2
; http://www.gnu.org/copyleft/gpl.html

; divides selection into equal duration chunks,
; with user-set duration of silence between chunks

; initialize variables:

; selection duration
(setf dur (/ len *sound-srate*))
; set number of chunks from 1-120 inclusive
; prevents possible stack overflow issues above 120 events
; for 1 chunk, simply applies fade-in and fade-outs
; at start and end of chunk
(setf chunks (max 1 (min 120 chunks)))
; setting chunk duration
(setf chunk-t (/ dur chunks))
; fade in/out times
; so no sharp clicks at start/end of chunks 
; unless fade time is very fast
(setf fade (* 0.001 fade))
; if fade time is more than half of chunk duration,
; set fade to half of chunk duration
(setf fade (if (> fade (* 0.5 chunk-t))
(* 0.5 chunk-t) fade))


(let (old x start end open close result)

; extract function for this plug-in
; chunker-extract
(defun c-extract (open close sound)
(if (arrayp sound)
(vector 
(extract-abs open close (aref sound 0))
(extract-abs open close (aref sound 1)))
(extract-abs open close sound)))

; copy s to local var old and discard s
(setq old s)
(setq s nil)

; making individual audio chunks
(defun make-chunk (chunk-t i)
; define start and end times,
; which are used to extract chunk from old
(setf start (* i chunk-t))
(setf end (+ start chunk-t))
; extracting chunk from old
(c-extract start end 
; applying fade-in and fade-out
(mult 
(pwl 0 0 (/ start dur) 0 (/ (+ start fade) dur) 1.0 
(/ (- end fade) dur) 1.0 (/ end dur) 0 1)
(cue old)
) ; end mult
) ; end c-extract
) ; end defun make-chunk

; moving individual audio chunks into proper time positions
(defun move-chunks (chunk-t shift-t chunks)
(simrep (i chunks)
(at-abs (* i (+ chunk-t shift-t))
(cue 
; (
; above left paren: opening of a possible added effect function
; to process each chunk differently,
; use i for changing variable of added function
(make-chunk chunk-t i)
; ) 
; above right paren: close of possible added effect function
) ; end cue
) ; end at-abs
) ; end simrep
) ; end defun move-chunks


; chunking audio
(move-chunks chunk-t shift-t chunks)
) ; close let

