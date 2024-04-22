---
description: >-
  Audacity 3.5 was released on 22.04.2024. It adds cloud saving, automatic beat
  detection, and more.
---

# Audacity 3.5

{% embed url="https://www.youtube.com/watch?v=qEAZv_o0HuQ" %}
Watch the release video!
{% endembed %}

## Major features

### Cloud project saving

We've introduced a new cloud-saving feature that allows you to save your Audacity projects to [audio.com](https://audio.com/). This allows you to work from any device, share & collaborate with others and restore previous versions if something went wrong.

### Automatic tempo detection

Audacity can now automatically detect the tempo of imported loops, and adjust them to be in tempo.

Tempo detection is done via both audio analysis and metadata checking. If you want to prepare your loop for automatic tempo detection without relying on audio analysis, both acidizer tempo tags or simply writing "123 bpm" anywhere into the filename work.

Automatic tempo detection can be turned off via **Preferences -> Import/Export**.

### Pitch shifting

You now can non-destructively change the pitch of a clip by holding Alt and pressing the Up and Down arrow keys. Alternatively, you can click on the overflow menu (...) and select "Pitch and speed...". When changing the pitch this way, an arrow in the UI indicates how much you've shifted it.

<figure><img src="../../.gitbook/assets/clip pitch indicator" alt=""><figcaption><p>Change Pitch indicator on a clip (alongside a speed indicator, and the 3-dot overflow menu)</p></figcaption></figure>

Additionally, the Pitch and speed dialog also features an option to optimize for voice which preserves [formants](https://en.wikipedia.org/wiki/Formant).

## Other changes

### Additions

* Added an option to skip plugin scanning to Preferences -> Effects.
* Added an overflow menu, as well as speed and pitch indicators to clips.
* Added subtitle formats for labels. Export to WebVTT and SubRip and import of SubRip files is now supported. (Thanks, Pokechu22 and Larry Bordowitz!)

### Changes

* Reworked the plugin manager. It's now simplified and filterable, and also has a search box.
* Improved accessibility. (Thanks, David Bailes!)
* When zooming in vertically (Ctrl+scroll on the vertical scale), the zeroline now remains centered. Moving the vertical zoom off-center still is possible via Shift+scroll on the vertical scale.
* Changed the look of the selection adjust cursors (previously pointing fingers on Windows and macOS, now look like `>|` everywhere).
* Changed the timeline options button from a green triangle to a settings gear. From it, you can switch between Beats & Measures or hh:mm:ss timeline rulers, set various preferences regarding to looping, as well as playhead behaviors: "Scroll view to playhead" (previously: "Update display while playing") and "Continuous scrolling" (previously: Pinned Play Head).
* Improved BSD support. (Thanks, Brad Smith!)
* Changed the Audacity.app icon on macOS to fit new design guidelines. (Thanks, Filip Krawczyk!)
* Reordered some menus.
* Moved the OK/Cancel buttons of effects to the bottom.

### Removals

There have been a number of removals of niche features to simplify the app. This should make Audacity  a bit less overwhelming to use, and also will speed up future development as fewer things need to be considered.

* Removed the read-only mouse preferences page.
* Removed Printing options.
* Removed Screenshot tool. To make a screenshot, use `Win+Shift+S` (Windows) or `Cmd+Shift+4` (Mac) instead.
* Removed Karaoke view.
* Removed the "solo=none" preference.
* Removed timeline tooltips preference.
* Removed "dragging selection edges" preference.
* Removed some warning dialogs and associated preferences.
* Removed "scrolling left of zero" preference.
* Replaced "Advanced Vertical Zooming" with new always-on behavior.
* Removed some vertical zoom presets.
* Removed EQ XML to TXT converter, which was needed for the Audacity 2.3 -> 2.4 transition. It is now a plugin instead, downloadable at [https://plugins.audacityteam.org/additional-resources/eq-curves/eq-xml-to-txt-converter](https://plugins.audacityteam.org/additional-resources/eq-curves/eq-xml-to-txt-converter).
* Removed the "Vocal reduction and isolation" effect. As a replacement for Windows and Linux, the [Intel OpenVINO plugins](https://www.audacityteam.org/blog/openvino-ai-effects/) work better and on a wider array of content, including mono tracks. The old effect still can be downloaded from [https://plugins.audacityteam.org/nyquist-plugins/effect-plugins/filters-and-eq#vocal-reduction-and-isolation](https://plugins.audacityteam.org/nyquist-plugins/effect-plugins/filters-and-eq#vocal-reduction-and-isolation)

### Bugfixes

* Fixed a number of dialogs that were able to grow too large to fit on the screen.
* [#2133](https://github.com/audacity/audacity/issues/2133) Fixed the playback cursor sometimes desynchronizing with actual playback. (Thanks, David Bailes!)
* [#3723](https://github.com/audacity/audacity/issues/3723) [#5615](https://github.com/audacity/audacity/issues/5615) Fixed the GetInfo scripting command.
* [#5283](https://github.com/audacity/audacity/issues/5283) Fixed "Reset configuration" command breaking modules preference page.
* [#5389](https://github.com/audacity/audacity/issues/5389) Fixed stereo tracks randomly splitting into mono.
* [#5500](https://github.com/audacity/audacity/issues/5500) The Export Audio -> (external program) option remembers the command line argument again.
* [#5670](https://github.com/audacity/audacity/issues/5670) [#3903](https://github.com/audacity/audacity/issues/3903) Fixed the Compressor effect sometimes corrupting audio. (Thanks, David Bailes!)
* [#5580](https://github.com/audacity/audacity/issues/5580) [#4952](https://github.com/audacity/audacity/issues/4952) Fixed Timer Record sometimes failing to export. (Thanks, David Bailes!)
* [#5681](https://github.com/audacity/audacity/pull/5681) Fixed incorrect level measurements for mono tracks in Noise Gate effect. (Thanks, Steve Daulton!)
* [#5750](https://github.com/audacity/audacity/issues/5750) When exporting multiple files, the mono/stereo setting is now honored properly.
* [#5848](https://github.com/audacity/audacity/issues/5848) Fixed some effects failing when language is set to German, Korean, Dutch, Slovenian, or Turkish.
* [#5868](https://github.com/audacity/audacity/issues/5868) [#1548](https://github.com/audacity/audacity/issues/1548) Fixed `8` and `9` inputs not working on keyboard inputs which have `AltGr+8/9` mean `[` and `]`. (Thanks, David Bailes!)
* [#5858](https://github.com/audacity/audacity/issues/5858) Fixed Audacity crashing when making a stereo track using keyboard. (Thanks, Joe Souza!)
* [#5976](https://github.com/audacity/audacity/pull/5976) Fixed the "Set default" button not working in the metadata editor. (Thanks, dg-no-9!)
* [#5977](https://github.com/audacity/audacity/pull/5977) Linux: Fixed a memory leak in Wayland by explicitly running on X11. (Thanks, Takahashi, Naoki!)
* [#6125 ](https://github.com/audacity/audacity/issues/6125)Fixed recording sometimes recording at the wrong sample rate, pitching things up in the process. (Thanks, David Bailes!)
* [#4999](https://github.com/audacity/audacity/issues/4999) Improved importing performance.
* [#5823](https://github.com/audacity/audacity/issues/5823) Filenames featuring a period mid-name are no longer cut off.&#x20;
* [#5792](https://github.com/audacity/audacity/issues/5792) Fixed a crash when pasting 192k/24 bit audio.
* [#5799](https://github.com/audacity/audacity/issues/5799) Fixed a crash with AUMultibandCompressor.
* [#6100](https://github.com/audacity/audacity/issues/6100) Exporting stereo as mono now calculates volume correctly.
* [#5782](https://github.com/audacity/audacity/issues/5782) Exporting now can create folders within folders. (Thanks, Antonio!)

A full list of changes can be found [on Github](https://github.com/audacity/audacity/milestone/21?closed=1).

## Supported Platforms

**Windows**

* Audacity 3.5 is tested on Windows 10 & 11
  * Windows Vista, 7 and 8.1 may still work, but are no longer tested.

**macOS / Mac OS X**

* Audacity 3.5 is tested on macOS 14
  * Any macOS version since OS X 10.9  may still work, but is no longer tested.

**Linux**

* Linux support is tested with AppImages on Ubuntu 22.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
  * On some distributions, `libfuse2` needs to be installed for AppImages to work. See [https://github.com/AppImage/AppImageKit/wiki/FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE) for more information.
  * Community-maintained distro-specific versions and other repackages (such as Flatpak) are often available, too.
