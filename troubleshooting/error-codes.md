---
description: >-
  This page lists Audacity error codes and provides some troubleshooting steps
  on how to fix them.
---

# Error codes

{% hint style="success" %}
If your issue isn't listed here, or the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}

## Error opening sound device&#x20;

This error indicates a problem with the hardware used for playback, whether it is permissions, drivers, connections, or if you ask the device to do something it cannot do. You can attempt the following steps to resolve it.

{% content-ref url="common-troubleshooting-steps.md" %}
[common-troubleshooting-steps.md](common-troubleshooting-steps.md)
{% endcontent-ref %}

## Error opening recording device

This error indicates a problem with the hardware used for recording, whether it is permissions, drivers, connections, or if you ask the device to do something it cannot do. You can attempt the following steps to resolve it.

{% content-ref url="common-troubleshooting-steps.md" %}
[common-troubleshooting-steps.md](common-troubleshooting-steps.md)
{% endcontent-ref %}

## Error code 11, error code 13, error code 101 and "Audacity failed to read a file in C:"

These errors can occur when attempting to load a damaged .aup3 project file. Damaged project files can be recovered as described in the following article.

{% content-ref url="recovering-corrupted-projects.md" %}
[recovering-corrupted-projects.md](recovering-corrupted-projects.md)
{% endcontent-ref %}

## Error -9996 Invalid Device Error

This error indicates that the device that's being attempted to use is not valid, for example:

* The device got unplugged
* The device has a faulty or loose connection
* The device itself is faulty or not a real audio device.

This error can also occur when you are trying to record a number of channels that is not supported in the current configuration&#x20;

You can attempt to fix this issue with the following methods:

* **Use a different USB port and USB cable.** This will resolve the issue if the fault was in the cable.
* **Use a different audio host**. Sometimes WASAPI works when MME doesn't, sometimes it's the other way round.&#x20;
* **Use a different number of channels**. For example, some Realtek only work when recording in Mono, while some others only work in Stereo when recording a (loopback) stream.

## Error -9997 Invalid Sample Rate

This error can indicate an unsupported sample rate. Double-check that both your **OS settings** and the **Audacity project rate** are set to a supported sample rate (usually 44100 Hz or 48000 Hz).&#x20;

This error can also occur when you are trying to record a number of channels that is not supported in the current configuration To fix this, you can do the following:

* **Use a different audio host**. Sometimes WASAPI works when MME doesn't, sometimes it's the other way round.&#x20;
* **Use a different number of channels**. For example, some Realtek only work when recording in Mono, while some others only work in Stereo when recording a (loopback) stream.

## Error -9999 Unanticipated Host Error

This error means "something is wrong", most commonly&#x20;

* A lost connection to a USB audio device
* Missing microphone permissions from the operating system.

You can try the [common-troubleshooting-steps.md](common-troubleshooting-steps.md "mention"), or attempt any of the other workarounds of this page.&#x20;
