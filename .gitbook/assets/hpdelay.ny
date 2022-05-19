;nyquist plug-in
;version 1
;type process
;name "Delay with high pass filter..."
;action "Performing Delay with high pass filter..."
;info "Delay with high pass filter by David Sky"

;control decay "Decay amount" real "dB" 0.0 0.0 24.0
;control delay "Delay time" real "seconds" 0.5 0.0 5.0
;control count "Number of echos" int "times" 10 1 30
;control f "Start cutoff frequency" real "hz" 1000 100 5000 
;control higher "Cutoff increase" real "octaves" 0.5 0.1 5.0 

;; Using delays by Roger Dannenberg.
;; 
;; Note: this effect will use up memory proportional to
;; delay * count, since that many samples must be buffered
;; before the first block is freed.
;; 
;; With each delay, the cutoff frequency of the high pass 
;; filter is increased.

; Make count an integer
(truncate count)

; set upcount (which goes in direction 1 to count), 
; reverse of count
(setf upcount (sum count 1))

; Set octave increase [oi]
(setf oi (expt 2 higher))

(defun hpi (s f oi upcount count)
(hp s (mult  f (expt oi (- upcount count)))))

(defun hpdelays (s decay delay count)
  (if (= count 0) (cue s)

      (sim (cue s)
               (loud decay (at delay (hpdelays (hpi s f oi upcount
count) decay delay (- count 1))))))) 

(stretch-abs 1 (hpdelays s (- 0 decay) delay count))
