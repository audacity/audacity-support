# Sequence Generators

## Rndtone

Generates random sine waves.

{% file src="../../.gitbook/assets/rndtone.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/rndtone.wav" %}

<details>

<summary>Details</summary>

Author: Steven Jones.

Generates random sine waves. The generated tones have random frequencies, attack and decay times.

Parameters:

1. **Duration:** \[1 - 30 seconds, default 20]
2. **Density:** \[1 - 100 generated tones, default 60]
3. **Floor:** \[20 - 1000 Hz, default 300] - Lowest frequency of tones
4. **Ceiling:** \[20 - 1000 Hz, default 600] - Highest frequency of tones

</details>

## SQ1 Generator Sequencer

Algorithmic generator sequencer number 1.

{% file src="../../.gitbook/assets/sq1.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/sq1_generator_sequencer.wav" %}
SQ1 Generator Sequencer
{% endfile %}

<details>

<summary>Details</summary>

Author: Steven Jones.

Algorithmic generator sequencer number 1. Note also the [Audio Selection Sequencer 2](https://wiki.audacityteam.org/wiki/Nyquist\_Effect\_Plugins#Audio\_Selection\_Sequencer\_2) on the [Effect Plugins page](https://wiki.audacityteam.org/wiki/Nyquist\_Effect\_Plugins) which sequences _pre-existing_ audio samples. The sq1 sequencer generates complex sequences of tones by using the sum of three square-wave low frequency oscillators to frequency-modulate two oscillators. The oscillators output one of four waves (sine, tri, square and saw) and may be frequency adjusted relative to each other. The wave tables are not band-limited so [aliasing](http://en.wikipedia.org/wiki/Aliasing) will result for sufficiently high frequencies. There is also an overall three-stage amplitude envelope.

Parameters:

1. **Center:** \[0 - 10000 Hz, default 440] - the unmodulated carrier frequency
2. **Detune:** \[0.25 - 4.00, default 1.01] - the frequency of oscillator 2 relative to oscillator 1
3. **Wave:** \[0=sine, 1=tri (default), 2=square, 3=saw]. Wave shape for both oscillators
4. **Attack:** \[0 - 10 seconds, default 1]
5. **Sustain:** \[0 - 10 seconds, default 1]
6. **Decay:** \[0 - 10 seconds, default 1]
7. **f1:** Frequency of LFO 1
8. **a1:** Amplitude of LFO 1 - LFO amplitudes are calibrated in Hz indicating the corresponding frequency shift in the audio oscillators.
9. **f2:** Frequency of LFO 2
10. **a2:** Amplitude of LFO 2
11. **f3:** Frequency of LFO 3
12. **a3:** Amplitude of LFO 3

Note that the three LFOs are interchangeable.

</details>
