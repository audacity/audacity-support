---
description: Learn about causes and fixes for this problem.
---

# Audacity records silence when using a Bluetooth headset as a recording device

## Causes

The default project sample rate in Audacity (and, indeed, most other devices) is 44100 Hz, whereas most Bluetooth headsets utilize different sample rates: 8000 Hz, 16000 Hz and, rarely, 24000 Hz.&#x20;

## Fixes

In order for Audacity to record audio from a Bluetooth headset, the sample rate must be set to a value supported by your bluetooth device. To do that, go to **Audio Setup -> Audio Settings** and then set **Project Sample Rate** to a setting supported by your headset. Typically, this will be 16000 Hz.&#x20;

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
