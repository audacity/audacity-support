# Generator Utilities

## Nyquist Generate Prompt

Nyquist Generate Prompt makes it easy for Nyquist developers to test their code for "Generate" plug-ins in one step.

{% file src="../../.gitbook/assets/generate.ny" %}
Download link
{% endfile %}

<details>

<summary>Details</summary>

Authors: Steve Daulton, Edgar Franke, Steven Jones and [David R.Sky](https://audionyq.com/david\_r\_sky)

Nyquist Generate Prompt makes it easy for Nyquist developers to test their code for "Generate" plug-ins in one step, unlike the Nyquist Prompt built into Audacity under the Effect menu, which requires several steps including pre-loading audio to test. Simply type your Nyquist generate code into the edit fields, then Left Click, TAB or SHIFT + TAB from one edit line to the next or previous line.

For example:

```
 (setq mysound (noise 10))
 (lp mysound (pwl 0 5000 10 100 10))
```

The first line generates 10 seconds of white noise and assigns it to the variable _"mysound"_.\
The second line applies a low-pass filter sweeping down from 5 kHz to 100 Hz over a period of 10 seconds to _"mysound"_.

</details>

## Tuning fork

A software tuning fork, with a table giving C notes and their equivalent MIDI note numbers near the top of the screen.

{% file src="../../.gitbook/assets/tuning.ny" %}
Download link
{% endfile %}

{% file src="../../.gitbook/assets/tuning_fork.wav" %}
Tuning fork audio sample
{% endfile %}

<details>

<summary>Details</summary>

Author: [David R.Sky](https://audionyq.com/david\_r\_sky)

A software tuning fork, with a table giving C notes and their equivalent MIDI note numbers near the top of the screen.

**Parameters:**

1. **Tone duration:** \[0 - 300 seconds, default = 120]
2. **Constant or fade out:** \[0=constant volume or 1=fade out, default = constant]
3. **MIDI or frequency:** \[0=MIDI 1=frequency, default = MIDI] - choose whether to generate tone with reference to a MIDI note number or a frequency. **Note:** Middle C = MIDI note 60, A above Middle C (440 Hz) = MIDI note 69.
4. **MIDI note:** \[16 - 127, default = 69] - You can use non-integer values here (such as 60.75)
5. **Frequency:** \[20 - 20000 Hz, default = 440]

</details>

