# Special Effect Generators

## Binaural Tones with Surf 2

A sine tone of one constant frequency is generated in the left channel of a stereo track, and a series of changing tones of slightly different frequencies are generated in the right.

{% file src="../../.gitbook/assets/bitone2.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/bitone2.wav" %}
Binaural tones with Surf 2 audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A sine tone of one constant frequency is generated in the left channel of a stereo track, and a series of changing tones of slightly different frequencies are generated in the right. The differences between the left- and right-channel frequencies are termed "beat frequencies". In addition, a stereo "surf" noise is generated based on [pink noise](http://en.wikipedia.org/wiki/Pink\_noise). This is a lower-frequency "rushing" sound compared with "hissing" white noise.

Parameters:

1. **Left channel tone frequency:** \[50 - 1000 Hz, default 100].
2. **Beat frequency \[Hz], duration \[minutes], time to change to next beat frequency \[minutes]:** There are six of these edit fields in which you may enter up to three indicated values, separated by a space. The first of these edit fields has default values of 17.5 0.25 0.25 and must contain some non-zero value for duration. If you enter only a single value into any of the subsequent fields, the duration of that beat frequency will be zero. If you leave any of these edit fields blank they will be ignored. In the sixth field you may enter a final beat frequency and duration of that frequency.
3. **Adjust total time:** \[1 - 60 minutes, default = 0 (no adjustment)].
4. **Fade-in and fade-out times:** \[0 - 120 seconds, default 10]
5. **Stereo surf frequency:** \[0 - 2 Hz, default 0.1] - If this setting is above zero, the surf sound will be panned back and forth somewhere between the left and right audio channels at the specified frequency, how far depending on the sixth variable:
6. **Stereo surf spread:** \[0 - 100 percent, default 80] - The larger this number, the further the surf sound will move away from the center pan position (0% results in the surf sound remaining in the center).
7. **Tone to surf volume ratio:** \[0 - 100 percent, default 70] - adjusts the relative volume of the tones and surf sound. 0 = no tone (only surf) and 100 = no surf (only tone).

</details>

## Surf-LFO

An LFO surf generator.

{% file src="../../.gitbook/assets/surf-lfo.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/surf-lfo.wav" %}
Surf (LFO) audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

LFO Surf generator. A signal whose frequency is generally below the human ear's ability to hear as a tone, usually 20 cycles per second \[Hz]. Generates mono or stereo surf which sweeps between a lower and upper filter frequency. Stereo surf also sweeps back-and-forth somewhere between the left and right audio channels. To generate stereo surf, first open a new stereo track in Audacity

Parameters:

1\. **Mono or stereo surf:** \[1=mono 2=stereo]\
Mono surf is heard only in the center between the two speakers, or in the middle of your head when wearing headphones. Stereo surf sweeps back-and-forth somewhere between the two audio channels, depending on the next setting, Stereo Spread.

2\. **Stereo spread:** \[stereo only: percent]The larger this value, the more widely the stereo surf will move back-and-forth between the left and right audio channels. When this value is above zero, the deeper section of the surf sweep will be heard more in the left channel; below zero, the deeper section of the surf sweep will be heard more in the right channel.

3\. **Fade-in and fade-out times:** \[seconds]To smoothly fade in and fade out the volume at the start and end of the surf.

4\. **Surf duration:** \[minutes] (up to 60)

5\. **Surf type:** \[0=white noise 1=pink noise]White noise is more of a "hissing" sound, whereas pink noise is a lower "rushing" sound. Technically, white noise is "equal energy per frequency", whereas pink noise is "equal energy per octave"

6\. **Surf sweep frequency:** \[Hz]Sets how slow or fast the surf sweeps between the lower and upper filter frequencies, and the left and right channels \[for stereo surf].

7\. **Lower filter frequency:** \[Hz]\
8\. **Upper filter frequency:** \[Hz]\
Both the above determine how low and how high the low-pass filter sweeps the surf noise.

9\. **Bass frequency to boost:** \[Hz]You can boost the volume of frequencies of the surf sound below this setting, to get a deeper-sounding surf. Somewhat equivalent to the bass knob on your stereo.

10\. **Bass boost :** \[dB]Sets how much to boost the above bass frequency. 0 dB means no boost, 6 dB means double the amplitude of the bass frequency, and so on.\


</details>

## Surf-Oxy

A surf generator inspired by Jean-Michel Jarre's album _Oxygene_.

{% file src="../../.gitbook/assets/surf-oxy.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/surf-oxy.wav" %}
Surf (Oxygene) audio file
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

Jean-Michel Jarre put out a hauntingly beautiful electronic album in 1976, Oxygene. One section of this album had a repeating surf sound: a sweep from the right to the left audio channel, a pause, and then a deep crash in the right channel. After another pause, this cycle repeated many times. Very relaxing to listen to. This sound generator plug-in emulates that surf cycle, in either mono or stereo.

Start a new session of Audacity. To generate stereo surf, first open a blank stereo track&#x20;

Parameters:

1\. **Surf output:** \[1=mono 2=stereo]To generate mono or stereo Oxygene surf.

2\. **Stereo spread:** \[stereo only - percent]If you've chosen to generate stereo Oxygene surf, this setting will determine how widely the surf sweeps away from the center pan position. From +100 percent to -100 percent. Positive values make the sweep section go from the right to the left, with the crash in the right. Negative values reverse this pattern.

3\. **Fade-in and fade-out times:** \[seconds]Time to fade in and fade out the volume at the start and end of the surf, if you wish.

4\. **Number of Oxygene surf cycles:**How many Oxygene surf cycles to generate.

5\. **Surf type:** \[0=white noise 1=pink noise]White noise is a higher-frequency "hissing", whereas pink noise is a lower-frequency "rushing" sound.

6\. **Sweep starting filter frequency:** \[Hz]

7\. **Sweep ending filter frequency:** \[Hz]The above two parameters set the starting and ending frequencies for the low-pass filter to sweep the sweep portion of Oxygene surf. A low-pass filter allows frequencies below a certain value to pass, while frequencies above that value are attenuated, or reduced in volume.

8\. **Sweep duration:** \[seconds]This sets how slow or fast the sweep portion of Oxygene surf takes.

9\. **Post-sweep silence duration:** \[seconds]Duration of the silence after the sweep.

10\. **Crash filter frequency:** \[Hz]The low-pass filter frequency of the crash.

11\. **Crash bass frequency boost:** \[dB]How much to increase the volume of the above filter frequency and below. 0 dB means no boost, 6 dB means double the amplitude of this bass frequency, and so on.

12\. **Post-crash silence duration:** \[seconds]How much silence before the Oxygene surf cycle repeats.

</details>
