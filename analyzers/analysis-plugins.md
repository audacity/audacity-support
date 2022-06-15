# Analysis plugins

## Plugin Suites

### Vamp Plugin Pack

A plugin collection for various Vamp Analyzers. The plugins included are all open source software developed and published by various different authors and institutions:

* BBC
* Carl Bussey
* Chris Cannam
* Jamie Bullock
* Marsyas Plugins
* Matthias Mauch
* Paul Brossier
* Queen Mary, University of London
* Simon Dixon and Chris Cannam
* University of Alicante

Download page:

{% embed url="https://www.vamp-plugins.org/pack.html" %}

## Individual Analyzers

### ACX Check

This analyzer was developed as an aid for audiobook producers. It displays a number of useful statistics about the selected audio, and compares them to the specifications published by [ACX](https://www.acx.com/help/acx-audio-submission-requirements/201456300) (an Amazon.com subsidiary).

{% file src="../.gitbook/assets/ACX-Check.ny" %}
Download&#x20;
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

Based on a plug-in by Will McCown.

#### Displayed Results

* **Peak leve**l\
  Maximum peak level in the selection&#x20;
* **RMS level**\
  The RMS level of the selected audio.&#x20;
* **Noise floo**r\
  The RMS level of the quietest 500 milliseconds in the selection&#x20;
* **Warnings**: _(These are only displayed when applicable.)_
  * Warning: ACX require 44100 Hz sample rate.&#x20;
  * Warning: ACX require running time no longer than 120 minutes&#x20;
  * Noise floor: -inf dB Warning (too low - Dead silence sounds unnatural.) \
    ACX require constant, low level "room tone" rather than an unnaturally silent background noise level.

#### **Limitations**

* This tool is intended only as an aid in achieving ACX acceptance. Even straight passes from this tool is NO guarantee of ACX acceptance.
* The Noise Floor measurement is taken from the quietest half second of audio found in the selection. If one part of the selection is quieter than the rest, you will get a false value.
* Minimum selection length is 1/2 second.
* Maximum selection length is about 2.14 billion samples (13.5 hours at a sample rate of 44100 Hz)

Also beware that some noise sources are worse than others, and noise such as the 1000 Hz whine that often happens in USB audio interfaces may result in an ACX rejection even though it is below the -60 dBFS noise floor requirement.

</details>

### MAAT GON

A Goniometer, also known as XY-Oscilloscope or Phase Scope.&#x20;

**Note:** Requires registration. This Analyzer can be found in the Effects category.

{% embed url="https://www.maat.digital/gon/" %}
Download&#x20;
{% endembed %}

<details>

<summary>Details</summary>

©2020 MAAT Incorporated, All rights reserved.

Information from the vendor:

_This “phase scope” plug–in quickly conveys global trends and troubles, with a visual out–of–phase warning built in. Plus, an optional autogain feature insures that you’ll see an understandable display with a very wide range of input amplitudes._

_Usable metering is essential for any engineer, and GŌN’s options are equally practical, with a notable absence of controls. Unlike an oscilloscope which takes up room on your producer’s desk or meter bridge, GŌN’s lack of any knobs or switches means its straightforward user interface contains only a single button, the preference’s gear icon at upper right. Control over gain, focus, “phosphor” color, drawing style and persistence are all there in the preferences, and everything can be saved as a personal preset._

_All of GŌN’s functionality is wrapped in an information-rich yet visually unobtrusive user interface that occupies only a small slice of screen real estate. Likewise, the plug-in is very "light weight" demanding an absolute minimum of CPU resources so it won´t slow down your host. As a bonus to everyone in the audio community, we’re giving you this free and rather useful plug-in. Thanks for visiting, and we hope to see more of you in the future!_

\


</details>

### Peak Finder rft

Either places a single label at the first instance of a peak volume, or multiple labels at all the instances of that peak.

{% file src="../.gitbook/assets/Peakfinder-rft.ny" %}
Download
{% endfile %}

<details>

<summary>Details</summary>

Author: Edgar-rft.



#### Parameters

1. **Place labels at:** \[Choice: first peak only, all equally loud peaks (default)] The default setting will create labels for all peaks at the maximum absolute amplitude. "Absolute" amplitude disregards whether the value is positive or negative, so peaks may be up or down.
2. **Minimum Distance: \[samples]:** \[1 to 1000, (default 100)] The minimum distance between labels (in samples). If audio is clipped there may be many samples in succession at the maximum amplitude. This setting avoids labeling every successive sample by setting a minimum distance between labels.

#### **Limitations**

* This effect can be very slow on long selections.
* If the audio is clipped and "Place labels at: all equally loud peaks" is selected, there may be an extremely large number of labels created. The "Minimum Distance" setting is useful to reduce the number of labels.
* Peaks that appear to be at the maximum amplitude will not be labeled unless they are **exactly** at the maximum amplitude.

</details>

### Pitch Detect

This plug-in attempts to detect and display the musical pitch and frequency of the selected note. In most cases the default settings will work best. The other options are provided to handle special cases such as analyzing synthetic signals that are outside of the usual musical range.

{% file src="../.gitbook/assets/Pitch-detect.ny" %}
Download
{% endfile %}

<details>

<summary>Details</summary>

Author: Steve Daulton

By default, the plug-in detects the pitch by analyzing the first 0.2 seconds of the selection. In most cases this should work well. If required the analyzed section can be set to the first part of the selection ranging from the first 10th of a second (0.1 seconds) up to one second.

#### Parameters

1. **Frequency range:** \[Choice: 20-1000 Hz, 100-2000 Hz, 1 kHz-10 kHz. Default 100-2000 Hz] In most cases the default should be used as most musical pitches are in the range 100 to 2000 Hz.
2. **Analyse first (seconds):** \[0.1 to 1. Default 0.2] At the default setting the first 0.2 seconds of the selection will be analyzed.

#### **Limitations**

This plug-in is intended to detect single notes - you may get strange results if you try to analyze chords.

Extremely high frequencies may not be detected very accurately, especially if the sample rate is not very high. The plug-in will often detect very high frequencies better if the sample rate is 96000 Hz rather than 44100 Hz.

The plug-in should usually be able to detect pitches of single notes to within a few percent of the actual frequency. Don't expect the frequency in Hz to be exact..

#### **Advanced usage tips**

* For detecting very low frequencies (less than a few hundred Hz) the plug-in should be set to the low frequency range (20 to 1000 Hz).
* For detecting very high frequencies (several kHz) the plug-in should be set to the high frequency range (1 kHz to 10 kHz).
* For measuring synthesized tones and other electronic signals, the most accurate measure of frequency in Audacity is to use "Plot Spectrum" and set the "Size" setting to a high value.

</details>



## Other sources

Additional Vamp Plugins can be found on [https://www.vamp-plugins.org/download.html](https://www.vamp-plugins.org/download.html)&#x20;
