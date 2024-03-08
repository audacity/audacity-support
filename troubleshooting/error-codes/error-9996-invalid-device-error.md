---
description: Learn about causes and fixes for this error.
---

# Error -9996: Invalid Device Error

## Causes

This error indicates that the device that's being attempted to use is not valid, for example:

* The device got unplugged
* The device has a faulty or loose connection
* The device itself is faulty or not a real audio device.

This error can also occur when you are trying to record a number of channels that is not supported in the current configuration.

This error can also occur when using Audacity on Windows with Windows WASAPI as the Host if the selected recording device is being used exclusively by another application.  Some applications that could make use of the recording device exclusively are ASIO4ALL, Voicemod (when configured to do so) or Voicemeeter (when configured to do so).

## Fixes

You can attempt to fix this issue with the following methods:

* **Use a different USB port and USB cable.** This will resolve the issue if the fault was in the cable.
* **Use a different audio host**. Sometimes WASAPI works when MME doesn't, sometimes it's the other way round.&#x20;
* **Use a different number of channels**. For example, some Realtek only work when recording in Mono, while some others only work in Stereo when recording a (loopback) stream.

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
