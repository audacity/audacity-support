---
description: >-
  A delay effect is similar to an echo, in that the sound is repeated (after a
  brief time delay) one or more times after the original sound.
---

# Delay and Reverb

### Bouncing Ball Delay

A delay plug-in where, like a bouncing ball, the bounces get faster and faster.

{% file src="../../.gitbook/assets/bouncingball.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A delay plug-in where, like a bouncing ball, the bounces get faster and faster. You can set time that the bounces increase in speed with each delay, the number of bounces, and how much in dB the sound decreases with each bounce.

Parameters:

1. **Decay amount** \[dB]: how much quieter each bounce is.
2. **Delay time** \[seconds]:
3. **Number of bounces** \[times]:

**Note:** The latest available delay plug-in in Audacity includes bouncing ball delay and pitch shifting. but not panning.

</details>

### Bouncing Ball Delay with Panning

Combines the [Bouncing Ball Delay](delay-and-reverb.md#bouncing-ball-delay) with a panning effect.

{% file src="../../.gitbook/assets/Bbdelay.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Combines the Bouncing Ball Delay with a panning effect. A delay effect in which the echo get faster, like a bouncing ball. Each echo is panned further from center by the designated amount.

This plug-in has bugs and may produce unpredictable results with some settings, but is basically functional.

Parameters:

1. **Decay amount** \[dB]:
2. **Delay time** \[seconds]:
3. **Number of bounces** \[times]:
4. **Pan spread movement** \[move]: - defines the extent to which each bounce will be increasingly far from center

**Note:** The latest available delay plug-in in Audacity includes bouncing ball delay and pitch shifting, but not panning.

</details>

### Bouncing Ball Delay with Tone Shift

Combines the [Bouncing Ball Delay](delay-and-reverb.md#bouncing-ball-delay) with Tone Shift plug-ins.

{% file src="../../.gitbook/assets/bbdtone.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Combines the Bouncing Ball Delay and Delay with Tone Shift plug-ins. A delay effect in which the echoes get faster, like a bouncing ball. Each echo is shifted in pitch by the designated amount in semitones plus cents (hundredths of a semitone).

Parameters:

1. **Decay amount** \[dB]:
2. **Delay time** \[seconds]:
3. **Number of bounces** \[times]:
4. **Tone shift (whole)** \[semitones]:
5. **Tone shift (cents)** \[cents]:

**Notes:**

1. The value for the decay amount (in dB) for an increasing pitch can be left at the default 0. However, with decreasing pitch, the lengths of the delays increase over time, overlapping with each other. In this case, clipping can occur if the decay value is left at 0.
2. **Note:** The latest available delay plug-in in Audacity includes bouncing ball delay and pitch shifting.

</details>

### Reverse Bouncing Ball Delay

The fastest bounces come first, gradually slowing down - reverse of the [Bouncing Ball Delay](delay-and-reverb.md#bouncing-ball-delay) effect.

{% file src="../../.gitbook/assets/delayreb.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

The fastest bounces come first, gradually slowing down - reverse of the bouncing ball delay effect. Includes normalisation. **Note:** The latest available delay plug-in 3 in [Audacity](https://web.audacityteam.org/download/) includes reverse bouncing ball delay without normalisation, and also includes pitch shifting.

Parameters:

1. **Decay amount:** \[0.00 - 5.00 dB, default 0.50]
2. **Delay time:** \[0.01 - 1.00 seconds, default 0.05]
3. **Number of bounces:** \[1 - 100, default 15]

</details>

### Reverse Bouncing Ball Delay with Tone Shift

The fastest bounces come first - reverse of the [Bouncing Ball Delay](delay-and-reverb.md#bouncing-ball-delay), and each bounce is tone shifted.

{% file src="../../.gitbook/assets/rbbdtone.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

The fastest bounces come first - reverse of the bouncing ball delay, and each bounce is tone shifted.\
**Note:** The latest available delay plug-in in Audacity includes reverse bouncing ball delay and pitch shifting.

Parameters:

1. **Decay amount:** \[0.00 - 5.00 dB, default 0.05]
2. **Delay time:** \[0.01 - 1.00 seconds, default 0.02]
3. **Number of bounces:** \[1 - 100, default 15]
4. **Tone shift (whole):** \[-24 - +24 semitones, default -1]
5. **Tone shift (cents):** \[-100 - +100, default 0]

</details>

### Chimes delay

Adds random delay to your audio, and randomly changes the pitch of each delay if you specify a note list.

{% file src="../../.gitbook/assets/Chimesdelay3.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

Based on chimesdelay.ny by [David R.Sky](https://audionyq.com/david\_r\_sky)

Adds random delay to your audio, and randomly changes the pitch of each delay if you specify a note list (which is where the name 'Chimes Delay' comes from).

Each number in the note list indicates how many semitones your audio should be pitch shifted (along with matching tempo shift). For example, 0 indicates no pitch shift, 12 indicates a rise of 12 semitones (one octave), -5 indicates drop of 5 semitones (like going from C down to G below that C note).

**Example:** If the audio you have loaded into Audacity is C3, the above note list would randomly produce the following major-sounding notes:

C1 C2 G2 C3 E3 G3 C4 D4 G4

If you delete this note list, a list of notes will be generated between a lower and upper number. The default values of these two numbers are -12 semitones (decrease of 1 octave) and +24 semitones (increase of 2 octaves) respectively.

If your audio is stereo, each random delay with random volume and pitch change will also be randomly panned anywhere between left and right. (It is best that your audio is first panned to center before applying Chimes Delay.)

**Tips:**

* Adding a bit of regular delay and/or other effects before applying Chimes Delay results in a richer sound.
* If you want a particular note (from the note list) to be repeated more often, you can enter it more than once in the list.
* If you simply want your audio randomly delayed with no multiple pitch changes, either enter just one number into the note list, or enter the same number into the minimum and maximum notes fields.
* It is possible that total length of your resulting audio will be maximum delay time \*plus\* the duration of your original audio. This may be still longer if the final delay(s) is/are decreased in pitch (resulting in a reduced tempo).

Warning: If your original audio is non-musical, Chimes Delay will not make it musical!

\
Parameters:

1. **Chimes note list:** \[default list: -24 -12 -5 0 4 7 12 14 19]
2. **Minimum note:** \[semitones from -12 to +48]
3. **Maximum note:** \[semitones from -12 to +48]
4. **Maximum delay time:** \[seconds from 0.5 to 120] - the maximum delay of the random delays
5. **Minimum volume:** \[percentage] - the minimum random volume that each random delay can have. If you want no random amplitude changes, set this field to 100 percent.
6. **Number of chime delays:** \[from 1 to 100] - how many delays within the maximum delay time.

Acknowledgement due to Steven Jones whose "Harmonic Noise" generator plug-in is the source for Nyquist code to handle a string-input note list (David Sky's original version only).

</details>

### Delay BPM with Panning

Applies a delay effect based on a specified tempo (beats per minute), with optional panning and filtering of the delayed sound.

{% file src="../../.gitbook/assets/Delay-bpm.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: Felipe Zanabria\
(based on code by Steve Daulton)

Applies a delay effect based on a specified tempo (beats per minute), with optional panning and filtering of the delayed sound. Requires a stereo track.

Parameters:

1. **Decay:** \[0 - 24 dB, default -6dB] - how much quieter each subsequent delay is.
2. **Tempo:** \[1 - 500 bpm, default 120 bpm] - Specifies the tempo for the delay.
3. **Note values:** \[Choice: "Half note" to "Sixty-fourth note", default "Eighth note"] - Acts as a tempo multiplier. The default "Eighth note" produces echoes at "double tempo", whereas "Sixteenth Note" would produce echoes at 4x the tempo setting.
4. **Number of echoes":** \[1 - 100, default 5]
5. **Pan spread":** \[-1 to +1, default 0] - the amount of side to side panning of the echoes. When positive, the echo is initially panned to the right. When negative, the echo is initially panned to the left. Subsequent echoes pan side to side. When zero, the echo is mono at the center of the stereo mix.
6. **Optional filters:** \[Choice: None, High pass, Low pass, Band pass. Default: None]
7. **Filter frequency:** \[10 - 10000 Hz, default 1000 Hz] - The filter frequency (if enabled).
8. **Filter width (bandpass only):** \[0 - 10000 Hz, default 1500 Hz] - If the optional "Band Pass" filter is selected, the "Filter frequency" is the center frequency of the filter, and this control sets the width (in Hz).
9. **Wet level:** \[-24 - 0 dB, default 0 dB] - Reduces the level of each echo.

Note that this effect does not extend the selected audio. If you require space for echoes after the end of the track, the selection must be made long enough to accommodate the final echoes.

</details>

### Delay with High-Pass Filter

Applies a high-pass filter to a delay so that with each subsequent delay, the filter's cut-off frequency is increased.

{% file src="../../.gitbook/assets/hpdelay.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Applies a high-pass filter to a delay so that with each subsequent delay, the filter's cut-off frequency is increased. A high-pass filter attenuates sound below a given cut off frequency, therefore when this plug-in is applied, each delay sounds increasingly thin and lacking bass. Applied to a voice, it makes each delay sounds like it's increasingly coming from a telephone.

Parameters:

1. **Decay amount:** \[0 - 24 dB, default zero] - how much quieter each subsequent delay is
2. **Delay time:** \[0 - 5 seconds, default 0.5]
3. **Number of echoes:** \[1 - 30, default 10]
4. **Start cut-off frequency:** \[100 - 5000, default 1000] - the high-pass cut-off frequency at the start of the delay.
5. **Cut-off increase:** \[octaves, 0.1 - 5.0, default 0.5] - how much to increase the filter cut-off point with each delay.

</details>

### Delay with Low-Pass Filter

Applies a low-pass filter to a delay so that with each subsequent delay, the filter's cut-off frequency is reduced.

{% file src="../../.gitbook/assets/lpdelay.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Applies a low-pass filter to a delay so that with each subsequent delay, the filter's cut-off frequency is reduced. A low-pass filter attenuates sound above a given cut off frequency, therefore when this plug-in is applied, each delay sounds to have increasing bass. To the author, this has the psychoacoustic effect of each delay sounding further and further away.

Based on an effect heard in a popular Cher tune in the late 1990s or later.

Parameters:

1. **Decay amount:** \[0 - 24 dB, default zero] - how much quieter each subsequent delay is
2. **Delay time:** \[0 - 5 seconds, default 0.5]
3. **Number of echoes:** \[1 - 30, default 10]
4. **Start cut-off frequency:** \[100 - 20000, default 1000] - the low-pass cut-off frequency at the start of the delay.
5. **Cut-off reduction:** \[octaves, 0.1 - 5.0, default 0.5] - how much to reduce the filter cut-off point with each delay.
6. **Normalization level:** \[0 - 1.0, default 0.95]

</details>

### Delay with Pitch Change

A delay plug-in except, each delay is pitch shifted.

{% file src="../../.gitbook/assets/delaypit.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A delay plug-in except, each delay is pitch shifted. Note that pitch changes are accompanied by a corresponding change in duration of each delay.

Parameters:

1. **Decay amount:** \[0 - 24 dB, default 0]
2. **Delay time:** \[0 - 5 seconds, default 0.5]
3. **Number of echoes:** \[1 - 30, default 10]
4. **Pitch change factor:** \[1.001 - 3.0, default 1.1]
5. **Pitch: increase or decrease:** \[default = increase] - whether each delay is increased or decreased in pitch
6. **Normalization level:** \[0.0 - 1.0, default 0.95]

</details>

### Delay with Stereo Flip

This is a stereo delay effect: with each delay, the stereo channels are flipped from left to right and vice versa.

{% file src="../../.gitbook/assets/delayfli.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

This is a stereo delay effect: with each delay, the stereo channels are flipped from left to right and vice versa. Inspired by a sound effect heard in the opening track of Mike Oldfield's "Songs From Distant Earth."

Parameters:

1. **Decay amount:** \[0 - 24 dB]
2. **Delay time:** \[0 - 5 seconds]
3. **number of delays:** \[1 - 100]
4. **Normalization level:** \[0 - 1, default 0.95]

</details>

### Delay with Tone Shift

Similar to pitchshift.ny except you can define in semitones how much each delay is to be pitch shifted.

{% file src="../../.gitbook/assets/tonedelay.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Similar to pitchshift.ny except you can define in semitones how much each delay is to be pitch shifted. A shift of 1 semitone means each delay is increased in pitch by 1 semitone, a shift of -1 means a decrease of 1 semitone. Includes whole semitones plus semitone cents (hundredths of a semitone).

Both plug-ins are best applied to relatively short duration audio, or few number of delays for longer audio. Otherwise Audacity will be working a long time. Same thing seems to happen if there is already pitch shifting within the audio.

</details>

