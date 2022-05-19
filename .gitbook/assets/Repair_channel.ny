;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#UtilityPlugin"
;name "Repair Channel..."
;action "Patching audio..."
;info "By Steve Daulton (http://easyspacepro.com). Released under GPL v2.\n\nRepair damage to one channel of a stereo track\nby overwriting with audio from the other channel.\n\nSelect the damaged audio and allow additional space for cross-fading.\nStereo Simulation will often make repairs to stereo recordings less noticeable.\nThe upper channel is the Left channel."

;; repair-channel.ny by Steve Daulton. January 2010.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .

;; version 1.1 March 2011

;control chnselect "Which Channel to Repair" choice "Left Channel,Right Channel" 0 
;control stereo "Stereo Simulation" choice "Enabled,Disabled" 0 
;control fade "Cross-fade Time" real "[%]" 20.0 0.0 50.0

(setq mode (+ chnselect (* 2(- 1 stereo)))) ;combine controls to give mode= 0,1,2 or 3.
(setq fade (* (max(min fade 50)0) 0.01)) ;limit range and convert from %

;; Patch Functions
;; patch Left channel
(defun patchleft (s-in time)
  (vector
    (sim
      (mult (pwl 0.0 1.0 time 0.0(diff 1.0 time) 0.0 1.0 1.0 1.0)(aref s-in 0)) ;fade out left channel
      (mult (pwl time 1.0(diff 1.0 time) 1.0 1.0)(aref s-in 1))) ;fade in right channel
    (aref s-in 1)))

;; patch Right channel   
(defun patchright (s-in time)
  (vector
    (aref s-in 0)
    (sim
      (mult(pwl 0.0 1.0 time 0.0(diff 1.0 time) 0.0 1.0 1.0 1.0)(aref s-in 1)) ;fade out right channel
      (mult(pwl time 1.0(diff 1.0 time) 1.0 1.0)(aref s-in 0))))) ;fade in left channel

;; patch Left channel - pseudo stereo
(defun s-patchleft (s-in time)
  (if (< *sound-srate* 4800)
    (format nil "Error.\nTrack sample rate too low for Stereo Simulation.")
    (vector
      (sim
        (mult(pwl 0.0 1.0 time 0.0(diff 1.0 time) 0.0 1.0 1.0 1.0)(aref s-in 0)) ;fade out left channel
        (mult(pwl time 1.0(diff 1.0 time) 1.0 1.0)(Lsplit(aref s-in 1)))) ;fade in spacialized left channel from right channel
      (sim
        (mult(pwl 0.0 1.0 time 0.0(diff 1.0 time) 0.0 1.0 1.0 1.0)(aref s-in 1)) ;fade out original right channel
        (mult(pwl time 1.0(diff 1.0 time) 1.0 1.0)(Rsplit(aref s-in 1))))))) ;fade in spacialized right channel 

;; patch Right channel - pseudo stereo
(defun s-patchright (s-in time)
  (if (< *sound-srate* 4800)
    (format nil "Error.\nTrack sample rate too low for Stereo Simulation.")
    (vector
      (sim
        (mult(pwl 0.0 1.0 time 0.0(diff 1.0 time) 0.0 1.0 1.0 1.0)(aref s-in 0)) ;fade out original left channel
        (mult(pwl time 1.0(diff 1.0 time) 1.0 1.0)(Lsplit(aref s-in 0)))) ;fade in spacialized left channel
      (sim	
        (mult(pwl 0.0 1.0 time 0.0(diff 1.0 time) 0.0 1.0 1.0 1.0)(aref s-in 1)) ;fade out right channel
        (mult(pwl time 1.0(diff 1.0 time) 1.0 1.0)(Rsplit(aref s-in 0))))))) ;fade in spacialized right channel from left channel

;; Spacialize  Functions
;; create new Left channel
(defun Lsplit (leftch)
  (let((f1 (lp leftch 300)) ;Common Sub below 300
        (f2 (feedback-delay(lp(hp leftch 300)600) 0.2 0)) ;Low on LEFT 300-600
        (f3 (lp(hp leftch 600)1200)) ;Common MID - 600-1200
        (f4 (feedback-delay(lp(hp leftch 1200)2400) 0.08 0)) ;High Mid on LEFT 1200-2400
        (f5 (hp  leftch 2400))) ;Common Presence
    (sim f1 f2 f3 f4 f5))) ;mix sounds
;; create new Right channel
(defun Rsplit (rightch)
  (let((f1 (lp rightch 300)) ;Common Sub below 300
        (f2 (feedback-delay(lp(hp rightch 300)600) 0.14 0)) ;Low Mid on RIGHT 300-600 Hz
        (f3 (lp(hp rightch 600)1200)) ;Common MID - 600-1200
        (f4 (feedback-delay(lp(hp rightch 1200)2400) 0.06 0)) ;Treble on RIGHT 1200-2400
        (f5 (hp rightch 2400))) ;Common Presence
    (sim f1 f2 f3 f4 f5))) ;mix sounds


(control-srate-abs *sound-srate* ;calculate envelopes at audio sample rate to avoid click at end
  (if (arrayp s) ;test for stereo
    (case mode
      (0 (patchleft s fade)) ;patch left
      (1 (patchright s fade)) ;patch right
      (2 (s-patchleft s fade)) ;patch left with simulated stereo
      (3 (s-patchright s fade)) ;patch right with simulated stereo
      (T (format nil "Error.\nInvalid Selection.")))
    (format nil "Error.\n2 channel (stereo) track required.")))
