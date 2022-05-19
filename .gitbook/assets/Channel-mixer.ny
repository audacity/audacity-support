;nyquist plug-in
;version 3
;type process
;categories "http://lv2plug.in/ns/lv2core/#MixerPlugin"
;name "Channel Mixer..."
;info "by Steve Daulton (http://easyspacepro.com). Released under GPL v2.\n\nSelect 'Use Custom' then set the slider values, or select a preset  (slider values are then ignored).\nChoose 'Debug' to see the values that were applied. \n\n"
;action "Mixing..."
;preview "enabled"
;author "Steve Daulton"
;copyright "Released under terms of the GNU General Public License version 2" 

;; channel-mixer.ny by Steve Daulton, June 2010
;; Released under terms of the GNU General Public License version 2
;; http://www.gnu.org/copyleft/gpl.html

;; Updated 28th September 2010.
;; Updated 8th March 2011.
;; Preview and Mid-Side Decoder added Dec 2014.

;control preset "Presets" choice "Use Custom,Mono (Average),Mono (Both Left),Mono (Both Right),Extra Narrow,Narrow Stereo,Wide Stereo,Extra Wide,Centre to Left,Centre to Right,Swap Left/Right,Vocal Remover (L/R invert),Vocal Remover (mono),Invert Left,Invert Right,Mid-Side Decode" 0
;control left-mix-L "<-- LEFT CHANNEL OUTPUT --> \nfrom original Left channel (%)" real "" 0 -100 100
;control left-mix-R "from original Right channel (%)" real "" 0 -100 100
;control right-mix-L "<-- RIGHT CHANNEL OUTPUT -->\nfrom original Left channel (%)" real "" 0 -100 100
;control right-mix-R "from original Right channel (%)" real "" 0 -100 100

;; Create list of values from selected preset or from the slider values
(setq channels
	(case preset
	  (1 (list 50 50 50 50)) ; Average
	  (2 (list 100 0 100 0)) ; Both Left
	  (3 (list 0 100 0 100)) ; Both Right
    (4 (list 70 30 30 70)) ; Extra Narrow
    (5 (list 85 15 15 85)) ; Narrow Stereo
	  (6 (list 100 -30 -30 100)) ; Wide Stereo
	  (7 (list 100 -60 -60 100)) ; Extra Wide
	  (8 (list 50 50 -50 50)) ; Centre to Left
	  (9 (list 50 -50 50 50)) ; Centre to Right
	  (10 (list 0 100 100 0)) ; Swap Left/Right
	  (11 (list 100 -100 -100 100)) ; Vocal Remover L/R invert
	  (12 (list 100 -100 100 -100)) ; Vocal Remover mono
	  (13 (list -100 0 0 100)) ; Invert Left
	  (14 (list 100 0 0 -100)) ; Invert Right
    (15 (list 50 50 50 -50)) ; Mid-Side Decode
	  (T (list left-mix-L left-mix-R right-mix-L right-mix-R))))

; Print settings to debug window	  
(format T "New Left Channel:~%Left mix = ~a %~%Right mix = ~a %~%
New Right Channel~%Left mix = ~a %~%Right mix = ~a %~%\n"
(nth 0 channels)(nth 1 channels)(nth 2 channels)(nth 3 channels))

; convert percent to +/- 1
(setf channels (mapcar #'(lambda (num) (/ num 100.0)) channels))

; mix and otput as vector
(if (arrayp s) ; check for stereo track
	(vector
		(sum
			(mult (aref s 0)(nth 0 channels))
			(mult (aref s 1)(nth 1 channels)))
		(sum
			(mult (aref s 0)(nth 2 channels))
			(mult (aref s 1)(nth 3 channels))))
; or error if not stereo
	(format NIL "Error\nChannel Mixer can only be used on stereo tracks."))
