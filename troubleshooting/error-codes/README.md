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

{% content-ref url="../common-troubleshooting-steps.md" %}
[common-troubleshooting-steps.md](../common-troubleshooting-steps.md)
{% endcontent-ref %}

## Error opening recording device

This error indicates a problem with the hardware used for recording, whether it is permissions, drivers, connections, or if you ask the device to do something it cannot do. You can attempt the following steps to resolve it.

{% content-ref url="../common-troubleshooting-steps.md" %}
[common-troubleshooting-steps.md](../common-troubleshooting-steps.md)
{% endcontent-ref %}

## Error code 11, error code 13, error code 101 and "Audacity failed to read a file in C:"

These errors can occur when attempting to load a damaged .aup3 project file. Damaged project files can be recovered as described in the following article.

{% content-ref url="../recovering-corrupted-projects.md" %}
[recovering-corrupted-projects.md](../recovering-corrupted-projects.md)
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
* Your device is unable to playback other tracks while recording. Turning off Overdub via **Transport -> Transport Options** may fix this.&#x20;

You can try the [common-troubleshooting-steps.md](../common-troubleshooting-steps.md "mention"), or attempt any of the other workarounds of this page.&#x20;

## Audacity did not recognize the type of this file

This error occurs when the file you're trying to open has no decoder available. You can attempt the following things to fix it:&#x20;

* **Install FFMPEG**. FFMPEG allows you to open most kinds of media files. Read more: [installing-ffmpeg.md](../../basics/downloading-and-installing-audacity/installing-ffmpeg.md "mention")
* **Check if the file you're trying to open actually is what it says on the tin**. For example, some lower-quality programs name any audio file `*.mp3`, regardless of whether it actually is an MP3 file. Read more: [#cant-open-an-mp3-file](../solving-other-problems.md#cant-open-an-mp3-file "mention")
* **Check if your file is an actual audio file**. Some files which are used to output audio in certain programs don't actually contain sound themselves, but are instructions for for the program to make some sounds. Try to see if the program used to create the file has an export button. If not, you can also try recording desktop audio while playing back the file in another program. Read more: [recording-desktop-audio.md](../../basics/recording-desktop-audio.md "mention")
* **Check if you have accidentally created custom import rules**. In **Edit -> Preferences -> Extended Import** (on macOS: Audacity -> Preferences -> Extended Import), make sure that you have not created any custom rules. If there are any rules, you can safely **delete the rules**.
* **Import the audio as RAW**. This only works on uncompressed audio. You can do so via **File -> Import -> Import raw data...**

## unable to open, exception code 0xc0000005

This caused by a corrupted audacity.cfg file, such as when upgrading from Audacity 3.1.3 to Audacity 3.2. You can solve this issue by **deleting the audacity.cfg**. The file can be found in the following locations:

* **Windows:** `C:\Users\<username>\AppData\Roaming\audacity\`. To get there:\
  Type in **%appdata%\audacity** into the Windows search bar or the Windows Explorer's location bar (accessible through Ctrl+L inside Explorer). This will take you to\
  C:\Users\\\<username>\AppData\Roaming\audacity\ where you can delete the cfg file.\

* **Mac:** `~/Library/Application Support/audacity/`. To get there:\
  In Finder, click on the **Go menu** and hold **Option**. This shows a **Library** option. In the Library, browse to the **Application Support -> audacity** folder and delete the cfg file.&#x20;
* **Linux:** `~/.audacity-data/`. To get there:\
  Go to your home folder and show hidden files. This reveals the folder, where you can delete the cfg file.
