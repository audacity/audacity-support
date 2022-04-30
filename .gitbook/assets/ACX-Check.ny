;nyquist plug-in
;version 4
;type analyze
;name "ACX Check"
;maxlen 2143260000
;debugflags trace
;author "Steve Daulton"
;release 2.4.2-1
;copyright "Released under terms of the GNU General Public License version 2"


(defun getfloor ()
  ;; Calculate RMS where rate=10 Hz, window-size=0.4 seconds.
  ;; Return the lowest 0.4 to 0.5 s in the selection.
  (let ((floor 999)
        (window-size (round (* 0.4 *sound-srate*)))
        samples)
    (setf *track* (s-rms *track* 10 window-size))
    ;; Calculate new length in samples without retaining samples in RAM.
    (setf samples (truncate (* len (/ (snd-srate *track*) *sound-srate*))))
    (do ((val (snd-fetch *track*) (snd-fetch *track*))
         (count samples (1- count)))
        ((< count 4) floor) ;stop at last full window.
      (setf floor (min floor val)))))


(defun s-rms (sig &optional (rate 100.0) window-size)
  ;;; Like RMS function but also supports stereo sounds
  ;;; Stereo RMS is the root mean of all (samples ^ 2) [both channels]
  (when (soundp sig)
    (if window-size
        (return-from s-rms (rms sig rate window-size))
        (return-from s-rms (rms sig rate))))
  (let (left-ms right-ms rslt step-size)
    (setf step-size (round (/ (snd-srate (aref sig 0)) rate)))
    (unless window-size
      (setf window-size step-size))
    (setf (aref sig 0) (mult (aref sig 0)(aref sig 0)))
    (setf (aref sig 1) (mult (aref sig 1)(aref sig 1)))
    (setf left-ms (snd-avg (aref sig 0) window-size step-size OP-AVERAGE))
    (setf right-ms (snd-avg (aref sig 1) window-size step-size OP-AVERAGE))
    (s-sqrt (mult 0.5 (sum left-ms right-ms)))))


(defun track-rms ()
  ;;; Teturn the RMS of *track*.
  ;;; Stereo RMS is the root mean of all (samples ^ 2) [both channels]
  (let ((rms (get '*selection* 'rms)))
    (if (arrayp rms)
        (let ((left-mean-sq (* (aref rms 0)(aref rms 0)))
              (right-mean-sq (* (aref rms 1)(aref rms 1))))
          (sqrt (/ (+ left-mean-sq right-mean-sq) 2.0)))
    rms)))


(defun check-peak (peak)
  ;;; Return Pass, fail or warning.
  ;;; Peak too low is unlikely, but indicate the problem.
  (if (> peak -2.99)
      "Fail (too high - Peaks must be no higher than -3 dB)"
      (if (< peak -6)
          "Warning (too low - may be overly compressed or too quiet.)"
          "Pass")))


(defun check-rms (rms)
  ;;; Return Pass or Fail.
  (if (> rms -17.99)
      "Fail (too loud - RMS must be in range -23 to -18 dB)"
      (if (< rms -23)
          "Fail (too quiet - RMS must be in range -23 to -18 dB)"
          "Pass")))


(defun check-floor (floor)
  ;;; Return Pass, Fail or warning.
  ;;; Room tone is expected - warn if extremely low.
  (if (> floor -59.99)
      "Fail (too noisy - Noise floor must be below -60 dB)"
      (if (< floor -90)
          "Warning (too low - Dead silence sounds unnatural.)"
          "Pass")))


(defun check-rate ()
  ;; Return warning or empty string.
  ;;; ACX require 44100 sample rate.
  (if (/= (round *sound-srate*) 44100)
      "\n\nWarning: ACX require 44100 Hz sample rate."
      ""))


(defun check-length ()
  ;;; Return warning or empty string.
  ;;; ACX require running time no longer than 120 minutes.
  (let* ((start (get '*track* 'start-time))
         (end (get '*track* 'end-time))
         (dur (- end start)))
    (if (> dur (* 60 120))
        "\n\nWarning: ACX require running time no longer than 120 minutes"
        "")))


(defun selection-too-long ()
  ;; Return true if selection is more than ";maxlen" (13.5 hours at 44100 Hz)
  (let ((start (get '*selection* 'start))
        (end (get '*selection* 'end)))
    (> (truncate (* *sound-srate* (- end start))) len)))


(cond
  ((<= (/ len *sound-srate*) 0.5) ;get length without retaining samples in RAM.
    "Error.\nSelection must be more than 1/2 second.")
  ((selection-too-long)
    "Error.\nSelection too long.\n\nMaximum selection length is\n13.5 hours at 44100 Hz sample rate.")
  (t
    (setf *float-format* "%.2f")
    (let ((peak (linear-to-db (get '*selection* 'peak-level)))
          (rms (linear-to-db (track-rms)))
          (floor (linear-to-db (getfloor))))
      (format nil "Peak level:  ~a dB  ~a~%~%~
                  RMS level:  ~a dB  ~a~%~%~
                  Noise floor:  ~a dB  ~a~
                  ~a~a"
              peak
              (check-peak peak)
              rms
              (check-rms rms)
              floor
              (check-floor floor)
              (check-rate)
              (check-length)))))
