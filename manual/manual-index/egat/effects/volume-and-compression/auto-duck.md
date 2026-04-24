# Auto Duck

### Preparation

1. [Select](https://manual.audacityteam.org/man/audacity_selection.html) the track(s) or region(s) whose volume you want to modify (for example, a background music track).
2. Deselect the track that is to act as the control track (for example, a spoken commentary). Note that the first unselected track underneath the selected track(s) acts as the control track.
3. Place the tracks so that at least one of the selected tracks to be modified is above the unselected control track. Any other tracks below the unselected control track will also be modified if they are selected. You can use the [Audio Track Dropdown Menu](https://manual.audacityteam.org/man/audio_track_dropdown_menu.html) to move tracks up or down if needed.
   * The control track should be properly synchronized with the tracks to be "ducked"
4. Choose "Auto Duck" from the [Effect Menu](https://manual.audacityteam.org/man/effect_menu.html).

Auto Duck analyzes the control track first of all, then applies the effect to the selected track(s). This second stage takes longer to complete than the first, so the estimated time remaining in the progress bar may be an underestimate until the later stages of processing.

### Graph and Parameters

All the effect parameters can be set by inputting values in the boxes. The graph above the input boxes is a convenient visual representation of the changes made to the volume of the ducked track when Auto Duck takes effect. If preferred, you can modify the Duck amount and Fade Down and Fade Up lengths by dragging the "control points" (the small white circles) on the graph. Simply hover over a control point with the mouse and drag in the direction indicated by the cursor arrows.

* Duck Amount: The amount (default: -12 [_dB_](https://manual.audacityteam.org/man/glossary.html#decibel)) of volume reduction in the selected track when a signal above the threshold level is detected
* Maximum Pause: Avoids over-rapid volume changes by setting a length of time following the ramp down that must be exceeded before the volume is ramped up again. The default value is 1 second, but irrespective of the setting, volume will not ramp up unless the pause is at least as long as the fade down length plus the fade up length.
* Fade Down Lengths: The length of time over which the selected tracks fade down to the ducked volume (default: 0.5 seconds).
* Fade Up Lengths: The length of time over which the selected tracks fade up from the ducked volume (default: 0.5 seconds)

The "outer" and "inner" fade lengths both adjust the perceived speed of the fade. In effect, the inner length controls the length of time the ducked track is attenuated by the full Duck amount. If you play with the fade lengths you will be able to see this in the graph.

* Threshold: The level (0 to -100 dB [RMS](https://manual.audacityteam.org/man/glossary.html#rms). Default: -30 dB RMS) used for detecting a signal in the control track.
