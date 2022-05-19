;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#DynamicsPlugin"
;name "Text Envelope..."
;action "Applying Envelope..."
;info "by Steve Daulton (www.easyspacepro.com). Released under GPL v2.\n\nDecimal values must use a dot as the decimal separator.\nHelp screens are available in the 'Select Function' control.\n"

;; TextEnvelope.ny by Steve Daulton. July 2011.
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;; version 1.0 July 2011
;; Requires Audacity 1.3.13 or later.

;control view "Select function" choice "Apply Effect,View Quick Help,View Examples,View Tips" 0
;control t-units "Time Units" choice "milliseconds,seconds,minutes,%" 1
;control amp-units "Amplification Units" choice "dB,%" 0
;control Linit "Initial Amplification" string "" ""  
;control Lfin "Final Amplification" string "" ""  
;control text "Intermediate Control Points as pairs of\ntime and amplification e.g. 1  0 : 2  -2.5" string ""  

;;remove the semicolon from the beginning of the line below
;;to allow commas to be used as the decimal separator.
;(setq use-comma T) 


;; HELP FILES
(setq help (format nil
"HELP (overview):
Text Envelope simulates the behavior of the
Envelope tool using only text input.\n
'Select Function' allows applying the effect or
viewing a help menu.\n
Time units may be milliseconds, seconds, minutes
or a % of the selection (default = seconds).\n
Amplification units may be dB or a % of the
selection (default = dB).\n
Initial and final amplification levels of the
selection have their own controls (default = 0),
allowing easy fading from one level to another.
If no value is set they are ignored.\n
Intermediate Control Points are entered as
Time/Value pairs.
Example: 2.5,-6 : 5.0,-12 : 10,-48\n
Values should be separated by non-numeric
characters such as space, comma, colon or bracket.
Non-numeric text is stripped from the input."))

(setq examples (format nil
"EXAMPLES:
For a linear fade out, set:
Initial Amplification = 100 (%)
Final Amplification = 0 (%)
and no Intermediate Control Points.\n
For a smooth fade to half volume, try setting:
Time Units = %
Initial Amplification = 100 (%)
Final Amplification = 50 (%)
17 97 : 33 88 : 50 75 : 68 63 : 83 53\n
or for the same effect using a dB scale:
Initial Amplification = 0 (dB)
Final Amplification = -6 (dB)
Intermediate Control Points:
17 -0.3 : 33 -1.1 : 50 -2.5 : 68 -4 : 83 -5.4\n
To swell the volume smoothly from the original
level to double the original amplitude: 
Time and Amplification units = %
Initial Amplification = 100
Final Amplification = 200
Intermediate Control Points:
20 110 : 40 130 : 60 170 : 80 190"))

(setq tips (format nil
"TIPS:
100% amplification amplifies by 0 dB.
50% amplification amplifies by -6 dB.
25% amplification amplifies by -12 dB.
0% amplification results in silence.\n
Any non-number can separate pairs of values.
Example: \"3 seconds, -6dB\" or just \"3 -6\"\n
Positive times are from the start of the selection.
Negative times are from the end of the selection.
Example; to set 50% amplification 1 second after 
the start and 50% amplification 1 second before 
the end of the selection: 
1 50 : -1 50\n
Time/value pairs are always applied in time order 
so an extra time value pair can simply be added
to the end of the Control Point list.
'1 50 : 2 20' has the same effect as '2 20 : 1 50'.\n
It is often easiest to first apply the effect with 
only the initial and final settings. Use CTRL+Z to 
undo and reapply the effect with additional 
Intermediate Control Point pairs as required.")) 

; Convert a string into a list
(defun string-to-list (string)
  (read (make-string-input-stream (format nil "(~a)" string))))
  
; Replace non-numbers with spaces
(defun replace-non-numbers (string)
  (string-right-trim "."
    (string-trim " " 
      (do ((i 0 (setq i (1+ i)))(newtext ""))
      ((= i (length string)) newtext)
        (setf newtext
          (if (and (boundp 'use-comma)(char= (char string i)#\,))
            (strcat newtext ".")
            ; characters to remove
            (if (or 
                (char> (char string i) #\9)
                (char< (char string i) #\-)
                (char= (char string i)#\/)
                (and 
                  (< i (1- (length string))) ; not the last character
                  (or (char= (char string i) #\.)(char= (char string i) #\-)) ; dot or hyphen
                  (or (char>(char string (1+ i)) #\9)(char<(char string (1+ i)) #\0)))) ; next char not a number
              (strcat newtext " ") ; replace with a space
              ; ELSE
                ; add a space before hyphen if there isn't one
                (if (and (> i 0)(char= (char string i) #\-)(char/= (char string (1- i)) #\space))
                  (strcat newtext " " (string (char string i)))
                  (strcat newtext (string (char string i)))))))))))

              
; Check control point are number pairs and return list
(defun check-cp-string (text)
  (let* ((cp-string (replace-non-numbers text)) ; control point string
          (cp-list (string-to-list cp-string)); list of control points
          (cp-error "")) ; local error message for control point string
    (if (oddp (length cp-list))
      (setq cp-error "There is an odd number of control point values.\n"))
    ; check for non-numbers
    (do ((i 0 (setq i (1+ i)))
          found)
      ((or (= i (length cp-list))found ))
      (if (not (numberp (nth i cp-list)))
        (progn
          (setq cp-error (strcat cp-error (format nil "~a is not a readable number.~%" (nth i cp-list))))
          (setq found T))))
    ; if error(s) show input text and how it was read
    (if (> (length cp-error)0)
      (progn
        (setq err-msg (strcat err-msg 
          (format nil 
  "Control Points must be pairs of values.~%You entered the following Control Points:~%~a~%which was read as:~%~a~%" text cp-string)
          cp-error))
          (setq cp-list ())))
    cp-list))

; Split control point list into timelist and amplist
(defun split-lists (inlist)
  (do ((i (1- (length inlist))))
    ((<= i 0))
      (setf amplist (cons (nth i inlist)amplist))
      (setf timelist (cons (nth (1- i) inlist) timelist))
      (setq i (- i 2))))

      
; Convert amplify values to linear
(defun linearamp (var) ; var=input to check, unit is dB or %
  (abs ; return positive value
    (if (= amp-units 0) ; dB
      (db-to-linear var) ; convert dB to linear
      (progn
        (if (and(< var 0)(= (length err-msg)0))
          (setq err-msg (strcat err-msg (format nil
"~a (%) is not a valid amplification amount.~%Amplification must be greater than 0%.~%" var))))
        (/ var 100.0))))) ; convert % to linear
        
; Time conversion functions
   (defun ms-to-lin (var)
    (if (< var 0)
      (+ 1.0(/ var(get-duration 1000.0)))
      (/ var(get-duration 1000.0))))
  (defun s-to-lin (var)
    (if (< var 0)
      (+ 1.0(/ var (get-duration 1)))
      (/ var (get-duration 1))))
  (defun m-to-lin (var)
    (if (< var 0)
      (+ 1.0(/ var (get-duration (/ 60.0))))
      (/ var (get-duration (/ 60.0)))))
  (defun pc-to-lin (var)
    (if (< var 0)
      (+ 1.0(/ var 100.0))
      (/ var 100.0)))

; Combine 2 lists back into one list
(defun interlace (tlist alist &aux newlist)
  (setf newlist 
    (do ((i (1- (length tlist))(setq i (1- i))))
    ((< i 0) newlist)
    (setf newlist (cons (nth i alist) newlist)) ; add amp
    (setf newlist (cons (nth i tlist) newlist)) ; add time
    )))

; sort lists
(defun sortlists (tlist alist &aux (n (1- (length tlist)))(loopnum 0) temp)
(dotimes (i n)
  (do ((i loopnum (setq i (1+ i)))) ; initialise counter i to the loop number and increment on each pass
    ((>= i n)) ; repeat do loop till i=n
    (if (< (nth(1+ i)tlist)(nth loopnum tlist)) ; if nth+1 value is less than the nth-loopnum
     (progn 
          (setq temp (nth loopnum tlist)) ; set temp to nth
      (setf (nth loopnum tlist)(nth(1+ i)tlist)) ; set nth to value of nth+1
      (setf (nth(1+ i)tlist) temp) ; set nth+1 to temp	
          ;same for alist
          (setq temp (nth loopnum alist))
      (setf (nth loopnum alist)(nth(1+ i)alist))
      (setf (nth(1+ i)alist) temp)			
      ))) ; end of inner loop
  (setq loopnum (1+ loopnum))) ; end of sort routine
  (interlace tlist alist))

;; Main Program
(case view
	(1 (print help))
	(2 (print examples))
	(3 (print tips))
   (T
    ; Initialise variables
    (setq err-msg "")
    (setf timelist ()) ; list of times
    (setf amplist ()) ; list of amplitudes
    
    ; Check initial and final times
    (setq Linit (replace-non-numbers Linit))
    (if (equal Linit ""); set initial point to 'no amplification'
    	(if (= amp-units 0)
    		(setf Linit "0")
    		(setf Linit "100")))
    (setq Linit (first (string-to-list Linit)))
    (if (not (numberp Linit))(setq err-msg (strcat err-msg (format nil "Initial Amplification read as: ~a.~%" Linit))))
    (setq Lfin (replace-non-numbers Lfin))
    (if (equal Lfin ""); set final point to 'no amplification'
    	(if (= amp-units 0)
    		(setq Lfin "0")
    		(setq Lfin "100")))
    (setq Lfin (first (string-to-list Lfin)))
    (if (not (numberp Lfin))(setq err-msg (strcat err-msg (format nil "Final Amplification read as: ~a.~%" Lfin))))

    ; Check control points and make list
    (setq cplist (check-cp-string text))
    
    (if (> (length err-msg)0)
      (format nil "Error.~%~a" err-msg)
      (progn
        (split-lists cplist)
        (setf timelist
          (append 
          	(list 0); add inintial time
            (case t-units
              (0 (mapcar 'ms-to-lin timelist)) ; milliseconds
              (1 (mapcar 's-to-lin timelist)) ; seconds
              (2 (mapcar 'm-to-lin timelist)) ; minutes
              (3 (mapcar 'pc-to-lin timelist))))) ; percent
          (setf amplist 
          	(append 
		        	(list linit); add initial amplification
		        	amplist))
          ; Convert amplification to linear
          (setf amplist (mapcar 'linearamp amplist)); can generate error messages
          (setq lfin (linearamp lfin)); final amplification on linear scale
       ; if no errors, apply envelope
      (if (> (length err-msg)0)
        (format nil "Error.~%~a" err-msg)
        (progn
        	(setf cplist (sortlists timelist amplist))
        	(if (< (nth (-(length cplist)2)cplist) 1); if end point needed
        		(setf cplist (append cplist (list 1 lfin)))); add it
		      (control-srate-abs *sound-srate*
		      	(mult s (pwl-list cplist)))))
    ))))
