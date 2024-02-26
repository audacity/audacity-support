---
description: Learn about causes and fixes for this error.
---

# Error -9997: Invalid Sample Rate

## Causes

This error can indicate an unsupported sample rate.&#x20;

This error can also occur when using Audacity on Windows to record a track while listening another existing track (also known as overdubbing) with Windows WASAPI as the Host if the sample rate of the recording device is different than the sample rate of the playback device.&#x20;

This error can also occur when you are trying to record a number of channels that is not supported in the current configuration.

## Fixes

* Double-check that both your **OS settings** and the **Audacity project rate** are set to a supported sample rate (usually 44100 Hz or 48000 Hz).&#x20;
* **Use a different audio host**. Sometimes WASAPI works when MME doesn't, sometimes it's the other way round.&#x20;
* **Use a different number of channels**. For example, some Realtek only work when recording in Mono, while some others only work in Stereo when recording a (loopback) stream.
* **Use the same playback device that you use as a recording device**, especially when recording desktop audio.

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
