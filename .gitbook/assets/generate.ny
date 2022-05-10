;nyquist plug-in
;version 2
;type generate
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;name "Nyquist Generate Prompt..."
;action "Evaluating..."
;info "by Steve Daulton, Edgar Franke, Steven Jones and David R. Sky.\nReleased under GPL v2."

;; generate.ny, October 2010.
;; Idea by David R. Sky.
;; Original code by Steven Jones.
;; Multi-line update by Edgar Franke, November 2005.
;; Support for multiple expressions and display of  
;; input in debug window by Steve Daulton, October 2010.
;; Released under terms of the GNU General Public License version 2:	
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html . 

;; These controls do not have default values so must have two spaces at the end of the line.
;control code1 "Line 1" string ""  
;control code2 "Line 2" string ""  
;control code3 "Line 3" string ""  
;control code4 "Line 4" string ""  
;control code5 "Line 5" string ""  
;control code6 "Line 6" string ""  
;control code7 "Line 7" string ""  
;control code8 "Line 8" string ""  
;control code9 "Line 9" string ""  
;control code10 "Line 10" string ""  

(setf input-list (list code1 code2 code3 code4 code5 code6 code7 code8 code9 code10))
(setq input-string "")
(dotimes (i 10)
   (if (> (length (nth i input-list)) 0)
   (setq input-string (strcat input-string "\n" (nth i input-list)))))

;; embed string in code block
(setq nyquist-code (format NIL "(progn ~a )" input-string))

;; output string to debug window
(format T (strcat "Input Expression:~%" input-string "\n\nOutput:\n\n"))

;; evaluate string
(eval (read (make-string-input-stream nyquist-code)))