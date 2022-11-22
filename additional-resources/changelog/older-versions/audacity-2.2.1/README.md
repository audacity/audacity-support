# Audacity 2.2.1

**Audacity 2.2.1 was released on 6 December 2017.**

## Changes since previous version

See the [new-features-in-audacity-2.2.1.md](new-features-in-audacity-2.2.1.md "mention") page for more information about improvements and other changes.

### Improvements

#### **Waveform colorways**

You can optionally change the colorway of the waveforms displayed in your project. The setting is per track and not per project so you can have multiple colorways in the same project as in the image below.

Four colorways are available with the color selection made from the **dropdown menu** in the track's **Track Control Panel**.

#### "Save Other" reverts to "Export" in the File menu

When we made the menu changes for 2.2.0 we introduced an entry into the File menu called "Save Other" which led to a sub-menu for exporting various audio formats.

Many users were confused by this change and found it hard to find where they could export audio from. So for 2.2.1 we have changed that menu entry to be **File > Export**.

### Bug Fixes

We fixed a bug on Mac that caused Audacity to crash with certain Chain files. Plus we fixed another Mac bug whereby opening a second project from Mac's Finder produced a second inaccessible instance of Audacity.

{% hint style="info" %}
For those who **really have to know**, the list of bugs fixed in 2.2.1 is [here](<../../../../.gitbook/assets/Bugs\_Fixed (1)>).
{% endhint %}

## Supported Platforms

### Windows

* Audacity 2.2.1 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003. To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html). If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.2.0 does not officially support Windows XP.

### macOS / Mac OS X

* Audacity 2.2.1 is for Intel Macs running OS X 10.6 and later and macOS. There are legacy versions for older OS X at [https://audacityteam.org/download/legacy-mac/](https://audacityteam.org/download/legacy-mac/).

### Linux

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

## Issues

See our [list of issues](<../../../../.gitbook/assets/Issues (3)>) for much more detail of issues with Audacity 2.2.1.

{% hint style="info" %}
Below are listed what we believe are the most common and important issues with 2.2.1 for most users.
{% endhint %}

### Timer Record

* Timer Record may not reliably stop the recording on some machines. The Elapsed and Remaining Time counters may stop counting. In this case it will be necessary to force quit Audacity.
  * On a few affected machines, the problem can be avoided if you leave focus on Audacity or ensure it has focus when recording is due to end.

### (Linux) PULSE Audio

* PulseAudio is not reliable when used with Audacity on Linux. Playback or recording may freeze, recording dropouts or fast playback may occur when using PulseAudio.
  * Freezes may be caused by repeatedly starting and stopping playback or recording in quick succession (or by holding down the Play or Record button).
  * Workarounds: Try launching Audacity from the terminal with the pulse latency set to 30 ms in an environment variable:

env PULSE\_LATENCY\_MSEC=30 audacity

* If you get underruns noted in the terminal, try a higher number in the PULSE\_LATENCY\_MSEC command. If the problem is unchanged, try a lower number.
* Alternatively, bypass pulseaudio by setting the playback and recording device to an ALSA (hw) choice in Device Toolbar. More help with this can be found here.

### (Linux) MIDI

* The timing of notes during MIDI playback may sound erratic on some machines. Optimizing the system for low latency MIDI playback can help to reduce the inaccuracies.

### Accessibility

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library. A lot more detail about accessibility limitations can be found [here](<../../../../.gitbook/assets/Issues (3)>)

## Bugzilla

We track these and many other bugs in our 'bugzilla' database.

* Click on the bug numbers to see work done on these bugs.

| **ID**                                                         | **Summary (3 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=33\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=42\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=1462\&field0-0-3=bug\_id\&type0-0-3=equals\&value0-0-3=276\&field0-0-4=bug\_id\&type0-0-4=equals\&value0-0-4=1726\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) | **ID**                                                         |
| -------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [42](http://bugzilla.audacityteam.org/show\_bug.cgi?id=42)     | Timer Record occasionally carries on recording past the scheduled end, requiring force quit                                                                                                                                                                                                                                                                                                                                | [42](http://bugzilla.audacityteam.org/show\_bug.cgi?id=42)     |
| [1726](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1726) | Linux: MIDI playback timing / synchronisation problems                                                                                                                                                                                                                                                                                                                                                                     | [1726](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1726) |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                                                                                                                                                                                     | [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   |
