---
description: Learn about causes and fixes for this problem.
---

# Recording volume slider cannot be moved

## Causes

The recording slider is purposely disabled if it cannot directly manipulate the operating system's slider for the sound device, or if that device has no system slider. Turning down the Audacity slider to prevent distortion would be inadequate unless it also turned down the system slider. It would only make existing distortion quieter instead of removing it.

## Fixes

* If the slider is disabled, check first via **Audio Setup -> Recording devices** that you are selecting the correct device. Audacity should be able to control the recording level of most built-in sound devices subject to the device having appropriate Sound Device Drivers.
* External recording devices such as USB turntables or tapedecks or interfaces may not have an operating system slider, especially on Mac. For all cases where there is no system slider, try to adjust the playback level on the recording device itself.
* Sometimes, switching the host via **Audio Setup -> Host** may help.&#x20;

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
