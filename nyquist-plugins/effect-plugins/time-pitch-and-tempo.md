# Time, Pitch and Tempo

### Change Speed by Semitones

Similar to the [Change Speed](https://manual.audacityteam.org/man/change\_speed.html) effect, this effect changes the speed of the selected audio, thus changing both the tempo and pitch.

{% file src="../../.gitbook/assets/Changespeedsemitones.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

Similar to the [Change Speed](https://manual.audacityteam.org/man/change\_speed.html) effect, this effect changes the speed of the selected audio, thus changing both the tempo and pitch. Possible uses include slowing down music to aid transcription, where the amount of pitch change is known.

Parameters:

1. **Semitones change:** \[-24 to +24 semitones]

</details>

### Extract Audio

Extracts audio from a selected area without using a mouse or cursor keys.

{% file src="../../.gitbook/assets/extract.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Extracts audio from a selected area without using a mouse or cursor keys. Audacity has a Selection Toolbar providing a screen-reader friendly display of selection start time and duration which you could use for similar purpose, this plugin provides a solution. It also has an easy option to extract a percentage of the selected audio. For example, selecting 50% "start percent" and 100% "end percent" will leave you with only the last half of your selection.

Parameters:

1. **Time or percent?**
2. **Start time:** \[seconds, maximum 600]
3. **End time:** \[seconds, maximum 600]
4. **Start percent:**
5. **End percent:**

</details>

### Insert Silence

This effect inserts silence at the start of the audio selection.

{% file src="../../.gitbook/assets/Insertsilence.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This effect inserts silence at the start of the audio selection. The length of inserted silence is equal to the length of the selection. This effect may be useful in situations where it is necessary to insert a lot of silences because Audacity (2.0.1 and later) allow keyboard shortcuts to be set for effects (see: [https://manual.audacityteam.org/o/man/keyboard\_preferences.html#change](https://manual.audacityteam.org/o/man/keyboard\_preferences.html#change))

This effect has no controls.

</details>

### Regular Interval Audio Splitter

Splits audio into desired number of segments by inserting silences of specified duration (up to 10.0 seconds).

{% file src="../../.gitbook/assets/Equasplit.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Previously called "Audio chunker". Splits audio into desired number of segments by inserting silences of specified duration (up to 10.0 seconds). You can also specify fade-in and fade-out lengths for each segment. By setting number of segments to ' 1 ' you can use audio splitter to apply a specified fade-in and fade-out to a single length of audio in one action.

Parameters:

1. **Number of audio segments:** \[1 to 120, default 10]
2. **Silence duration between segments \[seconds]:** \[0.01 to 10, default 1]
3. **Fade-in/fade-out length \[milliseconds; 0 = no fade]:** \[0 to 500, default 20]

</details>

### Sliding Speed Change

A speed change effect in which the initial and final speed may be set independently.

{% file src="../../.gitbook/assets/Slide-speed.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A speed change effect in which the initial and final speed may be set independently. Like Audacity's [Change Speed](https://manual.audacityteam.org/man/change\_speed.html) effect, this effect changes both the tempo and pitch of the audio.

**Accessibility:** This effect may be useful as an accessible alternative to Audacity's [Time Tracks](https://manual.audacityteam.org/man/time\_tracks.html).

Parameters:

1. **Initial speed (0.1 to 10 x):** \[0.1 to 10, default 1.0] Sets the initial speed.
2. **Final speed (0.1 to 10 x):** \[0.1 to 10, default 1.0] Sets the final speed.

The speed controls set the initial and final speed as a multiple of the original speed. A setting of 1.0 means 1x the original speed, in other words, unchanged. 2x speed is double speed. 0.5x speed is half speed. The speed changes linearly between the 'Initial' and 'Final' settings.

</details>

### Tempo Change

This plugin allows you to change tempo making it faster or slower

{% file src="../../.gitbook/assets/tempo.ny" %}
Download Plugin
{% endfile %}

{% file src="../../.gitbook/assets/tempo1.mp3" %}
Download example audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

For those who are confused by Audacity's "Change Speed" effect where to make the tempo twice as slow you apply a -50% change and to make it twice as fast apply a 100% change, try this plugin. Its default settings multiply the tempo by 0.5, making the tempo twice as slow (dividing by 2.0 has the same effect). To make the tempo twice as fast, simply multiply by 2.0 (or divide by 0.5). The default setting (the opposite of Audacity's "Change Speed" default) might be handy for example to return tapes dubbed at 2x speed to normal speed.

Parameters:

1. **Tempo change factor:** \[0.1 to 8.0, default 0.5]
2. **Multiply or divide:** \[0=multiply (default), 1=divide] - multiplies or divides by the tempo change number.

</details>

### Time Shifter

A plugin for performing the same task as the Time Shift Tool in Audacity, without using a mouse.

{% file src="../../.gitbook/assets/timeshif.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A plugin for performing the same task as the Time Shift Tool in Audacity, without using a mouse. The effect works thus: if the shift value is positive, silence is inserted before the selection. If the shift value is negative, audio is removed from the start of the selection. If your selected track is mono, set the value in the left/mono edit field, if your track is stereo, set the values in both the left/mono and right channel shift value fields. Setting slightly different values in both fields when you have a stereo track can be used for special effect.

Note that positive shifts can lead to the audio being truncated at the right edge when shifting a stereo track. To avoid this, split the stereo track using the Track Drop-down Menu, select each track in turn and apply the shift you want using the Mono/left channel shift field. If the audio starts after time zero and is preceded by empty space, convert the empty space to silence with Project > Quick Mix in legacy Audacity up to and including version 1.3.13. In current Audacity, select the track, press J, then press SHIFT + HOME, then Generate > Silence. This prevents truncation of the audio providing there is sufficient silence at the start of the track.

Parameters:

1. **Mono/left channel shift:** \[-1000 - +1000, default 0]
2. **Right channel shift:** \[-1000 - +1000, default 0]
3. **\[0=milliseconds 1=seconds]** (default is milliseconds)

</details>

### Trim / Extend

This plugin can trim audio from the start and/or end of a track (or track selection), or pad the start and/or end with silence, or any combination of the two.

{% file src="../../.gitbook/assets/TrimExtend.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This plugin can trim audio from the start and/or end of a track (or track selection), or pad the start and/or end with silence, or any combination of the two. The effect can be used in a [Macro](https://manual.audacityteam.org/man/macros.html) for batch processing.

Parameters:

1. **Time units:** \[samples, milliseconds, seconds (default), minutes] This selection sets the time units for the following two controls.
2. **Trim / Extend start by:** \[-100 to +100, default 0] How much audio to trim (delete) from the start of the track selection, or how much silence to add to the start of the selection. Move the slider to the left or type a negative value to remove audio. Move the slider to the right or type a positive value to add silence.
3. **Trim / Extend end by:** \[-100 to +100, default 0] How much audio to trim (delete) from the end of the track selection, or how much silence to add to the end of the selection. Move the slider to the left or type a negative value to remove audio. Move the slider to the right or type a positive value to add silence.
4. **Error message control:** \[Show errors (default) / Hide errors] In the event of an error, a message will normally be shown to indicate what the error is. For example, if you attempt to delete a longer duration than the selection, an error message will indicate that the operation cannot be done. However, when using this effect in a Macro for batch processing, the error message will cause the Macro to stop until the error message is acknowledged. That behavior may not be wanted, so "Hide errors" may be selected to suppress error messages. When "Hide errors" is enabled, if an error is encountered, the plugin will silently skip the current track and continue with any remaining tracks.

</details>

### Trim Silence

This plugin is for trimming excess silence from the start and/or end of tracks or audio clips.

{% file src="../../.gitbook/assets/TrimSilence.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This plugin is for trimming excess silence from the start and/or end of tracks or audio clips. The effect can be used in a [Macro](https://manual.audacityteam.org/man/macros.html) for batch processing.

Parameters:

1. **Silence Threshold (dB):** \[-100 to 0, default -48] Audio below this level at the start or end of the track may be trimmed.
2. **Silence to leave at start (0 to 30 seconds):** \[0 to 30 seconds, default 0] When trimming silence from the start of a track or audio clip, the silence will not be trimmed shorter than this length. Note that if the silence at the start of the track is already shorter than this length, it will not be trimmed and will not be extended.
3. **Silence to leave at end (0 to 30 seconds):** \[0 to 30 seconds, default 0] When trimming silence from the end of a track or audio clip, the silence will not be trimmed shorter than this length. Note that if the silence at the end of the track is already shorter than this length, it will not be trimmed and will not be extended.

<!---->

1. **Preview** is not available for this effect.
2. This plugin requires the audio to be loaded into RAM. To avoid running out of RAM (which would cause Audacity to freeze or crash), the plugin limits the maximum size of the selected audio to 1 GB (about 47 minutes for a stereo track at 44.1 kHz). Additional information is provided in the plugin code comments.

</details>

{% hint style="info" %}
**Preview** is not available for this effect.

This plugin requires the audio to be loaded into RAM. To avoid running out of RAM (which would cause Audacity to freeze or crash), the plugin limits the maximum size of the selected audio to 1 GB (about 47 minutes for a stereo track at 44.1 kHz). Additional information is provided in the plugin code comments.

Note that this effect only acts on the start and/or end of the track or audio clip within the current selection. If the selection includes multiple audio clips, trimming starts from the beginning of the first audio clip that is within the selection, and from the end of the last audio clip that is within the selection.
{% endhint %}

### Turntable Warping MS

Simulates unplugging and plugging in a turntable while it's powered, and related effects such as speeding it up before unplugging it

{% file src="../../.gitbook/assets/turntablewarp-ms.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Authors: [David R.Sky](https://audionyq.com/david\_r\_sky), Roger B. Dannenberg

Simulates unplugging and plugging in a turntable while it's powered, and related effects such as speeding it up before unplugging it. Improved over the previous turntablewarp.ny - this version lets you warp both mono and stereo audio. The default settings simulate unplugging a turntable - the audio starts to slow down halfway through the selection area, and drops to 40% of original volume by the end.

**Parameters:**

1. **Initial step:** \[-36 - +36 semitones, default 0] - the resulting pitch change at the start of the selection, defined as number of semitones above or below the original pitch (1 step = 1 semitone, so 12 steps = 1 octave.)
2. **Initial amplitude:** \[0 - 100 percent, default 100] - the resulting volume at the start of the selection, related to the original amplitude (so 100% = no change).
3. **Change time:** \[0 - 100 percent, default 50] - the point in time in the selection (set internally to the original pitch and volume) at which the warping values change to reach and move away from this point. What this means is that depending on your start and end step and amplitude values, you can design warps that slow down then speed up; speed up then slow down; speed up to a particular pitch then remain there; slowly speed up then quickly speed up.
4. **End step:** \[-36 - +36 semitones, default -12] - the resulting pitch change at the end of the audio. compared to the original pitch.
5. **End amplitude:** \[0 - 100 percent, default 40] - the resulting volume at the end of the selection, compared to the original volume.

</details>
