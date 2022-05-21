;nyquist plug-in
;version 1
;type process
;categories "http://lv2plug.in/ns/lv2core/#DelayPlugin"
;name "Insert Silence"
;info "by Steve Daulton (http://easyspacepro.com)."
;action "Processing..."
;author "Steve Daulton"
;copyright "Released under terms of the GNU General Public License version 2" 

;; insertsilence.ny by Steve Daulton, Dec 2014
;; Released under terms of the GNU General Public License version 2
;; http://www.gnu.org/copyleft/gpl.html

(defun insertsilence (sig)
  (sim(s-rest 0)
    (at 1 (cue sig))))

(multichan-expand #'insertsilence s)