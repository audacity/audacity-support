# Normalize

Use the Normalize effect to:

* set the peak [amplitude](https://manual.audacityteam.org/man/glossary.html#amplitude) of a single track (or selection)
* make multiple tracks (or a selection within multiple tracks) have the same peak amplitude
* equalize the balance of left and right channels of stereo tracks.
* remove any [DC offset](https://manual.audacityteam.org/man/dc_offset.html) from the tracks.

All selected tracks (or selections) are amplified to the same level, they are _not_ amplified by the same amount as is the case with [Amplify](https://manual.audacityteam.org/man/amplify.html).

<table data-header-hidden><thead><tr><th align="center" valign="top"></th><th valign="top"></th></tr></thead><tbody><tr><td align="center" valign="top"><img src="https://manual.audacityteam.org/m/images/b/ba/warningicon.png" alt="Advice"></td><td valign="top"><p>Note carefully that when you apply an effect to a <a href="https://manual.audacityteam.org/man/audacity_tracks_and_clips.html#speed">time-stretched clip</a> the changed speed of the clip will be automatically <a href="https://manual.audacityteam.org/man/edit_menu_clip_boundaries.html#render">rendered</a>.</p><ul><li>If you apply an effect to a selection within a time-stretched clip then Audacity will <a href="https://manual.audacityteam.org/man/audacity_tracks_and_clips.html#split">split the original clip</a> so that the selection can be rendered as part of applying the effect.</li></ul></td></tr></tbody></table>

Accessed by: Effect > Volume and Compression > Normalize![Normalize 3-5-0.png](https://manual.audacityteam.org/m/images/a/a7/normalize_3_5_0.png)

<br>

### Remove DC offset

When this box is checked (default setting is "on") Normalize attempts to remove any DC offset in the selection by centering the [waveform](https://manual.audacityteam.org/man/audacity_waveform.html) on the 0.0 amplitude level. Technically, it does this by finding the average of all the sample values in the selection, then subtracting that average value from all the samples.

Removing any DC offset (and preventing it occurring in your hardware in the first place) is important. DC offset can cause clicks or distortion and limits the [_headroom_](https://manual.audacityteam.org/man/glossary.html#headroom) available for normalization, thus restricting the loudness that can be achieved. See our the [DC offset](https://manual.audacityteam.org/man/dc_offset.html) page for more help.

If you are sure your tracks have no offset, unchecking this option will speed up Normalize to some extent.

<table data-header-hidden><thead><tr><th align="center" valign="top"></th><th valign="top"></th></tr></thead><tbody><tr><td align="center" valign="top"><img src="https://manual.audacityteam.org/m/images/d/d7/bulbicon.png" alt="Tip"></td><td valign="top"><p>Newer Windows PCs may have a DC offset cancellation feature when recording from the built-in sound inputs. To check or enable:</p><ol><li>By the system clock, right-click over the Speaker icon select Sounds then the Recording tab, and then click on the USB device in the list and click Properties. Click the Advanced tab set your required bit rate and sample rate from the Default Format dropdown (normally "2 channel 16-bit 44,100 Hz").</li><li>Right-click over empty space, show disabled and disconnected devices, then right-click over each device and enable it</li><li>Right-click or select each device, choose "Properties" then look in the "Enhancements" tab</li><li>If there is no "Enhancements" tab, look in the sound device's own control panel in "Hardware and Sound".</li></ol><p>For a more detailed walk-through of the above steps for Windows <em>(or if that does not work for your version of Windows)</em>, see <a href="https://manual.audacityteam.org/man/windows_accessing_the_windows_sound_controls.html">Windows: accessing the Windows Sound controls</a>.</p></td></tr></tbody></table>

<br>

### Normalize Maximum Amplitude to

Enter the value for the maximum amplitude you would like the processed selection to have. The initial default setting is -1 dB, but you can change this. Your choice of settings will be remembered for next use of Normalize any time you change it.

A level of -1 dB is just below the maximum amplitude (0 dB) possible without [_clipping_](https://manual.audacityteam.org/man/glossary.html#clipping), but gives a little headroom for effects and distortion-free playback on all equipment. Enter a more negative value (for example, -3 dB) to normalize to lower amplitudes.

Entering a positive value is disallowed and causes the "Apply" and "Preview" buttons to be disabled. Use Effect > [Amplify](https://manual.audacityteam.org/man/amplify.html) if you need to increase amplitude above the 0 dB clipping level.

<br>

### Normalize stereo channels independently

When this box is unchecked (the default), Normalize will work on the channels of a stereo track as a pair and change the level of both channels by the same amount. Use this if your audio is already correctly balanced as this mode will preserve its original stereo balance.

When this box is checked, Normalize will adjust the amplitude separately for the left and right channels of a stereo track. This is useful for correcting stereo recordings of LPs and cassettes which may be unbalanced, as long as significant [clicks are removed](https://manual.audacityteam.org/man/click_removal.html) first.

<br>

<table data-header-hidden><thead><tr><th align="center" valign="top"></th><th valign="top"></th></tr></thead><tbody><tr><td align="center" valign="top"><img src="https://manual.audacityteam.org/m/images/d/d7/bulbicon.png" alt="Tip"></td><td valign="top"><h4>Tips</h4><p><strong>Workflow order</strong></p><ul><li>Immediately after recording capture (or import) of your audio this effect should be used <em>only</em> to remove any DC offset that may be present with <em>no</em> amplitude adjustment applied at this stage.</li><li>Adjusting the audio's maximum amplitude with this effect is normally best performed as a final editing step prior to export of the production audio.</li></ul><p><strong>Normalizing multiple audio tracks</strong></p><p>If you select multiple tracks and apply the Normalize effect, then all audio tracks will be independently normalized to the same peak level.</p><p>For example, if you set "Normalize Maximum Amplitude to:" 0.0 dB, every selected audio track will be normalized to 0.0 dB, irrespective of its original level. Whatever peak volume differences there were between the tracks will be removed.</p><p><strong>Difference from the</strong> <a href="https://manual.audacityteam.org/man/amplify.html"><strong>Amplify</strong></a> <strong>effect</strong></p><p>With Amplify, if you select multiple tracks and apply the effect, then all audio tracks will be amplified by the same amount thus preserving the balance between the tracks.</p><p>Normalize offers the option to remove DC offset, Amplify does not offer that option. Normalize does not allow clipping above 0 dB, but Amplify does.</p><p>For a more thorough discussion of differences, see <a href="https://manual.audacityteam.org/man/amplify_and_normalize.html">Amplify and Normalize</a>.</p></td></tr></tbody></table>
