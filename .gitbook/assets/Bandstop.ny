;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#FilterPlugin"
;name "Band-Stop Filter..." 
;action "Filtering..."
;info "By Steve Daulton (http://easyspacepro.com).\nReleased under GPL v2.\n\nFor a Help screen that can be copied into other documents,\nview the help using the Debug button.\n\n"

;; bandstop.ny by Steve Daulton. December 2009.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;; version 1.1 March 2011
;; version 1.2 May 2011: text to American English. Tested on Audacity 1.3.4
;; Requires Audacity 1.3.4 or later

;control freq "Center Frequency" real "[Hz]" 1000 100 10000
;control width "Stop-Band Width" real "[Octaves]" 1 0.25 4
;control help "View Help" choice "No,Yes" 0

(defun viewhelp ()
  (let ((help 
"BAND STOP FILTER HELP\n
Stops frequencies within the selected frequency band.\n
Set the 'Center Frequency' slider, or type in a value for
the center of the frequency band to block.\n
Set the 'Stop-Band Width' to determine how wide
the cut frequency band will be. Smaller numbers will
produce a narrower 'notch' and larger numbers will cut
a broader band of frequencies.\n
TECHNICAL DETAILS.\n
This filter uses steep high pass and low pass filters
to achieve the band stop effect. The filters iterate to
improve the band stop efficiency for narrow band width
and can thereby perform close to total blocking down to 
almost 1/4 octave.\n
For even more narrow notches you should use a notch filter.\n
Remember to deselect Help before using this effect."))
(format T help)(format nil help)))

(defun bandstop (s-in hz bandwidth)
  (let* ((itr (if (< bandwidth 2.0)(truncate (/ 2.0 bandwidth)) 1))
          (octv (/ bandwidth 2.0))
          (lpfreq (- hz (/ hz (power 2.0 (/ octv)))))
          (hpfreq (* hz (power 2.0 octv))))
    (dotimes (i itr s-in)
      (setf s-in
        (sim
          (lowpass8 (lowpass8 s-in lpfreq) lpfreq)
          (highpass8 (highpass8 s-in hpfreq) hpfreq))))))

(if (> (* freq (power 2.0 (/ width 2.0)))(/ *sound-srate* 2.0))
  (print "Error.\nFrequency or bandwidth too high.")
    (if (= help 1)
      (viewhelp)
      (multichan-expand #'bandstop s freq width)))
      
