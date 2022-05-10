# Noise Generators

## Harmonic Noise

Generates approximately harmonic tones by mixing narrow bands of noise

{% file src="../../.gitbook/assets/harmonicnoise.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/harmonic_noise.wav" %}
Harmonic noise audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: Steven Jones.

Generates approximately harmonic tones by mixing narrow bands of noise. For each note in the MIDI note list an n-partial tone is produced. Each partial of each tone is actually a narrow band of noise centered at the ideal harmonic frequency. The center frequency of each band is harmonically related to the fundamental and the amplitude decreases inversely with the harmonic number.

Parameters:

1. **MIDI Note List:** \[c2 c3 ef4 g4 bf4 c5] - MIDI notes may be specified either as integers or using the Nyquist constants 'g3' for third octave g, 'bf4' for fourth octave b flat, 'gs2' for second octave g sharp and so on.
2. **Number of Harmonics:** \[1 - 32, default 8] - that is, the number of partials for each note generated
3. **Duration:** \[1 - 30 seconds, default 10]
4. **Band Width:** \[1 - 1000 Hz, default 2] - depending on the width of this noise band, the result can sound very noisy or distinctly tonal with a heavy chorusing effect.
5. **Odd Harmonics Only:** \[0 = all harmonics (default), 1 = odd-numbered harmonics only]

</details>

## Narrowband Noise

Narrowband Noise generates noise within a specified frequency range by ring-modulating a sine wave with low-pass filtered noise. The effect is like band-pass filtered noise.

{% file src="../../.gitbook/assets/Noiseband.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/narrowband_noise.wav" %}
Narrowband noise audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton (after "Noise Band" by Steven Jones).

Narrowband Noise generates noise within a specified frequency range by ring-modulating a sine wave with low-pass filtered noise. The effect is like band-pass filtered noise.

Parameters:

1. **Center Frequency (Hz):** \[10 to 10000 Hz, default 440]
2. **Bandwidth (Hz):** \[1 to 10000 Hz, default 50]
3. **Amplitude (0 - 1):** \[0 to 1, default 0.8]
4. **Duration (minutes):** \[0 to 20 minutes, default 0]
5. **Duration (seconds):** \[0 to 60 seconds, default 30]
6. **Stereo Output:** \[No / Yes, default No]

To generate true stereo noise (left and right channels different), a stereo track must be selected and the Stereo Output control must be set to "Yes". As with all Nyquist generator plug-ins, if a track is not selected, Audacity will create a mono track and attempt to place the generated sound into that track. If Stereo Output is set to yes and a stereo track is not selected the plug-in will return the error message: _**"Nyquist returned too many audio channels."**_

</details>
