;nyquist plug-in
;version 3
;type generate
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;name "Narrowband Noise"
;action "Generating Noise..."
;info "by Steve Daulton. (www.easyspacepro.com).\nReleased under GPL v2.\n"

;; By Steve Daulton (www.easyspacepro.com) Sept 2012
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;; After nseband.ny by Steven Jones (pluto@swbell.net) 2004.
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control center "Center Frequency (Hz)" int "" 440 10 10000
;control bandwidth "Bandwidth (Hz)" int "" 50 1 1000
;control amplitude "Amplitude (0 - 1)" real "" 0.8 0 1
;control dur-m "Duration (minutes)" int "" 0 0 20
;control dur-s "Duration (seconds)" real "" 30 0 60
;control stereo "Stereo Output" choice "No,Yes" 0 

(setq err "")
(setq duration (+ (* dur-m 60) dur-s))
(setq len (* duration *sound-srate*))

(defun errorcheck (x xmin xmax)
  (unless (or (> x xmax)(< x xmin)) t))

;; Sanity check user input
(unless (errorcheck center 10 10000)
  (setq err "Center Frequency out of range.\n"))
(unless (errorcheck bandwidth 1 1000)
  (setq err (strcat err "Bandwidth out of range.\n")))
(when (< amplitude 0)
  (setq err (strcat err "Amplitude cannot be negative.\n")))
(unless (errorcheck duration 0 1260)
  (setq err (strcat err "Duration out of range.\n")))

;; Generate noise band
(defun noiseband (hz bw dur)
  (mult (sine (hz-to-step hz) dur)
    (lowpass4 (noise dur) bw)))
    
(defun generate (hz bw dur gain)
  (let* ((noise (noiseband hz bw dur))
         (peakval (peak noise ny:all)))
      (scale (/ gain peakval) noise)))

;; output debug information.
(format t "Center Frequency: ~a Hz~%~
  Bandwidth: ~a Hz~%~
  Amplitude: ~a~%~
  Duration: ~a:~a~%~
  Number of audio channels: ~a"
  center
  bandwidth
  amplitude
  dur-m
  dur-s
  (1+ stereo))

(cond 
  ((> (length err) 0)
    (format nil "Error.~%~a" err))
  ((= stereo 1)
    (vector 
      (generate center bandwidth duration amplitude)
      (generate center bandwidth duration amplitude)))
  (T (generate center bandwidth duration amplitude)))
    
