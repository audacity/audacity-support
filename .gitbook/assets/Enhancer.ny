;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#DistortionPlugin"
;name "Harmonic Enhancer..."
;action "Adding Harmonics..."
;info " By Jvo Studer <jvo@gmx.ch>. GPL v2.\n\n Adds high frequency harmonics to brighten up dull recordings."

;; enhancer.ny by Jvo Studer, March 2011
;; Version 1.0
;; Released under terms of the GNU General Public License version 2
;; http://www.gnu.org/licenses/gpl-2.0.html

;control freq "Enhancer Crossover Frequency" int "Hz" 3200 2000 4500
;control drive "Enhancer Drive" int "dB" 0 -10 10
;control mode "Harmonic Generator Mode" choice "Even order,Odd order" 0
;control th_ng "Enhancer Noise Gate Threshold" int "dB" -28 -40 -16
;control effmix "Enhancer Mix Level" int "dB" -10 -26 6
;control output "Output" choice "Mix (Normal),Effect Only,Effect Level" 0

(setq freq (max (min freq (/ *sound-srate* 4)) 20));; limit freq selection

(setf limit 0.20);; this is the max positive limiting value

(setf lim1 (* -1 limit))
(setf ratio1 (/ lim1))
(if (= mode 0)
    (setf lim2 (* lim1 -11))
    (setf lim2 (* lim1 -1.1)))
(setf ratio2 (/ lim2))

(setf fcomp (* freq 0.93)); crossover compensation eq
(setf gcomp (max 0 (/ (+ drive effmix 16) 5.2)))
(setf wcomp 0.81)

(setf fc_ng (* freq 0.125)); noise gate parameters
(setf trise 0.005)
(setf tfall 0.425)
(setf lookah (+ trise tfall)); must be (tf+tr) or higher for correct operation
(setf floor (db-to-linear -26))

; modified 1-pole highpass (due to gain loss at mid to high frequencies)
(defun hp1 (x fc)
  (if (< fc 493) (hp x fc)
      (if (< fc 2375)
          (scale-db (- (log fc) 6.2) (hp x fc))
          (scale-db (- (* (log fc) 2) 13.97) (hp x fc)))))

; sidechain filter function, 3rd order butterworth
(defun sidechain (sig gain fc)
  (highpass2 
    (hp1 
      (scale-db gain
        (eq-highshelf sig (/ *sound-srate* 3.1) -4 1.0))
      (* fc 1.07))
    (* fc 1.0) 1.06))

; the actual soft clipping limiter (similar to a diode limiter)
(defun enhance (sig)
  (let* ((top (mult ratio1 (s-max sig 0))); scaled positive peaks
          (bottom (sum (mult ratio2 (s-min sig 0))))); scaled neg peaks
    (sim
      (scale lim1 (sum (s-exp top) -1))
      (scale lim2 (sum (s-exp bottom) -1)))))

; enhancer noise gate, for stereo in apply in mono to preserve stereo image
(defun noisegate (sig thres fsig_hp)
  (if (arrayp s)
      (gate (hp (scale-db drive (sum (aref sig 0) (aref sig 1))) fsig_hp)
        lookah trise tfall floor (* (db-to-linear thres) 2))
      (gate (hp (scale-db drive s) fsig_hp)
        lookah trise tfall floor (db-to-linear thres))))

(case output
  (0  (eq-band 
        (sim s
          (scale-db (+ effmix 0.13)
            (hp1 (mult (multichan-expand #'enhance (sidechain s drive freq))
                       (noisegate s th_ng fc_ng))
              (/ freq 10))))
        fcomp gcomp wcomp))
  (1  (mult (multichan-expand #'enhance (sidechain s drive freq))
            (noisegate s th_ng fc_ng)))
  (2  (scale (/ 0.501 limit) ; 8dB gain at lim=0.2
        (mult (sidechain s drive freq)
              (noisegate s th_ng fc_ng)))))
