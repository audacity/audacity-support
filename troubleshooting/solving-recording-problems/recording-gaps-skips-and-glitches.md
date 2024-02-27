---
description: Learn about causes and fixes for this problem.
---

# Recording gaps, skips and glitches

## Causes

Recording gaps are typically caused by an overloaded computer, or by broken cables and connectors.&#x20;

### Computer load

Audacity is for the most part a single-core application. On modern multi-core systems it typically isn't possible to bring it down with normal computer use, but it may be bottlenecked by hard drive access, and by creating very complex projects with many realtime effects.

You may be able to see the bottleneck in the performance tab of the task manager (macOS: activity monitor). It typocally is CPU or storage.

{% hint style="info" %}
**Note:** To view single-core capability, you need to view logical cores. Overall system performance averages an overloaded core with many idle cores, creating the impression that everything is fine.
{% endhint %}

### Broken cables and connectors

There are several parts on the path between a mic and Audacity which can break: The mic itself, the cable, the port for the cable on the computer, and the computer itself.&#x20;

## Fixes

### Reducing computer load

#### Reducing CPU load

* Close all other programs which aren't necessary to run for your recording task.&#x20;
* Increase the buffer length in **Audio Setup -> Audio Settings.**
* Disable playback of other tracks, as well as input monitoring during recording (**Transport -> Transport options -> Hear other tracks during recording** and **Enable audible input monitoring**)&#x20;
* End background tasks, or wait for them to finish. These often may be antivirus scans, system updates or updates of other applications (like games).
* Render all tracks in Audacity via **Tracks -> Mix -> Mix and Render**.
* Shrink the size of the Audacity window and zoom out.

#### Reducing hard drive load

* Record to a hard drive which still has a lot of capacity.
* End background tasks, or wait for them to finish. These often may be antivirus scans, system updates or updates of other applications (like games).
* Record to a hard drive which is directly attached to the computer (as opposed to a USB hub or similar).
* Reduce the amount of data being written. In particular:&#x20;
  * Record Mono instead of Stereo (Audio Setup -> Recording channels)
  * Record in 16-bit instead of 32-bit (Audio Setup -> Audio Settings)

### Working around broken cables, connectors and other broken hardware

* Try using a different cable.&#x20;
* Try plugging the cable into a different port on the computer&#x20;
* Try using a different microphone.
* Try using a different computer.

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
