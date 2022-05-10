# Instrument Sound Generators

## Fire and Explosion sounds

Emulates a Korg MS-10 synthesizer patch.

{% file src="../../.gitbook/assets/Firex.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/fire_explosion.wav" %}
Fire and explosions audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Emulates a Korg MS-10 synthesizer patch.

Parameters:

1. **Audio type:** \[0=fire 1=explosion, default=1]
2. **Sound duration:** \[0.1 to 60 seconds, default=3]
3. **Attack time:** \[0 to 500 milliseconds, default=50]
4. **Explosion decay time:** \[0 to 500 milliseconds, default=500]
5. **Decay down to this level:** \[1 to 100 %, default=30]
6. **Cutoff frequency:** \[100 to 10000 Hz, default=3800]
7. **Filter quality:** \[Q: 1 to 20, default=10]
8. **Bass boost frequency:** \[10 to 1000 Hz, default=300]
9. **Bass boost:** \[0 to 60 dB, default=30]
10. **Clipping amount:** \[0 to 99 %, default=55]

</details>

## KLSTRBAS

KLSTRBAS (for "cluster bass") generates dense sounds by combining several waveforms with a fixed frequency ratio between them.

{% file src="../../.gitbook/assets/klstrbas.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/KLSTRBAS.wav" %}
Cluster bass audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: Steven Jones.

KLSTRBAS (for "cluster bass") generates dense sounds by combining several waveforms with a fixed frequency ratio between them. Early Roland drum machines created cymbal sound in part by combining multiple square waves with non-integral frequency ratios. The combined signal was then high-pass filtered to produce a very dense cluster of high frequency harmonics. The genesis of KLSTRBAS was a failed attempt to create cymbal sounds using this technique.

Parameters:

1. **MIDI key:** \[0 - 127, default 45]
2. **Decay:** \[0 - 30 whole seconds, default 2]
3. **Fractional Decay:** \[0 - 99 hundredths of a second, default 0] - synth kick drum sounds can be produced by setting Decay time to zero and fractional decay to a low value.
4. **Density:** \[1 - 6, default 4] - Sets the number of component waveforms, defined as four times the density value. Higher densities produce a deeper flange effect but can also cause the sound to go out of tune.
5. **Detune:** \[0 - 99, default 0] {these two parameters affect the relative
6. **Flange:** \[0 - 4, default 2] frequencies of the component waveforms}
7. **Wave table:** \[0=sine 1=tri 2=sqr 3=saw (default}] - type of component waveform. These are not band limited so [aliasing](http://en.wikipedia.org/wiki/Aliasing) may result if either MIDI key or generated frequencies are too high.

_Technical note:_ The frequency of each component is determined by the MIDI key number and the detune and flange parameters. Specifically the nth component has a frequency of:\
p \* (1 + d/100 + g)^n where:\
p is the fundamental frequency determined by the key number,\
d is the detune amount 0 <= d <= 99, and\
g is derived by the flange parameter (g = 1/(10^(4-f)) for flange value f)

</details>

## Pluck (Hz)

Pluck generates a synthesized pluck tone with abrupt or gradual fade-out.

{% file src="../../.gitbook/assets/Pluck-hz.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/pluck_hz.wav" %}
Pluck (Hz) audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky) and Steve Daulton.

Pluck generates a synthesized pluck tone with abrupt or gradual fade-out. The sound is the same as the [Pluck effect](https://manual.audacityteam.org/o/man/pluck.html) that is shipped with Audacity, except that the pitch of the note is determined by entering a frequency in Hz (cycles per second) rather than a MIDI note.

Parameters:

1. **Pluck frequency (Hz):** \[10 to 10000, default 261.626] The default frequency is equivalent to MIDI note 60.
2. **Fade-out type** \[abrupt or gradual, default "abrupt"] Determines how rapidly the pluck sound decays.
3. **Duration \[seconds]:** Specifies the length of the pluck sound. The default is 1.0 second.

A table showing the relationship between note names, MIDI note numbers, and frequency (A440 standard tuning) is available [HERE](http://subsynth.sourceforge.net/midinote2freq.html).

</details>

## Risset Bell

Simulates a realistic bell tone based on the pioneering work of Jean Claude Risset.

{% file src="../../.gitbook/assets/rbell.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/risset_bell.wav" %}
Risset bell audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: Steven Jones.

Simulates a realistic bell tone based on the pioneering work of Jean Claude Risset. This plug-in is an adaptation of a demonstration lisp file by Pedro Jose Morales contained in the standard Nyquist distribution.

Parameters:

1. **MIDI key:** \[0 - 127, default 72]
2. **Decay:** \[0 - 30 seconds, default 10]
3. **Fractional Decay:** \[0 - 99 hundredths of a second, default 0]

</details>
