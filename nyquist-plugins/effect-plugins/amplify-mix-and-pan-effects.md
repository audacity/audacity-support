# Amplify, Mix and Pan Effects

## Amplify Left or Right Channel

Amplify or attenuate a single audio channel (Left or Right) from a stereo track

{% file src="../../.gitbook/assets/amplr.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

If you have a stereo track and want to amplify or attenuate one channel only without using the mouse, this plugin will do it.

Parameters:

1. **Channel** 0=left channel, 1=right channel (default 0).
2. **Volume** \[dB]: amplify or attenuate the channel (default 0 dB, no change in volume).

</details>

### **Bass to Center**

Frequency-selective filter to crossfeed (mix) bass frequencies to center (mono). Requires stereo tracks

{% file src="../../.gitbook/assets/BassToCenter.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: Jvo Studer.

Frequency-selective filter to crossfeed (mix) bass frequencies to center (mono). Requires stereo tracks.

Simulates the "Elliptic EQ" filter found on vinyl mastering consoles by means of a first order high-pass filter in the side-channel (L-R difference). This is useful to bring the bass drum (or beat in electronic music) to the center. If bass frequencies are partially out of phase there will be some bass loss which can be compensated for with the Bass Boost shelf filter (typically +0.5 dB to +2 dB will be sufficient).

Parameters:

1. **Crossover Frequency:** \[10 - 500 Hz, default = 150]
2. **Bass Feed Proportion:** \[20 - 100 %, default 95]
3. **Bass Boost:** \[0 - 6 dB, default 0.5]

</details>

### Center Pan Remover

Removes center-panned content in stereo tracks by inverting and making mono

{% file src="../../.gitbook/assets/Centerpanremover.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Removes center-panned content in stereo tracks by inverting and making mono. Can be used to mitigate vocals in music tracks if the vocals are panned to center. Optionally you can choose a band of frequencies to invert, rather than the whole channel. This may be less destructive of the content panned away from center. The resulting audio retains two channels, but sounds mono because both channels are panned to center.

Parameters:

1. **Invert band or channel:** \[0="band", 1="channel", default = channel]
2. **Remove frequencies above...:** \[20 - 20000 Hz, default 500]
3. **Remove frequencies below...:** \[20 - 20000 Hz, default 2000]

</details>

### Channel Mixer

A multi-purpose tool that can perform almost any type of channel mixing task on an unsplit stereo track.

{% file src="../../.gitbook/assets/Channel-mixer.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton.

A multi-purpose tool that can perform almost any type of channel mixing task on an unsplit stereo track.

Typical uses include:

* Copying one channel of a stereo track to the other channel
* Converting a stereo track into 2 channel mono
* Stereo "widening" (or narrowing)
* Swapping left and right channels of a stereo track
* Vocal Removal
* [Mid-Side](http://en.wikipedia.org/wiki/Microphone\_practice#M.2FS\_technique:\_Mid.2FSide\_stereophony) decoding.

The plugin has 15 presets for the above and similar tasks. If the presets are not used, custom values for the mix of original left and right channel in the left and right outputs can be entered in the parameters as listed below. All values are percentages with a possible range of -100% to +100% and all default to zero value.

<-- LEFT CHANNEL OUTPUT -->

1. **from original Left channel (%):**
2. **from original Right channel (%):**\
   <-- RIGHT CHANNEL OUTPUT -->
3. **from original Left channel (%):**
4. **from original Right channel (%):**

This [Zip archive](https://wiki.audacityteam.org/w/images/3/3d/Channel-mixer.zip) download also includes a comprehensive 'FAQ' help file.

**List of Presets:**

1. Mono (Average): Creates identical left and right with 50% from the Left channel and 50% from the Right channel.
2. Mono (Both Left): Makes both channels the same as the original Left channel.
3. Mono (Both Right): Makes both channels the same as the original Right channel.
4. Extra Narrow: Almost mono but retains a little stereo separation.
5. Narrow Stereo: Reduces the stereo width (requires that the original track is true stereo).
6. Wide Stereo: Expands the stereo width (requires that the original track is true stereo).
7. Extra Wide: Same as 'Wide Stereo' but more extreme.
8. Centre to Left: Moves sounds from the middle of the stereo stage to the Left.
9. Centre to Right: Moves sounds from the middle of the stereo stage to the Right.
10. Swap Left/Right: What it says on the tin.
11. Vocal Remover (L/R invert): Removes sound from the center of the stereo mix and inverts the right channel.
12. Vocal Remover (mono): Removes sound from the center of the stereo mix.
13. Invert Left: Inverts the Left channel.
14. Invert Right: Inverts the Right channel.
15. Mid-Side Decode: A simple Mid-Side decoder.

</details>

### Cross Fade In

Cross Fade In applies a "curved" fade that is different from the linear Fade in that will result in equal RMS volume throughout the faded section when used in conjunction with the **Cross Fade Out** effect to perform a crossfade.

{% file src="../../.gitbook/assets/Crossfadein.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: \[multiple contributions]

Despite the name this effect does not perform an automatic "crossfade" between two tracks or adjoining audio. Instead Cross Fade In applies a "curved" fade that is different from the linear Fade in. The curve used is one that will result in equal RMS (average) volume throughout the faded section when used in conjunction with the "Cross Fade Out" effect, to perform a crossfade.

</details>

### Cross Fade Out

**Cross Fade Out** applies a "curved" fade that is different from the linear Fade Out. The curve used is one that will result in equal RMS (average) volume throughout the faded section when used in conjunction with the **Cross Fade In** effect, to perform a crossfade.

{% file src="../../.gitbook/assets/Crossfadeout.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

**Cross Fade Out** applies a "curved" fade that is different from the linear Fade Out. The curve used is one that will result in equal RMS (average) volume throughout the faded section when used in conjunction with the **Cross Fade In** effect, to perform a crossfade.

</details>

### Fade In and Out

Define the length of fade-in and fade-out selections without using a mouse or cursor keys.

{% file src="../../.gitbook/assets/fade-io.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Define the length of fade-in and fade-out selections without using a mouse or cursor keys. Note Audacity has a Selection Toolbar providing a screen-reader friendly display of selection start time and duration which you could use for similar purpose.

Parameters:

1. **Fade in time:** \[seconds, maximum 30]
2. **Fade out time:** \[seconds, maximum 30]

</details>

### Panning

This plugin will statically pan your stereo audio anywhere between left and right channels.

{% file src="../../.gitbook/assets/pan.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Authors: [David R.Sky](https://audionyq.com/david\_r\_sky), Dominic Mazzoni

Audacity lets you pan with the keyboard instead of the mouse, but if you prefer the pan to modify the waveform immediately, this plugin will statically pan your stereo audio anywhere between left and right channels. There is only one parameter:

1. **Pan position:** \[0=left, 1=right, default is 0.5 (center-panned)]

</details>

### Panning (LFO)

Panning is controlled by a low frequency oscillator

{% file src="../../.gitbook/assets/panlfo2a.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Panning is controlled by a low frequency oscillator. Only works on unsplit stereo tracks. Pan the audio to center before use for best results.

Parameters:

1. **LFO frequency:** \[Hz, 0.02 - 20, default 0.1]
2. **LFO waveform:** \[sine, triangle, saw, inverted saw, pulse]
3. **Pulse waveform duty cycle:** \[percent, default 50]
4. **LFO starting phase:** \[degrees, -180 - +180, default 0]
5. **Leftmost pan position:** \[percent, default 5] - 0%=left channel, 50%=center, 100%=right channel
6. **Rightmost pan position:** \[percent, default 95] - 0%=left channel, 50%=center, 100%=right channel

</details>

### Panning (random)

Randomly pans stereo audio from one side of the stereo field to the other

{% file src="../../.gitbook/assets/Panrand.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Randomly pans stereo audio from one side of the stereo field to the other - just like someone is playing around with the panning knob. Requires an unsplit stereo track.

Parameters:

1. **Maximum random panning speed:** \[Hz, 0.01 - 10.00, default 0.2] - how fast the random panning changes occur
2. **Maximum stereo width:** \[percent, 0 - 100, default 100] - how far away from center the signal is panned. 0% gives no panning, 100% results in the signal being randomly panned between hard left and hard right pan positions.

</details>

### Pseudo-Stereo

Creates an artificial stereo effect that can be useful for giving some "depth" to mono recordings.

{% file src="../../.gitbook/assets/Pseudostereo.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A stereo spatializer effect. Creates an artificial stereo effect that can be useful for giving some "depth" to mono recordings. Mono tracks must be converted to a 2 channel track before using the effect. To do so, click above the Mute and Solo buttons in the Track Control Panel, choose Edit > Duplicate then click on the name of the upper track and select "Make Stereo Track" from the dropdown menu.

Parameters:

1. **Select source channel:** \[Left (upper) or Right (lower)]
2. **Delay factor (%):** \[0 to 100, default 30] Higher values will produce a wider stereo effect but may sound echoey.
3. **Effect mix (%):** \[0 to 100, default 80] 0% = Dry (original signal with no effect), 100% = Wet (effect and no original signal). Higher settings will produce a more pronounced stereo effect but may leave a "hole" in the center of the stereo field. Lower values produce a more subtle effect with the original signal centered mid-stage.

</details>

### Ramp Panning

Evenly pan your stereo audio, starting at one point in the stereo field and ending at another.

{% file src="../../.gitbook/assets/Panramp.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Evenly pan your stereo audio, starting at one point in the stereo field and ending at another. -10 corresponds to 100% left, 0 to center and +10 to 100% right.

Parameters:

1. **Start position:** from \[where -10 - +10, default -10]
2. **End position:** from \[where -10 - +10, default +10]

</details>

### Repair Channel

For repairing damage to one channel of a stereo track by overwriting the damaged region with audio from the other channel

{% file src="../../.gitbook/assets/Repair_channel.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

For repairing damage to one channel of a stereo track by overwriting the damaged region with audio from the other channel. Select the damaged audio and allow additional space for cross-fading, then apply the effect.

The plugin includes an option for _Stereo Simulation_ which will often make repairs to stereo recordings less noticeable. For tracks that have little or no stereo channel separation and for synthesized tones, best results will probably be achieved with Stereo Simulation disabled.

Parameters:

1. **Which Channel to Repair:** \[Left Channel or Right Channel] The upper channel of a stereo pair is the Left channel.
2. **Stereo Simulation:** \[Enabled or Disabled]
3. **Cross-fade Time:** \[0% to 50%] 0% will cut directly from one channel to the other without fading. At 50% the fades will occupy the entire selection. For the default 20% fade, the selection should be at least 40% longer than the actual damage to be repaired.

</details>

### Stereo Butterfly (static)

The original Stereo Butterfly plugin which can be spread wide (1, full stereo), closed (0, sounding mono), or somewhere in-between

{% file src="../../.gitbook/assets/buttrfly.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

The original Stereo Butterfly plugin, the name coming from a butterfly's wings, which can be spread wide (1, full stereo), closed (0, sounding mono), or somewhere in-between. Stereo Butterfly can even mirror the left and right channels (-1... the butterfly's flipped!). And also anywhere between the extremes from -1 to 1.

Parameters:

1. **Stereo width** \[width, between -1.0 and +1.0]

</details>

### Stereo Butterfly (LFO)

Second in the Stereo Butterfly series. It takes stereo audio and makes it sound like the left and right channels are switching back and forth with each other.

{% file src="../../.gitbook/assets/buttrlfo.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Second in the Stereo Butterfly series. It takes stereo audio and makes it sound like the left and right channels are switching back and forth with each other. You can define the LFO (low frequency oscillator) rate. As in Stereo Butterfly (static), -1 is stereo channels fully flipped with each other, 0 sounds like mono, and 1 is full regular stereo. The difference here is that you can define two widths, so defining how you want the stereo to be manipulated over time. For instance, from -1 to +1 means Stereo Butterfly flips the left and right channels with each other at the frequency you set. If you set the two numbers at 0 and +1, the stereo audio will change between mono-sounding and regular stereo. Set at -1 and 0, the effect will be of fully flipped stereo changing to mono-sounding. Any other numbers you choose between -1 and +1 will give intermediate effects.

Parameters:

1. **LFO frequency:** \[between 0.01 and 20 Hz]
2. **Width1:** Stereo width from \[range from -1.00 to +1.00]
3. **Width2:** to Stereo width \[range from -1.00 to +1.00]

</details>

### Stereo Butterfly (ramp)

Third in the series of Stereo Butterfly plugins. As with the previous two, 0 setting sounds like mono, +1 is regular stereo, -1 is left and right channels flipped with each other.

{% file src="../../.gitbook/assets/buttrramp.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Third in the series of Stereo Butterfly plugins. As with the previous two, 0 setting sounds like mono, +1 is regular stereo, -1 is left and right channels flipped with each other.

Select which value to start at and which value to finish at. The default is from 0 to 1, which creates the effect of your stereo audio starting out sounding mono, then gradually widening to full stereo as the selection progresses. Start and finish values may lie anywhere between -1 and +1.

Parameters:

1. **Spread stereo from...** \[range from -1.00 to +1.00]
2. **to:** \[range from -1.00 to +1.00]

</details>

### Stereo Widener

Gives the illusion of widening stereo audio. The effect produces different results depending on whether you are listening to the audio through speakers or headphones, and the distance stereo speakers are apart.

{% file src="../../.gitbook/assets/widener.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Gives the illusion of widening stereo audio. The effect produces different results depending on whether you are listening to the audio through speakers or headphones, and the distance stereo speakers are apart. The widener works by inverting both left and right channels of stereo audio, then panning those inverted signals somewhere between the center pan position and the opposite channel.

Parameters:

1. **Inverted signal volume:** \[-48 dB - -6 dB, default -18 dB]
2. **Pan position:** \[0 (center) to -100 (opposite channel), default 0]
3. **Time offset:** \[0 - 20 ms, default 0] - applying an offset can enhance the illusion.

</details>

