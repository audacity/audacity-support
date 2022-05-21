;nyquist plug-in
;version 1
;type process
;name "Tempo Change..."
;action "Changing tempo..."
;info "Tempo Change by David R. Sky"

;control change "Tempo change" real "factor" 0.50 0.10 8.00
;control md "Multiply or divide" int "0=multiply 1=divide" 0 0 1

(cond ((= md 0) (setf change (/ 1.0 change))
(= md 1) (setf change change)))

(force-srate 44100 (stretch-abs change (sound s)))

