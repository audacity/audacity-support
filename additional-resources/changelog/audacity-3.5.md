---
description: >-
  Audacity 3.5 was released on xx.xx.2024. It adds cloud saving, automatic beat
  detection, and more.
---

# 🆕 Audacity 3.5

{% hint style="warning" %}
This release is currently in alpha.
{% endhint %}

{% embed url="https://www.youtube.com/@audacity" %}

## Major features

### Cloud project saving

tbd - initial announcement here:

{% embed url="https://forum.audacityteam.org/t/the-next-steps-for-audio-com-audacity/97997" %}

### Automatic tempo detection

Audacity can now automatically detect the tempo of imported loops, and adjust them to be in tempo.&#x20;

Tempo detection is done via both audio analysis and metadata checking. If you want to prepare your loop for automatic tempo detection without relying on audio analysis, both acidizer tempo tags or simply writing "123 bpm" anywhere into the filename work.

Automatic tempo detection can be turned off via **Preferences -> Import/Export**.

### Pitch shifting

You now can non-destructively change the pitch of a clip by holding Alt and pressing the Up and Down arrow keys. Alternatively, you can click on the overflow menu (...) and select "Pitch and speed...". When changing the pitch this way, an arrow in the UI indicates how much you've shifted it.&#x20;

## Other changes

### Changes

* Unsquished the Audacity logo in a few places.
* Improved accessibility. (Thanks, David Bailes!)
* When zooming in vertically (Ctrl+scroll on the vertical scale), the zeroline now remains centered. Moving the vertical zoom off-center still is possible via Shift+scroll on the vertical scale.&#x20;
* Changed the look of the selection adjust cursors (previously pointing fingers on Windows and macOS, now look like `>|` everywhere).
* Changed the timeline options button from a green triangle to a settings gear. From it, you can switch between Beats & Measures or hh:mm:ss timeline rulers, set various preferences regarding to looping, as well as playhead behaviors: "Scroll view to playhead" (previously: "Update display while playing") and "Continuous scrolling" (previously: Pinned Play Head).
* Improved BSD support. (Thanks, Brad Smith!)
* Changed the Audacity.app icon on macOS to fit new design guidelines.

### Removals

There have been a number of removals of niche features to simplify the app. This should make the app a bit less overwhelming to use, and also will speed up future development as fewer things need to be considered.

* Removed the read-only mouse preferences page.
* Removed Printing options.&#x20;
* Removed Screenshot tool. To make a screenshot, use `Win+Shift+S` (Windows) or `Cmd+Shift+4` (Mac) instead.&#x20;
* Removed Karaoke view.
* Removed the "solo=none" preference.
* Removed timeline tooltips preference.
* Removed "dragging selection edges" preference.
* Removed some warning dialogs and associated preferences.
* Removed "scrolling left of zero" preference.
* Replaced "Advanced Vertical Zooming" with new always-on behavior.
* Removed some vertical zoom presets.
* Removed EQ XML to TXT converter, which was needed for the Audacity 2.3 -> 2.4 transition. It is now a plugin instead, downloadable at [https://plugins.audacityteam.org/additional-resources/eq-curves/eq-xml-to-txt-converter](https://plugins.audacityteam.org/additional-resources/eq-curves/eq-xml-to-txt-converter).&#x20;

### Bugfixes

* Fixed a number of dialogs that were able to grow too large to fit on the screen.
* [#2133](https://github.com/audacity/audacity/issues/2133) Fixed the playback cursor sometimes desynchronizing with actual playback. (Thanks, David Bailes!)
* [#3723](https://github.com/audacity/audacity/issues/3723) [#5615](https://github.com/audacity/audacity/issues/5615) Fixed the GetInfo scripting command.
* [#5389](https://github.com/audacity/audacity/issues/5389) Fixed stereo tracks randomly splitting for good.
* [#5500](https://github.com/audacity/audacity/issues/5500) The Export Audio -> (external program) option remembers the command line argument again.
* [#5670](https://github.com/audacity/audacity/issues/5670) [#3903](https://github.com/audacity/audacity/issues/3903) Fixed the Compressor effect sometimes corrupting audio. (Thanks, David Bailes!)
* [#5681](https://github.com/audacity/audacity/pull/5681) Fixed incorrect level measurements for mono tracks in Noise Gate effect. (Thanks, Steve Daulton!)
* [#5580](https://github.com/audacity/audacity/issues/5580) [#4952](https://github.com/audacity/audacity/issues/4952) Fixed Timer Record sometimes failing to export. (Thanks, David Bailes!)
* [#5848](https://github.com/audacity/audacity/issues/5848) Fixed some effects failing when language is set to German, Korean, Dutch, Slovenian, or Turkish
* [#5868](https://github.com/audacity/audacity/issues/5868) [#1548](https://github.com/audacity/audacity/issues/1548) Fixed `8` and `9` inputs not working on keyboard inputs which have `AltGr+8/9` mean `[` and `]`. (Thanks, David Bailes!)
* [#5858](https://github.com/audacity/audacity/issues/5858) Fixed Audacity crashing when making a stereo track using keyboard. (Thanks, Joe Souza!)
* [#5750](https://github.com/audacity/audacity/issues/5750) Fixed mono/stereo option being ignored when exporting multiple files.
* [#5283](https://github.com/audacity/audacity/issues/5283) Fixed "Reset configuration" option breaking modules preference page.

## Supported Platforms

**Windows**

* Audacity 3.5 is tested on Windows 10 & 11
  * Windows Vista, 7 and 8.1 may still work, but are no longer tested.

**macOS / Mac OS X**

* Audacity 3.5 is tested on macOS 12 & 13, and should support macOS 14
  * OS X 10.9 and onwards may still work, but are no longer tested.&#x20;

**Linux**

* In addition to the traditional update path via package managers, Audacity is distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested with AppImages on Ubuntu 22.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
