# Filters and EQ

### Band-Stop Filter

A band-rejection filter that passes most frequencies unaltered, but stops those in a specific range.

{% file src="../../.gitbook/assets/Bandstop.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A band-rejection filter that passes most frequencies unaltered, but stops those in a specific range.

Parameters:

**Center Frequency**: 100.0 to 10000.0 \[Hz]. Set the 'Center Frequency' slider, or type in a value for the center of the frequency band to block.

**Stop-Band Width**: 0.250 to 4.000 \[Octaves]. Set the Stop-Band Width to determine how wide the cut frequency band will be. Smaller numbers will produce a narrower 'notch' and larger numbers will cut a broader band of frequencies.

This filter uses steep high-pass and low-pass filters to achieve the band-stop effect. The filters iterate to improve the band-stop efficiency for narrow band width and can thereby perform close to total blocking down to almost 1/4 octave.

For even narrower notches a _notch filter_ should be used.

</details>

### Chebyshev Type I Filter

Type I Chebyshev filters can provide a steeper [roll-off](http://en.wikipedia.org/wiki/Roll-off) than [Butterworth filters](http://en.wikipedia.org/wiki/Butterworth\_filter) but at the expense of more [ripple](http://en.wikipedia.org/wiki/Ripple\_\(filters\)#Frequency-domain\_ripple) in the [passband](http://en.wikipedia.org/wiki/Passband).

{% file src="../../.gitbook/assets/ChebyI.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Kai Fisher

A [Chebyshev filter](http://en.wikipedia.org/wiki/Chebyshev\_filter) with options for high-pass or low-pass operation.

Type I Chebyshev filters can provide a steeper [roll-off](http://en.wikipedia.org/wiki/Roll-off) than [Butterworth filters](http://en.wikipedia.org/wiki/Butterworth\_filter) but at the expense of more [ripple](http://en.wikipedia.org/wiki/Ripple\_\(filters\)#Frequency-domain\_ripple) in the [passband](http://en.wikipedia.org/wiki/Passband). The plugin provides unity gain (except for ripple) in the passband. This plugin is capable of providing an exceptionally steep cut-off transition by selecting a "high order".

Parameters:

1. **Filter Type:** \[choice: Lowpass / Highpass] (default Lowpass)
2. **Order:** \[choice 2 to 30 in steps of 2] (default 6) The higher the "order" number, the steeper the cut-off transition from the passband to [stop band](http://en.wikipedia.org/wiki/Stopband).
3. **Cut-off Frequency:** \[1 to 48000 Hz] (default 1000 Hz). The actual filter frequency is limited to half of the track sample rate (the [Nyquist frequency](http://en.wikipedia.org/wiki/Nyquist\_frequency)). For example, if the track sample rate is 44100 Hz, then setting the Cut-off frequency to any value greater than 22050 will produce the same result as setting the frequency to 22050 Hz.
4. **Ripple:** \[0.0 to 3.0 dB] (default 0.05) Lower values will produce less ripple in the passband at the expense of a less steep cut-off. Higher values will produce a steeper cut-off but with more ripple in the passband. The difference in ripple and cut-off slope is likely to be most noticeable with low order filters and may be noticed as a slight boost or ringing in the passband just before the cut-off frequency.

When Ripple is set to zero, the passband response is essentially flat and the filter has the characteristics of a Butterworth filter.

The high-pass and low-pass filters may be used one after the other to produce a "flat topped" [band-pass](http://en.wikipedia.org/wiki/Band-pass\_filter) effect, in which the lower cut-off is provided by the high-pass filter and the upper cut-off provided by the low pass filter. The passband is the frequency band that passes between these two cut-off frequencies.

</details>

### Classic EQ

An Equalizer (EQ) that can modify more than one band at a time.

{% file src="../../.gitbook/assets/15bandEQ.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Authors: Josu Etxeberria and David R.Sky.

An Equalizer (EQ) that can modify more than one band at a time. You have 15 bands to choose from and can manipulate all of of them independently by moving their sliders.

</details>

### Comb Filter

The name 'comb' filter comes from how it acts on the audio spectrum it's applied to: it looks like a comb with the teeth pointing up.

{% file src="../../.gitbook/assets/comb.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

The name 'comb' filter comes from how it acts on the audio spectrum it's applied to: it looks like a comb with the teeth pointing up. For example, if you set the comb frequency at 1000 Hz, the comb filter emphasizes 1000 Hz as well as 2000, 3000, 4000 Hz and succeeding frequencies. Produces an 'airy' effect, which is more pronounced the higher the comb decay value is set, and resonance is increasingly produced as well.

A comb filter can be produced using flanger-like settings on a delay effect, but this filter does not use a delay to get the result, so it does sound somewhat different.

Parameters:

1. **Comb frequency:** \[Hz, 20 - 5000, default 440]
2. **Comb decay:** \[0 - 0.1, default 0.025]
3. **Normalization level:** \[0.0 - 1.0, default 0.95]

</details>

### Customizable EQ

Customizable single-band equalizer.

{% file src="../../.gitbook/assets/eqcustom.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Parameters:

1. **Center frequency:** \[Hz, 20 - 20000, default 440]
2. **Band width in octaves** \[octaves, 0.1 - 5.0, default 1.0]
3. **Gain:** \[dB, -48.0 - +48.0, default 0.0]
4. **Apply normalization?** \[Default = "no"]
5. **Normalization level:** \[0.0 - 1.0, default 0.95]

</details>

### Desk EQ

This equalizer is modelled on the EQ section of the Allen & Heath GL series mixing desk.

{% file src="../../.gitbook/assets/Desk-eq.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

This EQ is modelled on the EQ section of the Allen & Heath(TM) GL series mixing desk.

It is a 4-band EQ (equaliser) with two semi-parametric mids and provides independent control of four frequency bands plus a low frequency roll-off switch (HPF). Allen & Heath (along with Soundcraft and Neve) are well known for their distinctive "[British EQ](http://en.wikipedia.org/wiki/British\_EQ)". The two "mid" filters are bell shaped peak/dip filters which affect frequencies around a center point which can be swept from 500 Hz to 15 kHz, and 35 Hz to 1 kHz respectively. The width of the band is selected to provide effective control for both creative and corrective equalisation.

Parameters:

1. **100 Hz HPF:** (+/- 15 dB) attenuates frequencies below 100 Hz by 12 dB per octave. It may be used to reduce low frequency noise such as microphone popping, stage noise and tape transport rumble.
2. **HF Gain:** sets the gain of the high frequency shelf filter which boosts or cuts high frequencies. Positive values will tend to make the sound "brighter". Negative values will tend to make the sound less bright.
3. **High-Mid Frequency:** (500 Hz to 15 kHz) sets the center frequency of the high-mid band filter.
4. **High-Mid Gain:** (+/- 15 dB) sets the gain of the high-mid band filter.
5. **Low-Mid Frequency:** (35 Hz to 1 kHz) sets the center frequency of the low-mid band filter.
6. **Low-Mid Gain:** (+/- 15 dB) sets the gain of the low-mid band filter.
7. **LF Gain:** (+/- 15 dB) sets the gain of the low frequency shelf filter. Positive values will tend to give the sound more bass and negative values will reduce the bass.

</details>

### High Pass Filter with Q

A high pass filter with Q, or resonance.

{% file src="../../.gitbook/assets/highpass2.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A high pass filter with Q, or resonance. A high pass filter attenuates frequencies below a given cut-off point. The higher Q is, the more the cut-off frequency will resonate (produce a tone). Applied to white noise, both this filter and the low pass filter with Q can be used to produce wind-like sounds at a constant frequency. See the [high pass filter (LFO)](filters-and-eq.md#undefined) and low pass filter (LFO) for ability to modulate a fixed resonance cut-off frequency.

Parameters:

1. **Cut-off frequency:** \[20 - 10000 Hz, default 1000]
2. **Filter Q (resonance):** \[0 - 5, default 1]

</details>

### High Pass Filter (LFO)

A high pass filter with a low frequency oscillator (LFO).

{% file src="../../.gitbook/assets/hplfo.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A high pass filter with a low frequency oscillator (LFO). A high pass filter attenuates frequencies below a given cut-off point. The LFO in this plugin modulates the cut-off frequency up and down, like on an electronic synthesizer.

Parameters:

1. **LFO frequency:** \[0 - 20 Hz, default 0.2] - defines the speed of the oscillation, higher is faster
2. **Lower cut-off frequency:** \[20 - 20000 Hz, default 160]
3. **Upper cut-off frequency:** \[20 - 20000 Hz, default 2560]
4. **LFO starting phase:** \[-180 to + 180 degrees, default 0]

</details>

### High Pass Filter (LFO) - Alternative version

{% file src="../../.gitbook/assets/lfohp.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Parameters:

1. **Center cut-off frequency:** \[20 to 20000 Hz, default 640]
2. **LFO depth (radius):** \[0.0 to 10.0, default 1] - how far (in octaves) from center f the filter sweeps.
3. **LFO frequency:** \[0.0 to 20.0, default 0.2]
4. **LFO starting phase:** \[-180 to + 180 degrees, default 0]

</details>

### Hum Remover

A filter for removing the sound of [mains hum](https://en.wikipedia.org/wiki/Mains\_hum) from recordings.

{% file src="../../.gitbook/assets/De-hum.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A filter for removing the sound of [mains hum](https://en.wikipedia.org/wiki/Mains\_hum) from recordings.

The frequency of mains electricity is 60 Hz in the US, 50 Hz in Europe. This can create electrical interference in recordings with many [harmonics](https://en.wikipedia.org/wiki/Harmonic). To remove the hum, this effect applies a series of notch filters based on the frequencies of mains electricity and the harmonics, which have frequencies that are at exact multiples of that frequency.

To minimize loss of audio data, the number of harmonics may be adjusted so that only as many notches as required to eliminate the audible hum are applied. There are often more odd harmonics than even harmonics, so this effect allows the number of odd and even harmonic filters to be set independently.

Unless the amount of hum is very bad, high level audio will often mask the hum, making removal unnecessary, but during quiet parts of the recording the hum may be unpleasantly obtrusive. This effect therefore has a threshold level control so that only quiet sounds (where the hum will be most noticeable) are filtered.

Parameters:

1. **Select Region:** \[Europe (50Hz) or USA (60Hz), default 50Hz] - Sets the fundamental hum frequency.
2. **Number of odd Harmonics:** \[0 to 200, default 1] - The first harmonic is 50 or 60 Hz depending on the region selected.
3. **Number of even Harmonics:** \[0 to 200, default 0] - The number of even harmonics to filter.
4. **Hum Threshold Level (0 to 100%):** \[0 to 100, default 10] - The signal level, as a percentage of 'full scale' below which the filters are applied.

</details>

{% hint style="info" %}
The [Plot Spectrum](https://manual.audacityteam.org/man/analyze\_menu.html#spectrum) effect can often provide a useful guide as to which frequencies need to be removed.

First, select 50 or 60 Hz with the first control as appropriate, then set the other controls to maximum. Preview the effect frequently while reducing one control at a time to find the _**minimum**_ settings required to remove the hum.
{% endhint %}

### Low Pass Filter (LFO)

A low pass filter with a low frequency oscillator (LFO).

{% file src="../../.gitbook/assets/lplfo.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A low pass filter with a low frequency oscillator (LFO). A low pass filter attenuates frequencies above a given cut-off point. The LFO in this plugin modulates the cut-off frequency up and down, like on an electronic synthesizer.

Parameters:

1. **LFO frequency:** \[0 - 20 Hz, default 0.2] - defines the speed of the oscillation, higher is faster
2. **Lower cut-off frequency:** \[20 - 20000 Hz, default 160]
3. **Upper cut-off frequency:** \[20 - 20000 Hz, default 2560]
4. **LFO starting phase:** \[-180 to + 180 degrees, default 0]

</details>

### Low Pass Filter (LFO) - Alternative version

{% file src="../../.gitbook/assets/lfolp.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Parameters:

1. **Center cut-off frequency:** \[20 20000 Hz, default 640]
2. **LFO depth (radius):** \[0.0 to 10.0, default 1] - how far (in octaves) from center f the filter sweeps.
3. **LFO frequency:** \[0.0 to 20.0, default 0.2]
4. **LFO starting phase:** \[-180 to + 180 degrees, default 0]

</details>

### Low Pass Filter with Q

A low pass filter with Q, or resonance.

{% file src="../../.gitbook/assets/lowpass2.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A low pass filter with Q, or resonance. A low pass filter attenuates frequencies above a given cut-off point. The higher Q is, the more the cut-off frequency will resonate (produce a tone). Applied to white noise, both this filter and the high pass filter with Q can be used to produce wind-like sounds at a constant frequency. See the [low pass filter (LFO)](filters-and-eq.md#low-pass-filter-lfo) and [high pass filter (LFO)](filters-and-eq.md#high-pass-filter-lfo) for ability to modulate a fixed resonance cut-off frequency.

1. **Cut-off frequency:** \[20 - 10000 Hz, default 1000]
2. **Filter q (resonance):** \[0 - 5, default 1]

</details>

### Multiband EQ

A multiband equalizer.

{% file src="../../.gitbook/assets/multibandeq.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Select total number of bands (T, from 2 to 30), band number (1 to 30, depending on how many total bands T you chose), and apply gain (-24 to +24 db). Determines width of band depending on total band number T you chose.

</details>

### Mutron

Loosely based on the Mutron stomp box from the late 70's. Basically it is a filter controlled by an envelope follower.

{% file src="../../.gitbook/assets/Mutron.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steven Jones.

Loosely based on the Mutron stomp box from the late 70's. Basically it is a filter controlled by an envelope follower.

Parameters:

1. **Center/Cut-off:** \[0 - 10000 Hz, default 100] - sets the static filter frequency
2. **Depth:** \[-10000 - +10000 Hz, default 5000] - sets the negative or positive filter modulation depth
3. **Band Width:** \[50 - 400 Hz, default 100] - controls the resonance, lower values being more resonant
4. **Mode:** \[0="Low" 1="High" 2="Notch" 3="Band" (default)] - sets the filter mode: 0 = "Low pass", 1 = High pass, 2 = Band Reject (cut a notch at the filter frequency), 3 = Band Pass

</details>

### Notch Filter

A notch filter cuts out a "notch" in the spectrum of your audio.

{% file src="../../.gitbook/assets/notch.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Authors: Steve Daulton and Bill Wharrie.

Like its name suggests, a notch filter cuts out a "notch" in the spectrum of your audio. The default frequency (60 Hz) can remove much of the hum that recordings can acquire from 60 Hz mains supply (as used in North and Central America and much of South America). You can set Frequency to 50 Hz to counteract mains hum in other countries. See [chart of mains frequencies by country](http://en.wikipedia.org/wiki/Mains\_power\_around\_the\_world#Table\_of\_mains\_voltages\_and\_frequencies).

Filter frequencies above 10000 Hz may be entered by typing the value but are only valid up to half of the sample rate of the audio being processed. Q values outside of the slider range can be entered by typing the values but must be greater than 0.01.

Parameters:

1. **Frequency:** \[0 - 10000 Hz, default 60 Hz]
2. **Q:** \[0.1 - 20.00, default 1.00] - determines the width of the notch. Below 1 creates a wider notch, above 1 creates a narrower notch.

</details>

### Parametric EQ

A parametric equalizer is a variable equalizer effect which provides control of three parameters: amplitude, center frequency and bandwidth.

{% file src="../../.gitbook/assets/Parametric.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton and Bill Wharrie

A parametric equalizer is a variable equalizer effect which provides control of three parameters: amplitude, center frequency and bandwidth. This plugin provides control of one frequency band that can be "tuned" to a user defined center frequency. The width of the affected frequency band may be adjusted with the "Width" control and the defined frequency band may be boosted or attenuated according to the "Gain" control.

Parameters:

1. **Frequency (Hz):** \[10 to 10000 Hz, default 1000 Hz] - sets the center frequency of the filter
2. **Width:** \[0 to 10, default 5] - determines the width of the affected frequency band. Greater width settings affect a broader range of frequencies. Smaller width affects a narrower band of frequencies. Numerically the width setting is approximately the half gain width in half octaves, thus the default setting of 5 has a half gain width of approximately 2.5 octaves.
3. **Gain (dB):** \[-15 to +15 dB, default 0 dB (no effect)] - how much the filter center frequency is boosted or attenuated.

</details>

### Random Low Pass Filter

Like someone is playing around with the cut-off frequency knob of your low pass filter.

{% file src="../../.gitbook/assets/randomlp.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Like someone is playing around with the cut-off frequency knob of your low pass filter. Because of the way the random signal is generated, the lower the maximum speed is, the higher the depth factor must be to produce a similar depth of filtering changes. If you generate white noise then apply this effect, you can to some extent simulate constant pitch wind noise.

Parameters:

1. **Max filter sweep speed:** \[0.01 - 10.0 Hz, default 0.2] - maximum speed of the random filter cut-off changes
2. **Filter depth factor:** \[1 - 300, default 20] - how extreme the random filter cut-off changes are
3. **Maximum cut-off frequency:** \[20 - 5000 H, default 2000] - the filter's maximum cut-off frequency

</details>

### Resonant Filter

A filter with low pass, high pass and band pass options with a "resonance" control.

{% file src="../../.gitbook/assets/Resonant.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A filter with low pass, high pass and band pass options with a "resonance" control.

Audio filters are commonly designed to have a smooth frequency response that is essentially flat in the pass band then rolls off to a lower level in the stop band, but in some cases it is desirable to use a filter that has a peak and accentuates frequencies close to the defined filter frequency. Such filters are commonly used in sound synthesis to cause "ringing" at specified frequencies. This tends to be most effective with sounds that have complex frequency content, such as noise.

Parameters:

1. **Filter frequency:** \[1 to 20000 Hz] (default: 1000 Hz) - The corner frequency of the filter. The frequency must be below the Nyquist Frequency (half the sample rate) or an error message will be displayed.
2. **Resonance (Q):** \[0.1 to 100] (default: 10) - The amount of resonance. Higher values will produce a more pronounced and narrower peak at the corner frequency. Lower values will produce a less prominant peak with values below 0.7 showing no peak at all.
3. **Filter type:** \[choice: Low Pass, High Pass, Band Pass] (default: Low Pass) - Low pass allows frequencies below the corner frequency to pass through the filter and reduces frequencies above the corner. High Pass allows frequencies above the corner to pass and reduces frequencies below the corner. Band Pass reduces frequencies that are below the corner and reduces frequencies that are above the corner, allowing only a band of frequencies around the corner frequency to pass.
4. **Output Gain:** \[-60 to 0 dB] (default -12 dB) - Because the resonance accentuates frequencies around the corner frequency it is often necessary to reduce the output level of this effect. Lower (more negative) values reduce the level more.

</details>

### Shelf Filter

A shelf filter with options for high shelf, low shelf or mid-band.

{% file src="../../.gitbook/assets/Shelf.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

A shelf filter with options for high shelf, low shelf or mid-band.

Low-shelf filter passes all frequencies, but increases or reduces frequencies below the shelf frequency by specified amount. High-shelf filter passes all frequencies, but increases or reduces frequencies above the shelf frequency by specified amount. Mid-band shelf filter passes all frequencies, but increases or reduces frequencies between the low and high cut-off frequencies by specified amount.

Parameters:

1. **Filter type:** \[low-shelf / high-shelf / mid-band] - specifies which type of filter
2. **Low frequency cut-off:** \[1 to 10000 Hz] - The corner frequency for the low shelf filter, or the lower corner frequency for the mid-band filter.
3. **High frequency cut-off:** \[0.1 to 20 kHz] - The corner frequency for the high shelf filter, or the upper corner frequency for the mid-band filter. The high frequency cut-off must be less than half the track sample rate.
4. **Filter gain:** \[+/- 30 dB] - how much to boost or cut the filtered audio. Positive values boot and negative values reduce the level.

</details>

### Ten Band EQ

An Equalizer (EQ) that can modify one band at a time.

{% file src="../../.gitbook/assets/10bandeq.ny" %}
Download Plugin
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

An Equalizer (EQ) that can modify one band at a time. Select the **band number** (1 to 10) and **gain** (-24 to +24 dB).

</details>

### Vocal reduction and isolation

{% hint style="danger" %}
Warning: This effect can cause data loss on macOS. See [#5864](https://github.com/audacity/audacity/issues/5864) for details.
{% endhint %}

This is the vocal reduction and isolation effect that was included in Audacity prior version 3.5.&#x20;

{% file src="../../.gitbook/assets/vocalrediso.ny" %}
Download plugin
{% endfile %}

<details>

<summary>Details</summary>



_**Vocal Reduction and Isolation**_ attempts to remove or isolate center-panned audio from a stereo track. Vocals are sometimes (but not always) recorded in this way. The simplest and quickest removal method subtracts one channel from the other, but the result will be (dual) mono. This method is available at "Remove Center Classic: (Mono)" under Action. All other "Remove" options in this effect preserve the stereo image.

The **Isolate** options all return (dual) mono output. The narrowness of the center slice can be adjusted with the "Strength" slider. Center isolation is not possible using the classic subtraction method.

The **Analyze** option displays the amount of correlation between the stereo channels and the degree of likelihood that center removal or isolation will work effectively.

**WARNING:** Note carefully that when you apply an effect to a **time-stretched clip** the changed speed of the clip will be automatically **rendered**.

* If you apply an effect to a selection within a time-stretched clip then Audacity will **split the original clip** so that the selection can be rendered as part of applying the effect.

### Action

#### Bandwidth Limited Actions <a href="#bandwidth_limited_actions" id="bandwidth_limited_actions"></a>

WARNING: The Low Cut and High Cut sliders affect these actions.

* **Remove Vocals: to mono:** (default). If the audio is center-panned, removes the vocal range defined by the Low Cut and High Cut sliders, and returns it as a dual-channel mono track. Audio is said to be "_center-panned_" if it is common to both left and right channels. _Cancellation_ of center panned audio is achieved by the well known "invert and mix" method.

NOTE: This option is usually much quicker than the other actions because the processing is much simpler.

* This setting is identical to the **"Vocal Remover** > Remove frequency band" effect in previous versions of Audacity.
* The Strength slider is **not** used when "Remove Vocals: to mono:" is selected.

<!---->

* **Remove Vocals:** If the audio is center-panned, removes the vocal range defined by the Low Cut and High Cut sliders, and returns it as a stereo track.

<!---->

* **Isolate Vocals:** If the audio is center-panned, extracts the slider-defined vocal range and returns it as a (dual) mono track.

<!---->

* **Isolate Vocals and Invert:** If the audio is center-panned, extracts the slider-defined vocal range and returns it as an inverted (dual) mono track.

HINT: **Inverting** a waveform is the action of flipping the audio samples upside-down, reversing their polarity. The positive samples (above the horizontal zero line in the Audacity Waveform) are moved below the zero line (so becoming negative), and negative samples are made positive.

* This option is equivalent to applying the **Isolate Vocals** option and then inverting.
* The "and Invert" options may be useful when processing using duplicated tracks. See the examples below.

#### Full Spectrum Actions <a href="#full_spectrum_actions" id="full_spectrum_actions"></a>

WARNING: The Low Cut and High Cut sliders have no effect with these actions.

* **Remove Center: to mono:** Removes all audio (the whole frequency spectrum) that is common to both left and right channels and returns a (dual) mono track. _Cancellation_ of center panned audio is achieved by the well known "invert and mix" method.

NOTE: This option is usually much quicker than the other actions because the processing is much simpler.

* This setting is identical to the "**Vocal Remover** > entire spectrum" effect in previous versions of Audacity.
* _**None**_ of the sliders are used when "Remove Center: to mono" is selected.

<!---->

* **Remove Center:** Removes all audio (the whole frequency spectrum) that is common to both left and right channels and returns a true stereo track.

<!---->

* **Isolate Center:** If the audio is center-panned, extracts the whole frequency spectrum and returns it as a (dual) mono track.

<!---->

* **Isolate Center and Invert:** If the audio is center-panned, extracts the whole frequency spectrum from and returns it as an inverted (dual) mono track.

INFO: This option is equivalent to applying the **Isolate Center** option and then inverting.

#### Analysis Action <a href="#analysis_action" id="analysis_action"></a>

* **Analyze:** Tells you how great the chances are of a successful vocal reduction or isolation. It returns also the average Pan position for the selected audio. See below for an in-depth explanation.

NOTE: This option only analyzes the audio. The selected audio is not modified by the effect.

### Strength

The shape of the center is not a thin band but rather like a tent with a pole in the middle. This means that there will always audio from other pan positions included. The **Strength** slider modifies the shape of the center. Higher values increase the degree of reduction or isolation. Zero is off (no reduction or isolation). This slider has no effect with the "Remove Center Classic: (Mono)" choice.

#### Remove

* **Less than 1.0:** Produces a notch with a _**V**_ shape like a ship's keel, but also with a sharp point. Use this setting to preserve some amount of the center.
* **1.0 - the default:** Produces a notch with a _**V**_ shape. The power distribution is preserved. This is the ideal setting for most cases.
* **Greater than 1.0:** Produces a notch with a _**U**_ shape. This removes some audio adjacent to the center, as well as the center. Note that this will not remove stereo reverberation since it is distributed over the entire pan width.

#### Isolate

* **Less than 1.0:** Produces a peak like a _**U**_ shape upside down, similar to an arch. Only extreme left and right are eliminated.
* **1.0 - the default:** Produces a peak like a **''V**'' shape upside down. The power distribution is preserved. You might want a higher value when a lot of side audio leaks in. This is also the recommended setting when working with two tracks (options with **...and Invert**).
* **Greater than 1.0:** Produces a peak with an _**A**_ shape like the Eiffel Tower (with a sharp point). This will attenuate most of the side energy but might produce artifacts or musical noise. Normalize the audio after using Isolate with a high strength setting.

### Low Cut for Vocals <a href="#low_cut_for_vocals" id="low_cut_for_vocals"></a>

All actions with **Vocals** in the name use this value. The frequencies below will either not be removed or not be included in the isolated audio. It is useful to exclude bass and kick drum. The default value of 120 Hz is good for most lead vocals, or even low male voices. You can enter a higher value around 170 Hz for female voices and about 230 Hz for those of children. NOTE: This control only affects "Actions" that contain the word **Vocals** in their name.

### High Cut for Vocals <a href="#high_cut_for_vocals" id="high_cut_for_vocals"></a>

All actions with **Vocals** in the name use this value. The frequencies above will either not be removed or not be included in the isolated audio. It is useful to exclude high sounds like bells, cymbals or Hi-hat. Note that human sounds like **S** or **Z** can also be very high in frequency - 5000 to 8000 Hz, so listen carefully to the preview. NOTE: This control only affects "Actions" that contain the word **Vocals** in their name.

### Interpreting the analysis results <a href="#interpreting_the_analysis_results" id="interpreting_the_analysis_results"></a>

It is recommended to analyze the audio prior to actual processing of the effect. Analysis is very fast compared to the time needed for processing.

The two important values are:

* **Pan Position:** This gives the average pan position for the whole selected audio. The value of the track pan slider is not included in this calculation.
* **Correlation:** This is a measure for the similarity of the two channels. Values of +/-100 mean that the channels are exactly the same, even if one is inverted. A value of 0 means no relationship. It is fruitless to attempt removal or isolation in these cases. The ideal value is normally around +50. Values below 0 are rare and indicate that the stereo width is more than 100%. Inverting one channel makes the correlation positive.

NOTE Sometimes the lead vocals are not exactly in the middle. In this case, select a short portion of audio where only the voice is audible and no other instrument. Choose **Analyze**.

1. The correlation should be fairly high (around 100) which would indicate that there is indeed only the voice.
2. Copy the value for the Pan Position. Double-click in the Pan slider to open the adjustment dialog then paste in the value with reversed sign (that is, put a minus sign in front of a positive value and a positive sign in front of a negative value).
3. Mix and render the track. The voice will now be exactly centered and you can remove or isolate it.
4. Do not forget to readjust the selection.

### Limitations

* The input must be a true stereo track and not mere (dual) mono.
* Stereo Reverberation will not be fully removed because it is independently distributed over the whole stereo image.
* Naturally the plug-in does not know what kind of audio is in the center. All is removed or isolated equally, whether vocals, bass or solo instruments.
* This effect is quite slow, except for the _"Remove Center Classic: (Mono)"_ and _"Analyze"_ actions.

WARNING: The whole processing is done in memory. Long selections (over half an hour) might therefore cause Audacity to crash.

### Examples

This effect can be used in a variety of ways:

* Creating a Karaoke version from an original song\
  Choose **Remove Vocals** if you want to keep some bass and drum beat.

<!---->

* Creating an acapella version from an original song\
  Choose **Isolate Vocals** with a high Strength value. The result will probably still have some music in it. It is therefore better suited for a remix with a different accompaniment. Pure vocal versions have to be post-processed with other tools. &#x20;

<!---->

* Alternative to "Auto Duck" with podcasts\
  Duplicate the track and choose **Isolate Center and Invert** on the second track. Record your voice. Silence the second track where you do not speak and the original music should be heard. On the same track, make fades at the boundaries (where the speech starts or stops).  &#x20;

<!---->

* Removing excessive stereo reverb from a vocal or instrument track.\
  Use **Isolate** to make a single vocal or instrument track "dry" again.  &#x20;

<!---->

* Removing random system noise from a two channel recording of a mono source.\
  use **Isolate** to remove random noise produced by the audio interface, the cables or the computer itself.

<!---->

* Removing single words or phrases\
  You can remove offending content from a song or movie dialog by selecting it and choosing **Remove Vocals**. Mask it with other sounds, if necessary.

<!---->

* Amplifying dialogs in a movie.\
  Duplicate the track, isolate the vocals and adjust the gain.

<!---->

* Converting stereo files into 3.1, 5.1 and other multi-channel formats.\
  Duplicate the track and choose "Isolate Center and Invert" on the second track. Render all to a new track. Delete the first track, invert the second track and split the third track. Rearrange the tracks accordingly. Thus you end up with "Front Left", "Center" and "Front Right" eventually.

<!---->

* Extracting instrument solos\
  Isolate the center if the solo is there, otherwise remove the center, split to mono and delete the superfluous track.

<!---->

* Blending between original, karaoke version and vocals only\
  Duplicate the track and choose **Isolate Vocals and Invert** on the second track. Choose the envelope tool or fade effects to gradually change from one mode to the other. Silencing the first track results in the vocals being isolated. Silencing the second track produces the original audio. Playing both tracks together removes the vocals.

<!---->

* Correcting the pan position\
  Analyze the whole track and copy the value for the pan position. Paste the value into the pan dialog and reverse the sign, that is, set a minus sign in front of positive values and vice versa.

<!---->

* Measuring similarity between two mono tracks\
  Make the two tracks stereo and choose **Analyze**. The correlation value is the measure for the similarity in percent.

<!---->

* Applying a brick wall filter to mono tracks\
  Duplicate a mono track, make it stereo and choose **Isolate Vocals** for band pass and **Remove Vocals** for band stop filtering. Adjust the frequencies accordingly.

</details>
