# Limiter

Use the _Limiter_ effect to pass signals below a specified input level unaffected or gently reduced, while preventing the peaks of stronger signals from exceeding this threshold. Mastering engineers often use limiting combined with make-up gain to increase the perceived loudness of an audio recording during the audio mastering process.

<table data-header-hidden><thead><tr><th align="center" valign="top"></th><th valign="top"></th></tr></thead><tbody><tr><td align="center" valign="top"><img src="../../../../../.gitbook/assets/image (2).png" alt="" data-size="original"></td><td valign="top"><p>Note carefully that when you apply an effect to a <a href="https://manual.audacityteam.org/man/audacity_tracks_and_clips.html#speed">time-stretched clip</a> the changed speed of the clip will be automatically <a href="https://manual.audacityteam.org/man/edit_menu_clip_boundaries.html#render">rendered</a>.</p><ul><li>If you apply an effect to a selection within a time-stretched clip then Audacity will <a href="https://manual.audacityteam.org/man/audacity_tracks_and_clips.html#split">split the original clip</a> so that the selection can be rendered as part of applying the effect.</li></ul></td></tr></tbody></table>

Accessed by: Effect > Volume and Compression > Limiter![Limiter 3-6-0.png](https://manual.audacityteam.org/m/images/3/32/limiter_3_6_0.png)

<br>

### Affinities with the [Compressor](https://manual.audacityteam.org/man/compressor.html)

Audacity's compressor and limiter use the same processing technology. Albeit similar, the two effects are typically used for different mastering purposes. Compressors tend to come at an earlier mastering stage: they are softer and more often used for aesthetic purposes rather than merely for loudness maximization. Limiters are usually the last stage of mastering and useful to gain a last few more decibels of loudness without changing any other aspect of the mix.

This explains why some settings differ between the two. Also, this page may refer to other manual pages that were written with the compressor in mind but which still are very relevant to the limiter.

### Controls

#### Compression curve

* Threshold: The input level above which limiting is applied to the audio. Contrary to the [Compressor](https://manual.audacityteam.org/man/compressor.html), modifying the threshold does not modify the ceiling (make-up target remains unchanged). One can imagine the effect of changing threshold as moving the compression curve left-right.
* Make-up target: The maximal output level. If all time smoothing settings and knee width are zero, all input samples above the threshold are clipped to this value. One can imagine the effect of changing make-up gain as moving the compression curve up-down.
* Knee width: How "sharp" the threshold is. At a knee width of 0dB, the limiter immediately engages at full power once the threshold is hit. When the knee width is wider, some compression will get applied before the threshold, making the transition into a fully limited signal softer.

More information on the controls can be found in the [Compressor curve](https://manual.audacityteam.org/man/compresor_parameters_compression_curve.html) page.

#### Smoothing

* Lookahead: How much time the effect has to work with. If set to a higher number, the limiter will be able to "see" incoming spikes in volume and start softly transition into them. A higher lookahead increases latency of the effect though.
* Release How soon the limiter starts to release the volume level back to normal after the level drops below the threshold. A long time value will tend to lose quiet sounds that come after loud ones, but will avoid the volume being raised too much during short quiet sections like pauses in speech.

More information on the smoothing parameters can be found in the [Smoothing](https://manual.audacityteam.org/man/compressor_parameters_smoothing.html) page.

### Realtime use

Please refer to the corresponding section on the [Compressor](https://manual.audacityteam.org/man/compressor.html#realtime) page.

### Factory Presets

There are several Factory Presets for the Compressor shipped with Audacity, you can access these using the Presets & settings button.

This list explains some of those presets:

* Master Limiter will wonderfully and imperceptibly limit the signal level to -1 dB, while maximally preserving the dynamics and sound of the source.
* SFX Limiter will limit the signal level to -1 dB of sharp sounds while maintaining the dynamics and sound of the source
  * This preset works well together with the Great Impact and Climax Impulse presets in [Compressor](https://manual.audacityteam.org/man/compressor.html).
* VO Limiter is for dialogs, podcasts and everything else that has to do with voice.
