;nyquist plug-in
;version 1
;type process
;name "Center Pan Remover..."
;action "Removing center-panned audio..."
;info "Center Pan Remover by David R. Sky\nReleased under terms of the GNU Public license"

;control bc "Invert band or channel" int "0=band 1=channel" 1 0 1
;control above "Remove frequencies above..." int "hz" 500 20 20000
;control below "Remove frequencies below..." int "hz" 2000 20 20000

; Center pan Remover by David R. Sky November 12, 2004
; Released under terms of the GNU Public License
; http://www.opensource.org/licenses/gpl-license.php
; Select either band of frequencies to remove
; (define frequency range),
; or invert one channel
; result is still stereo but sounds mono
; (both channels have been panned to center)

(defun butterfly (sound width) 
  (vector 
    (sum (mult (aref sound 0) (sum width 1) 0.5)
         (mult (aref sound 1) (sum width -1) -0.5))
    (sum (mult (aref sound 1) (sum width 1) 0.5) 
         (mult (aref sound 0) (sum width -1) -0.5)))) 

(defun invertband (s above below)
  (vector
    (aref s 0)
    (sum (mult -1 (highpass2 (lowpass2 (aref s 1) below) above)))
         (highpass2 (lowpass2 (aref s 1) above) below)))

(defun invertchan (s)
  (vector (aref s 0)
          (mult -1 (aref s 1))))


(cond
  ((= bc 0) ; invert band of frequencies
    (butterfly (invertband s above below) 0))
  ((= bc 1) ; invert one channel
    (butterfly (invertchan s) 0)))
