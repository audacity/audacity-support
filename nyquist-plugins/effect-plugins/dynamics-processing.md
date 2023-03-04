# Dynamics Processing

### Broadcast Limiter II

Gives you the possibility to overdrive an audio track without introducing ugly digital distortion noise.

{% file src="../../.gitbook/assets/RFT-Limiter-II.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Edgar-rft

Gives you the possibility to overdrive an audio track without introducing ugly digital distortion noise. The Limiter cuts all peaks above the given threshold, rounds the edges to reduce ugly distortion, while simultaneously amplifying the whole track to the maximum limit. This is a "soft clipping" effect.

Parameters:

1. **Threshold:** sets the 'cutting edge' in a linear volume number from 0.0 to 1.0

The minimum threshold is -90dB, so you can set the threshold slider to 0.0 and listen to 1-bit of a 16-bit recording if you want. The plugin has no memory limits, it can process audio tracks of several hours in length without problems.

</details>

### Broadcast Limiter III

Similar to Broadcast Limiter II with an added Exciter

{% file src="../../.gitbook/assets/RFT-Limiter-III.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Edgar-rft

Is in principle a similar "soft clipping" effect as [Broadcast Limiter II](dynamics-processing.md#broadcast-limiter-ii), but adds an Exciter to control or intensify the high-range distortion. This function is often desired by musicians to make e.g. electric guitars or drum sets sound more aggressive.

Parameters:

1. **Exciter:** controls the high-range distortion in linear numbers from 1 to 10
2. **Threshold:** sets the 'cutting edge' in a linear volume number from 0.0 to 1.0

The plugin has no memory limits, it can process audio tracks of several hours in length without problems.\


</details>

### Hyperexp

The Hyperexp effect is a type of compression.

{% file src="../../.gitbook/assets/hyperexp.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steven Jones.

The Hyperexp effect is a type of compression. High amplitude sections of approximately unity are relatively unchanged. Low amplitude sections are greatly amplified. The effect is a partial nullification of the amplitude envelope. There is one parameter, which is to choose to normalize or not, the default choice being "yes".

</details>

### Level Speech

This effect is designed to mitigate problems in speech recordings where there are very large variations in the loudness / amplitude of the recorded voice or voices.

{% file src="../../.gitbook/assets/LevelSpeech.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This effect is designed to mitigate problems in speech recordings where there are very large variations in the loudness / amplitude of the recorded voice or voices. A typical situation might be a conference recording where one person's voice is much louder than the other people present.

Technically, it is a special kind of "dynamic range compression" effect, to "level" out variations in amplitude (reduce dynamic range), particularly for speech recordings. Usage of the effect is greatly simplified compared to most _traditional_ compressor effect, by combining control of all of the effect parameters into a single "Leveling Amount" control.

Parameters:

1. **Leveling Amount (%):** (0 to 100% default 50%) Higher values produce a stronger effect.

</details>

### Limiter

A "lookahead" dynamic range limiter to compress peaks that extend beyond the set threshold value.

{% file src="../../.gitbook/assets/Limiter.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton.

A "lookahead" dynamic range limiter to compress peaks that extend beyond the set threshold value. This is not a "wave shaper", it is a very fast compressor and is able to limit the maximum peaks with minimal harmonic distortion.

This limiter is an ideal choice for peak limiting live music recordings due to the exceptionally low harmonic distortion. For best results the audio should be normalized to 0 dB before applying this effect.

Parameters:

1. **Limit to (dB):** (-10 dB to 0 dB) Sets the maximum peak level. As peaks in the original audio approach this level the gain is reduced so as to prevent the peaks exceeding the set level.
2. **Hold (ms):** (1 to 50 ms Default = 10 ms) Holds the gain at the reduced level after a peak is detected so as to prevent the gain from "riding the waveform" which would cause harmonic distortion.
3. **Make-up Gain (0=No, 1=Yes):** (Default = 1) When enabled (set to 1) the output is amplified by an amount equal to the "Limit" level. If the input audio has a peak level of 0 dB, the peak output level will also be 0 dB. When disabled the peaks are limited only.

Shorter _Hold_ times allow the peaks to be tracked more accurately and the limiter will respond faster to the dynamics. If there are high levels of very low bass it will be necessary to increase the Hold time to avoid distortion. The default 10 ms hold time is sufficient for frequencies down to 100 Hz without distortion. To cleanly limit high amplitude, very low frequency bass (down to 50 Hz) the Hold should be increased to 20 ms. Setting the hold to 50 ms is sufficient right down to 20 Hz but the delay before the gain level "recovers" is likely to be too slow for most material.

**Additional notes:**

* **Threshold level:** The **Limit to (dB)** control has a range of -10 dB to 0 dB. The effect is not designed to work beyond this range. When set to 0 dB there will be no change to the audio (though any over 0 dB audio will be clipped). If set below -10 dB the _knee_ will be so soft that all of the audio will be compressed, not just the peaks.
* **Stereo Tracks:** As is normal for this type of effect, the left/right channels of a stereo track are processed independently.
* **Lookahead:** The limiter looks ahead for peaks and will begin to change the gain just before the peak occurs. This ensures that all peaks, no matter how fast they occur, will be caught. The lookahead time is roughly a quarter of the hold time.
* **Knee:** The "hardness" of the knee depends on the threshold (Limit To) level. When the threshold is close to zero a hard knee is used but as the threshold is lowered the knee becomes softer so as to provide a smooth transition in gain level even with a very fast attack time. A typical threshold level of around -3 dB will have a relatively "soft knee" so as to avoid unnecessary distortion. That is, the amount of compression (compression ratio) progressively increases as the input gets louder. At the "Limit to" level the compression ratio is infinite (brick wall) which ensures that peaks will not exceed the limit.
* **Creative use:** The limiter can be used on its own, or can be used to limit peaks after running a compressor that does not use lookahead (such as the SC4 LADSPA compressor). This can produce "crisper" compression than using a lookahead compressor such as the standard Audacity compressor or Chris's dynamics compressor.
* **Over 0 dB input:** The input waveform should not exceed 0 dB. Over 0 dB input signals are treated as _illegal_ and will be hard clipped to 0 dB before processing with the limiter. If necessary, the Amplify or Normalize effects should be run before applying this limiter to ensure that the input does not exceed 0 dB.

</details>

### Limiter (2)

The same as [Limiter](dynamics-processing.md#limiter) except that the make up gain control is a multi-choice selection rather than a slider.

{% file src="../../.gitbook/assets/Limiter2.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton.

The same as [Limiter](dynamics-processing.md#limiter) except that the make up gain control is a multi-choice selection rather than a slider.

Parameters:

1. **Limit to (dB):** (-10 dB to 0 dB)
2. **Hold (ms):** (1 ms to 50 ms Default = 10 ms)
3. **Apply Make-up Gain:** \[No, Yes (default)]

</details>

### Noise Gate

Noise Gates may be used to cut the level of noise between sections of a recording.

{% file src="../../.gitbook/assets/Noisegate.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton.

Noise Gates may be used to cut the level of noise between sections of a recording. While this is essentially a very simple effect, this Noise Gate has a number of features and settings that allow it to be both effective and unobtrusive and well suited to most types of audio.

Parameters:

1. **Select Function:** \[Apply the Noise Gate effect | Test the noise level | View one of the Help screens].
2. **Stereo Linking:** \[Link Stereo Tracks _(gate audio when both channels fall below the gate threshold)_| Don't Link Stereo _(gate channels independently)_]
3. **Apply Low-Cut filter:** \[No _(Do not apply filter)_ | 10Hz 6dB/octave | 20Hz 6dB/octave] _Removes sub-sonic frequencies including DC offset._
4. **Gate frequencies above:** \[0 kHz to 10 kHz] _Applies the gate only to frequencies above the set level which may be useful for reducing tape hiss, but will also introduce some 'phase shift'. Setting this below 0.1 kHz will switch this feature off._
5. **Level reduction:** \[-100 dB to 0 dB] _How much the gated sections are reduced in volume. Values below -96 dB 'shut' the gate to produce absolute silence._
6. **Gate threshold:** \[-96 dB to -6 dB] _When the audio level drops below this threshold the gate will 'close' and the output level will be reduced. When the audio level rises above this threshold the gate will 'open' and the output will return to the same level as the input._
7. **Attack/Decay:** \[10 to 1000 milliseconds] _How quickly the gate opens and closes. At the minimum (10 ms) the gate will fully open and close almost instantly as the audio level crosses the threshold. At the maximum (1000 ms), the gate will begin to slowly open (fade-in) 1 second before the sound level exceeds the Threshold, and will gradually close (fade-out) after the sound level drops below the Threshold over a period of 1 second._

For more detailed information and usage tips, read the help file included in this [ZIP package](https://wiki.audacityteam.org/w/images/a/a6/NoiseGate.zip), or the help screens included in the plugin.

</details>

{% hint style="info" %}
This effect requires the entire audio selection to be loaded into RAM. If there is insufficient available memory, the plugin and Audacity will crash. The maximum length that can be processed is dependent on the sample rate, length of audio selection, operating system, and available RAM. Please test carefully before using this effect on long (> 45 minutes) tracks to verify the limits on your computer.
{% endhint %}

### Pop Mute

The effect is like an "upside-down" [Noise Gate](dynamics-processing.md#noise-gate). Whereas a [Noise Gate](dynamics-processing.md#noise-gate) attenuates sounds that are below a specified threshold level, Pop Mute attenuates sounds that are above a specified threshold level.

{% file src="../../.gitbook/assets/Popmute.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

The effect is like an "upside-down" [Noise Gate](dynamics-processing.md#noise-gate). Whereas a [Noise Gate](dynamics-processing.md#noise-gate) attenuates sounds that are below a specified threshold level, Pop Mute attenuates sounds that are above a specified threshold level. The effect can be used to heavily attenuate loud sounds. It may be useful for rescuing recordings that suffer from loud clicks or pops.

Sounds (such as 'pops') that have a peak level above the 'Threshold' level will be lowered to a 'residual' level set by the 'Mute Level'. Be aware that ALL sounds above the threshold will be affected. Take care to avoid selecting loud sounds that should not be muted.

The effect 'looks ahead' for peaks so that it can begin to lower the level of the sound smoothly a short time before the peak occurs. This is set by the 'Look ahead' time value. After the peak has passed, the level will smoothly return to normal over a period set by the 'Release time' setting.

To attenuate brief clicks, time values of around 5 ms are likely to work well. For larger pops, values of 10 ms or more may sound better. For reverberant sounds such as hand claps, the 'Release time' may be increased so as to catch some of the reverberation.

Parameters:

1. **View Help:** \[No | Yes] (default "No") View the built-in help screen.
2. **Threshold:** \[-24 dB to 0 dB] (default -6 dB) This is the level above which sounds are acted on (reduced in level)
3. **Mute Level:** \[-100 dB to 0 dB] (default -24 dB) How much to reduce the peak level by.
4. **Look ahead:** \[1 to 100 milliseconds] (default 10 millisecond) How far to look ahead for the next "pop" or "crackle".
5. **Release time:** \[1 to 1000 milliseconds] (default 10 millisecond) How rapidly to "release" the effect and return to normal volume after the pop has passed.

</details>

### Text Envelope

Provides an alternative to the "Envelope Tool" that is accessible for visually impaired and other users that do not use pointing devices

{% file src="../../.gitbook/assets/TextEnvelope.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton.

Provides an alternative to the "Envelope Tool" that is accessible for visually impaired and other users that do not use pointing devices.\
This effect provides a means to shape the volume level of a track or selection by fading from one control point level to the next. Control points are defined by a pair of numbers, the first of which sets the time position of the control point and the second defines the amplification level. Initial and final amplification settings may also be defined.\
Help screens are available in the 'Select Function' control of this effect.

Parameters:

1. **Select function:** \[choices: Apply Effect, View Quick Help, View Examples, View Tips. Default = "Apply Effect"]
2. **Time Units:** \[choices: milliseconds, seconds, minutes, percent. Default = seconds]
3. **Amplification Units:** \[choices: dB or Percent. Default = dB]
4. **Initial Amplification** \[Numeric input. Default = none]
5. **Final Amplification** \[Numeric input. Default = none]
6. **Intermediate Control Points as pairs of time and amplification** \[Pairs of numbers. Default = none]

Note: Decimal values must use a dot as the decimal separator.

</details>
