;nyquist plug-in
;version 3
;type process
;name "Chebyshev Type I Filter"
;action "Filtering..."
;info "by Kai Fisher.\nReleased under GPL v2.\n"

;; chebyl1.ny by Kai Fisher June 2012
;; Revised by Steve Daulton October 2013
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control fType "Filter Type" choice "Lowpass,Highpass" 0
;control order "Order" choice "2,4,6,8,10,12,14,16,18,20,22,24,26,28,30" 2
;control fc "Cut-off Frequency" real "Hz" 1000 1 48000
;control ripple "Ripple" real "dB" 0.05 0.0 3.0


;; cheby1 implements a nth order chebyshev (or butterworth) filter
;; where n is a multiple of 2 (eg, 2,4,6,8,10...) using cascaded biquads
;; s1     = sound to filter
;; n      = order of filter to implement (integer multiple of 2)
;; fType  = 0 for lowpass, 1 for highpass
;; fc     = cut-off frequency, Hz (-3dB point)
;; ripple = amount of ripple in passband, dB (0dB = butterworth filter)
;; ffc    = cut-off frequency as a fraction of sampling rate
(defun cheby1 (s1 n fType fc ripple)
  (let ((ffc (/ fc (snd-srate s1))))
    (dotimes (p (/ n 2) s1)
      (setq coeffs (cheby1Coeffs fType n ffc ripple (1+ p)))
      (setq a0 (nth 0 coeffs))
      (setq a1 (nth 1 coeffs))
      (setq a2 (nth 2 coeffs))
      (setq b0 (nth 3 coeffs))
      (setq b1 (nth 4 coeffs))
      (setq b2 (nth 5 coeffs))
      (setq s1 (biquad s1 b0 b1 b2 a0 a1 a2)))))


;; cheby1Coeffs calculates the biquad coefficients for part of a cascade
;; filter design. The order of the total filter is n (integer multiple of 2)
;; and the current pole pair to determine coefficients for is p
;;
;; This function follows the code in Table 20-5 of
;; 1997, Smith, S. "The Scientist and Engineer's Guide to Digital Signal Processing"
;; http://www.dspguide.com
;; Note: The naming convention in Smith (1997) of the a and b coefficients
;; is reversed compared to nyquist (ie "a" coefficients in Smith (1997)
;; correspond to the "b" coefficients in nyquist and visa versa)
;; The coefficients used in this code have been changed to be the same convention as nyquist.
;;
;; Inputs
;; fType    low pass = 0, highpass = 1
;; order        order of the filter (integer multiple of 2, eg 2, 4, 6...)
;; ffc      cut-off frequency as a factor of the sample rate
;; ripple   dB of allowed ripple in pass band
;; p        pole pair to evaluate (1 means poles 1 & 2, 2 means poles 3 & 4...)
;;
;; Variables
;; a0-2     a coefficients
;; b0-2     b coefficients
;; ga       gain due to a components
;; gb       gain due to b components
;; g        gain
;; ReP      real part of the pole location in z-plane
;; ImP      imaginary part of the pole location in z-plane
;; wfc      factored angular frequency (ie 0 to PI)
;; t        step size in integration of bilinear transform (trapezoidal rule)
;; t2       t squared
;; m2       square of the magnitude of the vector to the pole
;; d        temporary variable
;;
;; Chebyshev elliptical warping variables
;; es       temporary variable related to the eccentricity of the ellipse for cheby1 filter
;; vx       temporary variable for eliptical warping of unit circle for cheby1 filter
;; kx       temporary variable for eliptical warping of unit circle for cheby1 filter
(defun cheby1Coeffs (fType n ffc ripple p)
  ;convert ripple from dB to fraction
  (let* ((ripple (- 1.0 (expt 10.0 (/ (- ripple) 20.0))))
         ;; Calculate pole location on unit circle in z-plane
         (poles (CalculatePoles n ripple p))
         (ReP (first poles))
         (ImP (second poles))
        ;; s-domain to z-domain conversion
         (t (* 2.0 (tan 0.5)))
         (t2 (* t t))
         (wfc (* 2.0 PI ffc))
         (m2 (+ (* ReP ReP) (* ImP ImP)))
         (d (+ 4.0 (- (* 4.0 ReP t)) (* m2 t2)))
        ;; Lowpass prototype coefficients
         (x0 (/ t2 d))
         (x1 (/ (* 2.0 t2) d))
         (x2 (/ t2 d))
         (y1 (/ (- 8.0 (* 2.0 m2 t2)) d))
         (y2 (/ (- -4.0 (* 4.0 ReP t) (* m2 t2)) d))
        ;; Transform Lp prototype filter coefficients to actual LP or to HP
         (k (if (= 1 fType)
                (/ (- (cos (+ 0.5 (/ wfc 2.0)))) (cos (- (/ wfc 2.0) 0.5)))
                (/ (sin (- 0.5 (/ wfc 2.0))) (sin (+ (/ wfc 2.0) 0.5)))))
         (k2 (* k k))
         (d (+ 1.0 (* y1 k) (- (* y2 k2))))
        ;derive coefficients
         (a0 1.0)
         (a1 (/ (+ (* 2.0 k) y1 (* y1 k2) (- (* 2.0 y2 k))) d))
         (a2 (/ (+ (- k2) (- (* y1 k)) y2) d))
         (b0 (/ (+ x0 (- (* x1 k)) (* x2 k2)) d))
         (b1 (/ (+ (- (* 2.0 x0 k)) x1 (* x1 k2) (- (* 2.0 x2 k))) d))
         (b2 (/ (+ (* x0 k2) (- (* x1 k)) x2) d))
        ;Determine gain of filter
         (ga (+ a0 (- a1) (- a2)))
         (gb (+ b0    b1     b2 ))
         (g (/ ga gb)))
    ;Change sign of a1 and b1 if highpass
    (when (= fType 1) (setq a1 (- a1)))
    (when (= fType 1) (setq b1 (- b1)))
    ;Apply gain so that passband is unity.
    (setq b0 (* b0 g))
    (setq b1 (* b1 g))
    (setq b2 (* b2 g))
     ;Output coefficients
    (list a0 a1 a2 b0 b1 b2)))


;; Calculate pole location on unit circle in z-plane
;; n is the filter order.;; r is the ripple value
;; p is the pole pair
(defun CalculatePoles (n r p)
  (setq ReP (- (cos (+ (/ PI (* n 2.0)) (* (- p 1.0) (/ PI n))))))
  (setq ImP    (sin (+ (/ PI (* n 2.0)) (* (- p 1.0) (/ PI n)))))
  ;; Warp unit circle to ellipse (for chebyshev filter) (ie if ripple > 0)
  (when (> ripple 0.0)
    (setq es (sqrt (- (expt (/ 1.0 (- 1.0 r)) 2.0) 1.0)))
    (setq vx (/ (log (+ (/ 1.0 es) (sqrt (+ (expt (/ 1.0 es) 2.0) 1.0)))) n))
    (setq kx (/ (log (+ (/ 1.0 es) (sqrt (- (expt (/ 1.0 es) 2.0) 1.0)))) n))
    (setq kx (/ (+ (exp kx) (exp (- kx))) 2.0))     (setq ReP (/ (* ReP (- (exp vx) (exp (- vx)))) (* 2.0 kx)))
    (setq ImP (/ (* ImP (+ (exp vx) (exp (- vx)))) (* 2.0 kx))))
  (list ReP ImP))


;; Sanitize user input
(setq fc (min (max fc 0.01) (/ *sound-srate* 2)))
(setq ripple (min (max ripple 0) 3.0))

(setq order (* 2 (+ 1 order)))
(multichan-expand #'cheby1 s order fType fc ripple)