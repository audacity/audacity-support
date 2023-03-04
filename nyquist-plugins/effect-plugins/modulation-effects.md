# Modulation Effects

### Dual Tape Decks

Simulates two tape decks playing identical tapes, but out of synchronization with each other.

{% file src="../../.gitbook/assets/dualtapedecks.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Simulates two tape decks playing identical tapes, but out of synchronization with each other. Written to produce an effect I heard in the late 1970s: I recorded then played identical audio on two mono tape decks. There was an amazing "whooshing" effect as one tape deck "caught up" with and passed what the other tape deck was playing. This plugin allows the "whooshing" to go back and forth. Different effects are made using mono-sounding vs. "true" stereo audio.

The plugin can produce some interesting stereo effects, though note that due to the greater "cross-talk" of speakers, listening in speakers and headphones will sound different. Stereo flanger-like effects can be made by (for example) applying dualtapedecks.ny to audio, applying Stereo Butterfly (static) with a spread value of zero (sounds mono after applying), then applying dualtapedecks.ny a second time with the same settings as the first time. This plugin will work on mono audio as well, but the only effect will be rising and falling changes in pitch and tempo.

Parameters:

1. **LFO frequency:** \[Hz, 0.001 to 25.000]
2. **Starting phase:** \[degrees, -180 to +180, default 0]
3. **Phase difference:** \[degrees, 0 to 360, default 180]
4. **Depth:** \[0.001 to 2.000] - The larger depth is, the more pronounced the pitch and tempo shift become until there is a noticeable warble.

</details>

### Flanger (linear)

Unlike a regular flanger (which cycles up and down repeatedly), this plugin creates a single high-frequency flange, and you can set the position of that high-frequency point, anywhere between the start and end of the selection and beyond.

{% file src="../../.gitbook/assets/Flangerl.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Unlike a regular flanger (which cycles up and down repeatedly), this plugin creates a single high-frequency flange, and you can set the position of that high-frequency point, anywhere between the start and end of the selection and beyond. The plugin works by mixing the original selected audio with a slightly shrunk (shorter) version of itself.

Works on mono and stereo audio.

Parameters:

1. **High frequency flange position:** \[percent, - 100 to + 200, default 0] - the position in the signal where the high frequency portion of the flange is heard. If set to 0%, the high frequency will be at the start of the selection; at 50% in the exact middle; at 100%, at the end. If you set this value below 0% or above 100%, you won't hear the highest flange frequency peak but will hear a falling or rising flange effect, as if the peak lay outside the start or end of the selection.
2. **Time decrease:** \[milliseconds, - 0.1 to 200, default 5.0] - how much the length of the original selection is decreased.
3. **Wet level:** \[percent, 1 to 99, default 50] - the 'wet' signal is the shortened signal, and the wet level is how much (in percent) to mix with the dry (unaltered) audio.
4. **Wet: inverted or positive:** \[0=inverted, 1=positive, default positive]

</details>

### Isochronic modulator

A variable tremolo plugin customized with controls for length and fade in/out speed of each pulse.

{% file src="../../.gitbook/assets/Isomod.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A variable tremolo plugin customized with controls for length and fade in/out speed of each pulse. The modulation frequency (speed) and depth transform gradually from the initial settings to the final settings. A modified square wave is used as the modulation waveform.

The effect is typically applied to a single tone to create [isochronic tones](http://en.wikipedia.org/wiki/Isochronic\_tones). The author supplies the plugin only as a demonstration of audio processing without endorsing or claiming any relevance to the theory or practice of [brainwave entrainment](http://en.wikipedia.org/wiki/Brainwave\_entrainment).

Parameters:

1. **Pulse Width:** \[percent, 0 - 100, default 40] - How long each pulse will be "on". Higher values will make the sound "on" for longer. 50% gives a "square pulse" where the sound will be on for half the time.
2. **Fade Time:** \[percent, 0 - 100, default 15] - adjusts the fade in and fade out speed of the pulse. Higher values produce a more gradual fade in and out of the pulses. At 100% the fade in/out times will be half of the pulse width. At 0% there will be no fade.
3. **Initial Modulation Frequency:** \[Hz, 1 - 20, default 7.0]
4. **Final Modulation Frequency:** \[Hz, 1 - 20, default 2.0]
5. **Initial Modulation Depth:** \[percent, 0 - 100, default 100]
6. **Final Modulation Depth:** \[percent, 0 - 100, default 100]

</details>

### Random Amplitude Modulation

Similar to [Random Panning](amplify-mix-and-pan-effects.md#panning-random), this time playing around with the volume knob.

{% file src="../../.gitbook/assets/Randomamp.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Similar to Random Panning, this time playing around with the volume knob. Because of the way the random signal is generated, the lower the maximum speed is, the higher the depth factor must be to produce a similar depth of amplitude changes.

Parameters:

1. **Max amp sweep speed:** \[0.01 - 20.0 Hz, default 0.5] - maximum speed of the random amplitude changes
2. **Amp sweep depth factor:** \[1 - 300, default 80] - how extreme the random amplitude changes are

</details>

### Random Pitch Modulation

Randomly modulates the pitch of your audio.

{% file src="../../.gitbook/assets/randompitch.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Randomly modulates the pitch of your audio. As with other randomly-controlled effects, the the lower the maximum speed is, the higher the depth factor must be to produce a similar depth of random changes. This effect works on mono and stereo audio. In stereo, each channel has different random pitch modulation applied. "Max pitch mod depth" can be explained thus: at higher warping depth settings, pitch mod depth should be made higher, otherwise there will be momentary periods without pitch changes. With lower warping depth settings this does not happen, and the effect can be re-applied repeatedly to give further random pitch changes.

Parameters:

1. **Warping depth:** \[0.001 - 2.000, default 0.100] - controls the number of pitch changes that occur
2. **Max sweep speed:** \[0.01 - 20.0 Hz, default 0.50] - maximum speed of the random pitch changes, higher values increase "warbling" effect
3. **Sweep depth factor:** \[1 - 300, default 80] - how far
4. **Max pitch mod depth:** \[0.01 - 3.00, default 0.50]

</details>

### Ring Modulator

A ring modulator is a tremolo effect, but instead of using an LFO to amplitude modulate audio, an audio signal is used.

{% file src="../../.gitbook/assets/Ringmod.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A ring modulator is a tremolo effect, but instead of using an LFO to amplitude modulate audio, an audio signal is used. The result is a combination of the sum of and the difference between the two input signal frequencies e.g., two sine waves of 440 Hz and 660 Hz produce a result of 220 Hz (difference) and 1100 Hz (sum).

This plugin also allows use of triangle, sawtooth and pulse waveforms, so the results are the sums and differences between the harmonics of the modulating signal and harmonics of the signal being modulated.

Parameters:

1. **Modulation frequency:** \[Hz, 20 to 5000, default 500]
2. **Amount:** \[percent, 0 to 100, default 100]
3. **Waveform:** \[0=sine, 1=triangle, 2=sawtooth, 3=pulse, default sine]
4. **Pulse bias:** \[percent, -100 to +100, default 0] - if the pulse waveform is selected, bias is the pulse width. The default 0 gives a "square" wave. Lower values give a narrower positive signal, higher values a wider positive signal.

</details>

### Variable Tremolo

This plugin produces a "Tremolo" effect in which the frequency and depth of the tremolo varies from an initial setting to a final setting.

{% file src="../../.gitbook/assets/Vari-tremolo.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This plugin produces a "Tremolo" effect in which the frequency and depth of the tremolo varies from an initial setting to a final setting. The effect makes the loudness "wobble" and you can set the speed of the wobble and the amount that it wobbles for both the start of the selection and the end of the selection.

Parameters:

1. **Tremolo Shape:** \[sine,triangle,sawtooth,inverse sawtooth,square. default = "sine"]
   1. Sine: The volume rises and falls smoothly up and down.
   2. Triangle: The volume alternates between rising at a constant rate and falling at a constant rate.
   3. Sawtooth: The volume rises abruptly but falls gradually.
   4. Inverse Sawtooth: The volume rises gradually but falls abruptly.
   5. Square: The volume jumps abruptly between higher and lower levels.
2. **Starting Phase:** \[0 to 360 degrees, default = 90] - This sets the starting point for the tremolo cycle. At 90 degrees the tremolo starts at the higher level. At 0 degrees the tremolo starts at the lower level.
3. **Initial Tremolo Frequency:** \[1 to 20 Hz - default = 4] - The speed of the tremolo effect at the start of the selection.
4. **Final Tremolo Frequency:** \[1 to 20 Hz - default = 12] - The speed of the tremolo effect at the end of the selection.
5. **Initial Tremolo Amount:** \[0 to 100 % - default = 40] - How much the initial volume varies as a percentage of the original level.
6. **Final Tremolo Amount:** \[0 to 100 % - default = 40] - How much the final volume varies as a percentage of the original level.

</details>

### Vibrato

This effect applies vibrato (a regular pulsating change of pitch) to the selected audio.

{% file src="../../.gitbook/assets/Vibrato.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This effect applies vibrato (a regular pulsating change of pitch) to the selected audio. The speed at which the sound pulsates can be varied over time by selecting an initial speed and a final speed. The vibrato speed will smoothly transition from the initial speed to the final speed. For a constant speed vibrato, set the Initial and Final speed settings to the same value.

The depth of the vibrato (amount of pitch variance) can varied over time by setting initial, mid point and final depth values. The vibrato depth begins at the initial value and smoothly transitions to the mid-point value, then to the final value. The time at which the mid-point depth is achieved can be adjusted. When "Mid point position" is set to 50%, the mid-point depth is reached half way through the selection. Smaller "Mid point position" values shift the mid-point earlier, so that the transition in depth from "Initial" to "Mid point" occurs more quickly, and the transition from "Mid point" to "Final" occurs more slowly. Similarly, larger values shift the mid-point later.

The maximum vibrato depth (100%) is equivalent to a pitch deviation of +/- 1 whole tones. At 50%, the deviation is +/- 1 semitone.

Parameters:

1. **Initial speed:** \[0 to 10, default 1] The initial vibrato speed (wobbles per second).
2. **Final speed:** \[0 to 10, default 5] The vibrato speed at the end of the selection.
3. **Initial depth:** \[0 to 100%, default 10%] The amount of pitch variance at the start of the selection.
4. **Mid point depth:** \[0 to 100%, default 100%] The amount of pitch variance at the mid-point.
5. **Final depth:** \[0 to 100%, default 0%] The amount of pitch variance at the end of the selection.
6. **Mid point position:** \[0 to 100%, default 30%] How far through the selection that the mid-point depth is reached.

</details>

{% hint style="info" %}
This plugin is intended for use on short selections. Due to cumulative rounding errors, the sound quality will gradually deteriorate on long selections, so it is recommended to apply the effect to selections that are less than 1 minute.
{% endhint %}
