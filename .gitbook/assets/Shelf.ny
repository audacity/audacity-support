;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core#FilterPlugin"
;name "Shelf Filter..."
;action "Filtering..."
;info "by Steve Daulton (www.easyspacepro.com).\nReleased under GPL v2.\n\nThe low-shelf filter uses the low frequency cut-off only.\nThe high-shelf filter uses the high frequency cut-off only.\nThe mid-band filter uses both.\n\n"

;; shelf.ny by Steve Daulton March 2008. Revised May 2012.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html .

;control filter-type "Filter type" choice "low-shelf,high-shelf,mid-band" 0  
;control lf "Low frequency cut-off" real "Hz" 800 1 10000
;control hf "High frequency cut-off" real "kHz" 2 0.1 20.0
;control gain "Filter gain" real "dB" 0.0 -30 30

;;;;;;;;;;;;; Replacement Functions ;;;;;;;;;
;; Fix for Audacity 2.0

(defun nyq:biquad (x b0 b1 b2 a0 a1 a2)
  (let ((a0r (/ 1.0 a0)))
    (snd-biquad x (* a0r b0) (* a0r b1) (* a0r b2) 
                             (* a0r a1) (* a0r a2) 0 0)))
;;;;;;;;;;; End of replacement functions ;;;;;;;;;;;;;;;

(setq err "Error.\n")       ; default error string

(defun err1 (f-type fval)   ; error string: Frequency too high.
  (setq units (if (equal f-type "Low") "Hz" "kHz"))
  (format nil "~a~%The track sample rate = ~a Hz.~%~a frequency cut-off = ~
    ~a ~a.~%~a frequency cut-off frequency must be~%less than half the ~
    track sample rate.~%"
    err *sound-srate* f-type fval units f-type))

(defun err2 (f-type)        ; error string: Frequency too low.
  (format nil "~a~%~a frequency cut-off must be greater than 0 Hz.~%"
    err f-type))

(defun lf-err ()            ; test lf
  (cond
    ((> lf (/ *sound-srate* 2))(setq err (err1 "Low" lf)))
    ((<= lf 0) (setq err (err2 "Low")))))

(defun hf-err ()            ; test hf
  (cond
    ((> hf (/ *sound-srate* 2000))(setq err (err1 "High" hf)))
    ((<= hf 0) (setq err (err2 "High")))))

(defun mb-err ()            ; test lf and hf
  (let ((a (lf-err))(b (hf-err)))
    (if (or a b) t nil)))

(defun err-check (type)     ; error check
  (if (= gain 0)            ; nothing to do
    (setq err (format nil "~a~%Filter gain set to zero.~%" err)))
  ;; check filter frequencies. True if error else nil
  (if (or (funcall type)(= gain 0)) t nil))

(defun mid-shelf (sig)
  "Combines high shelf and low shelf filters"
  (let ((hf (* hf 1000)) 
        (invg (- gain))
        (swap lf))
    (when (> lf hf)(setq lf hf)(setq hf swap))
    (scale (db-to-linear gain)
      (eq-highshelf 
        (eq-lowshelf sig lf invg)
        hf invg))))


(case filter-type
  (0  (if (err-check #'lf-err) err (eq-lowshelf s lf gain)))
  (1  (if (err-check #'hf-err) err (eq-highshelf s (* hf 1000) gain)))
  (T  (if (err-check #'mb-err) err (mid-shelf s))))