;nyquist plug-in
;version 1
;type process
;categories "http://lv2plug.in/ns/lv2core#SpectralPlugin"
;name "Bass to Center..."
;action "Mixing bass to center..."
;info " By Jvo Studer <jvo@gmx.ch>. Released under GPL v2.\n\n Frequency-selective filter to crossfeed (mix) bass frequencies to center (mono).\n Works only with stereo tracks."

;control eeqfc "Crossover Frequency" int "Hz" 150 10 500
;control level "Bass Feed Proportion" int "%" 95 20 100
;control gcomp "Bass Boost" real "dB" 0.5 0 6

;; basstocenter.ny by Jvo Studer, V1.1 March 2011
;; Released under terms of the GNU General Public License version 2
;; http://www.gnu.org/licenses/gpl-2.0.html
;; Simulates the "Elliptic EQ" filter found on vinyl mastering
;; consoles by means of a first order highpass filter in the
;; side-channel (L-R difference).

(setq eeqfc (max (min eeqfc (/ *sound-srate* 2.0)) 1))

(setf factl (* level -0.005))
(setf factr (* level  0.005))
(setf fcomp (* eeqfc  0.74))

;; elliptic EQ
(defun eefilt (sig eefc)
  (lp (diff (aref sig 0) (aref sig 1)) eefc))

;; bass shelf EQ
(defun eq-low (sig fl gain &optional (slope 1.0))
  (multichan-expand #'eq-lowshelf sig fl gain slope))

(if (arrayp s)
  (eq-low (vector
    (sum (aref s 0) (prod factl (eefilt s eeqfc)))
    (sum (aref s 1) (prod factr (eefilt s eeqfc)))) fcomp gcomp 0.5)
  (format nil "Plug-In Error:\nSelected tracks must be stereo."))
