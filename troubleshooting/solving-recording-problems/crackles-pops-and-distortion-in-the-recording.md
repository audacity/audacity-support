---
description: Learn about causes and fixes for this problem.
---

# Crackles, pops and distortion in the recording

## Causes

If you hear crackles, pops, or distortion when the recording is loud, or if the waveform is clearly touching the top and bottom edges of the track, you probably have clipping, which means that the signal has exceeded the maximum allowed level.

## Fixes

Try lowering the recording level using the recording slider or the slider in the operating system.&#x20;

<figure><img src="../../.gitbook/assets/Recording and Playback Meter Toolbar.png" alt=""><figcaption><p>The recording slider is the one with the microphone - the top one in this case</p></figcaption></figure>

You can also check to see if you can lower the volume on the input source itself (such as the **tape deck**, **record player** or **microphone**). Many sound cards and USB turntables or USB tape decks have an independent volume control for the playback signal level. See Recording with USB turntables or USB cassette decks for more help with USB turntables or tape decks.

When recording, try to aim for a maximum peak of around –6 _**dB**_ in the Recording Meter so as to prevent the meter's red clipping warning coming on. If the meters are set to _**linear**_, the equivalent level to aim for is 0.5. Clicking and dragging on the meter's right edge lets you expand the meter to gauge levels more easily. After recording, you can boost the level safely using the Amplify or Normalize effects.

{% hint style="info" %}
**Help with repairing clipped recordings:** If there is only a small amount of _**clipping**_ (just the tops of a few isolated peaks), **Effect -> Noise Removal and Repair -> Clip Fix** can be applied to just the clipped sections. This will attempt to reconstruct the missing peaks by _**interpolating**_ the lost signal.&#x20;

In other cases where there is mild distortion throughout a recording, using **Effect -> EQ and Filters -> Filter Curve EQ** to reduce the higher frequencies can help to mitigate the damage. Sometimes a bass cut will help also by making the result sound less "muddy".
{% endhint %}

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
