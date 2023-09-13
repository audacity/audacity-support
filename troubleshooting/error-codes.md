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

## Error code 11, error code 13, error code 101, "Audacity failed to read a file in C:", "Failed to Open Database File"

These errors may occur when the project you're trying to open is in a read-only location. Make sure  Audacity has write access to the folder the file is located in,  or move the project file to a different location.&#x20;

These errors may also occur when attempting to load a damaged .aup3 project file. Damaged project files can be recovered as described in the following article.

{% content-ref url="recovering-corrupted-projects/" %}
[recovering-corrupted-projects](recovering-corrupted-projects/)
{% endcontent-ref %}

## Error -9996 Invalid Device Error

This error indicates that the device that's being attempted to use is not valid, for example:

* The device got unplugged
* The device has a faulty or loose connection
* The device itself is faulty or not a real audio device.

This error can also occur when you are trying to record a number of channels that is not supported in the current configuration

This error can also occur when using Audacity on Windows with Windows WASAPI as the Host if the selected recording device is being used exclusively by another application.  Some applications that could make use of the recording device exclusively are ASIO4ALL, Voicemod (when configured to do so) or Voicemeeter (when configured to do so).

You can attempt to fix this issue with the following methods:

* **Use a different USB port and USB cable.** This will resolve the issue if the fault was in the cable.
* **Use a different audio host**. Sometimes WASAPI works when MME doesn't, sometimes it's the other way round.&#x20;
* **Use a different number of channels**. For example, some Realtek only work when recording in Mono, while some others only work in Stereo when recording a (loopback) stream.

## Error -9997 Invalid Sample Rate

This error can indicate an unsupported sample rate.&#x20;

This error can also occur when using Audacity on Windows to record a track while listening another existing track (also known as overdubbing) with Windows WASAPI as the Host if the sample rate of the recording device is different than the sample rate of the playback device.&#x20;

This error can also occur when you are trying to record a number of channels that is not supported in the current configuration.

#### Potential fixes

* Double-check that both your **OS settings** and the **Audacity project rate** are set to a supported sample rate (usually 44100 Hz or 48000 Hz).&#x20;
* **Use a different audio host**. Sometimes WASAPI works when MME doesn't, sometimes it's the other way round.&#x20;
* **Use a different number of channels**. For example, some Realtek only work when recording in Mono, while some others only work in Stereo when recording a (loopback) stream.
* **Use the same playback device that you use as a recording device**, especially when recording desktop audio.

## Error -9999 Unanticipated Host Error

This error means "something is wrong", most commonly&#x20;

* A lost connection to a USB audio device
* Missing microphone permissions from the operating system.
* Your device is unable to playback other tracks while recording.&#x20;
  * This most commonly happens if you're trying to record at a different sample rate than the device's playback rate. Making sure the sample rate matches in both the Windows Settings and Audacity's **Audio Setup -> Audio Settings** may fix this.&#x20;
  * Turning off Overdub via **Transport -> Transport Options** may fix this.&#x20;

You can try the [common-troubleshooting-steps.md](common-troubleshooting-steps.md "mention"), or attempt any of the other workarounds of this page.&#x20;

## Audacity did not recognize the type of this file

This error occurs when the file you're trying to open has no decoder available. You can attempt the following things to fix it:&#x20;

* **Install FFMPEG**. FFMPEG allows you to open most kinds of media files. Read more: [installing-ffmpeg.md](../basics/installing-ffmpeg.md "mention")
* **Check if the file you're trying to open actually is what it says on the tin**. For example, some lower-quality programs name any audio file `*.mp3`, regardless of whether it actually is an MP3 file. Read more: [#cant-open-an-mp3-file](solving-other-problems.md#cant-open-an-mp3-file "mention")
* **Check if your file is an actual audio file**. Some files which are used to output audio in certain programs don't actually contain sound themselves, but are instructions for for the program to make some sounds. Try to see if the program used to create the file has an export button. If not, you can also try recording desktop audio while playing back the file in another program. Read more: [recording-desktop-audio.md](../basics/recording-desktop-audio.md "mention")
* **Check if you have accidentally created custom import rules**. In **Edit -> Preferences -> Extended Import** (on macOS: Audacity -> Preferences -> Extended Import), make sure that you have not created any custom rules. If there are any rules, you can safely **delete the rules**.
* **Import the audio as RAW**. This only works on uncompressed audio. You can do so via **File -> Import -> Import raw data...**

## Unable to open, exception code 0xc0000005

This is caused by a corrupted audacity.cfg file, such as when upgrading from Audacity 3.1.3 to Audacity 3.2. You can solve this issue by upgrading to Audacity 3.2.1.

## Missing Plugins

This is caused by missing [realtime effects](../audio-editing/using-realtime-effects.md). You can replace any missing effects from the effects sidebar.&#x20;

{% hint style="info" %}
Audacity currently looks for plugins in absolute paths. This means that if you open a project that was created on a different computer, Audacity will continue to check for the plugins in the exact same locations as they were on the old computer.&#x20;
{% endhint %}

## The Audacity IPC server failed to initialize

If you are on a low-end machine, this may be caused by insufficient resources, specifically memory.&#x20;

This also can happen if you assign yourself a static IP in the `hosts` file. If that's the case, simply commenting out the assignment may solve this.

## Error code=12 : "cannot allocate memory" (macOS)

This is caused by an unexpected system state. Specifically, macOS typically allows allocation of 32 instances of shared memory, out of which Audacity requires one to start. However, other apps on your computer may have filled up these allocations, in which case Audacity cannot start.

Rebooting the computer generally resolves it.&#x20;

You also can edit the macOS kernel to allow for more shared memory, but this is a very technical process. Essentially, `shmni` needs to be increased, and potentially `shmall` needs to be as well. [This thread](https://developer.apple.com/forums/thread/669625) may have further instructions.&#x20;
