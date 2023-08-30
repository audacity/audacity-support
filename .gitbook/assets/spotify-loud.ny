;nyquist plug-in
;version 4
;type analyze
;name "SpotifyLoud-Check"
;maxlen 2143260000
;debugflags trace
;author "Philip Collier"
;release 1.0.0
;copyright "Released under terms of the GNU General Public License version 3"
;;; Forked from ACX-Check by Steve Daulton

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
  ;;; Return the RMS of *track*.
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
  (if (> peak -2.00)
      "Fail (too high - Peaks must be no higher than -2 dB)"
      (if (< peak -5)
          (if (< peak -8)
              "Fail (too low - Peaks should be between -5 and -2 dB)"
                  "Warning (low - Peaks should be -4 to -2 dB.)")
      "Pass (-2 +0/- 3 dB)")))


(defun check-rms (rms)
  ;;; Return Pass or Fail.
  (if (> rms -10.00)
      (if (> rms -9.00)
      "Fail (too loud - RMS should range -12 to -10 dB)"
      "Warning (too loud RMS should range -12 to -10 dB)")
  (if (< rms -12)
          (if (< rms -13)
              "Fail (too quiet - RMS should range -12 to -10 dB)"
                  "Warning (too quiet - RMS should range -12 to -10 dB)")
      "Pass ( -11 +/- 1 dB)")))


(defun check-floor (floor)
  ;;; Return Pass, Fail or Excellent.
  ;;; Room tone should be low - warn too high.
  (if (> floor -60)
      (if (> floor -54)
      "Fail (Noise floor should be below -60 dB)"
          "Warning (Noise floor should be below -60 dB)"))
  (if (< floor -59.99)
          (if (< floor -69.99)
              "Excellent (Noise floor is very low.)"
              "Pass (Noise floor is low.)")))


(defun check-rate ()
  ;; Return warning or empty string.
  ;;; Services require minimum 44100 sample rate.
  (if (< (round *sound-srate*) 44100)
      "\n\nWarning: Use at least 44100 Hz sample rate."
      ""))


(defun check-length ()
  ;;; Return warning or empty string.
  ;;; Warn if length longer than 120 minutes.
  (let* ((start (get '*track* 'start-time))
         (end (get '*track* 'end-time))
         (dur (- end start)))
    (if (> dur (* 60 120))
        "\n\nWarning: Running time is longer than 120 minutes"
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
