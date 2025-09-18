# Audacity 3.2

**Audacity 3.2 was released on 22. Sep 2022**

### Changes and improvements since previous version

{% embed url="https://www.youtube.com/watch?v=DTRnDNR9LR8" %}

#### Prominent changes

* Added a new Effects button to the tracks menu, allowing you to place realtime effects.

Further information can be found on [https://support.audacityteam.org/audio-editing/using-realtime-effects](https://support.audacityteam.org/audio-editing/using-realtime-effects)

* Merged the mixer bar with the meter bars.
* Added a new Audio Setup button, replacing the Device Toolbar by default. The device toolbar can be re-added via the View > Toolbars menu.
* The Effects menu has gotten a new sorting. Other sorting and grouping options can be found in the Effects preferences.
* Updated the icons
* Added a quick audio sharing feature.

More info can be found on [https://support.audacityteam.org/basics/sharing-audio-online](https://support.audacityteam.org/basics/sharing-audio-online)

#### Plugin changes

* VST3 effects are now supported.
* VST3, LV2, Audio Units and LADSPA are now realtime capable
* Plugins now automatically get scanned, tested and enabled when Audacity starts.
  * You can find plugins on [https://plugins.audacityteam.org](https://plugins.audacityteam.org/)

#### System changes

* Apple Silicon (arm64) is now supported on macOS.

Note: When using an arm64 Audacity, you must use arm64 FFMPEG and plugins. Plugins for x86-64 (Intel macs) will not load.For the time being, Audacity will continue to offer x86-64 versions by default to avoid these incompatibilities, but you can download an arm64 version from [Github releases](https://github.com/audacity/audacity/releases).

* FFMPEG 5.0 (avformat 59) is now supported, in addition to avformat 55, 57 and 58
* Added support for [Wavpack](https://wavpack.com/)
* On Linux, Audacity can now be compiled without JACK present.
* Audacity now uses XDG directories on Linux. Note: If you are upgrading from a previous version, Audacity will keep using the \~/.audacity-data and \~/.audacity folders until you delete them.
* Switched from mad to mpg123 as MP3 importer
* Audacity has been added to [the Windows Package manager (winget)](https://learn.microsoft.com/en-us/windows/package-manager/).

#### License update

* Audacity binaries are now licensed under the GNU General Public License, Version 3. Most code files remain GPLv2-or-later, but VST3 support required this license update. More information can be found in the [announcement post](https://github.com/audacity/audacity/discussions/2142).

#### Removals

* Removed the Zoom Tool
* The Audacity Manual HTML pages no longer are included in the installation.

If you require offline access of the manual, you can download it [here](https://github.com/audacity/audacity-manual/releases).You also can download PDFs of [https://support.audacityteam.org](https://support.audacityteam.org/) straight from its sidebar (or the three-dot button in the top-right corner on smaller/mobile devices).

### Bug Fixes

* [3079](https://github.com/audacity/audacity/pull/3079) Fixed Audacity sometimes not being able to import MP3 files (or reporting Huffman Data Overruns) by switching import library
* [2590](https://github.com/audacity/audacity/issues/2590) Fixed rare data loss bug when placing labels during recording
* [2272](https://github.com/audacity/audacity/issues/2272) Fixed clip titles being able to disappear off-screen when editing them
* [2162](https://github.com/audacity/audacity/issues/2162) Fixed Punch and Roll not paying tracks in sync
* [1889](https://github.com/audacity/audacity/issues/1889) Fixed clip titles changing name when applying some effects
* [1624](https://github.com/audacity/audacity/issues/1624) During batch processing, Audacity will no longer stop to ask for a sample rate when an unsupported one is chosen, but choose the nearest supported one instead.
* [2265](https://github.com/audacity/audacity/issues/2265) Fixed mod-script-pipe not being installed on Linux
* [3571](https://github.com/audacity/audacity/pull/3571) Fixed GTK packaging in Appimages. This fixes various issues with icons, dropdowns and similar things not appearing properly.
* [3634](https://github.com/audacity/audacity/pull/3634) Improved M4A/AAC support. Previously the target bitrate was not honored at all, now it can be set between 98 and 160 kbit/s (mono) or 196 and 320 kbit/s (stereo). The UI does not yet reflect these limits.

A full list of changes can be found [on Github](https://github.com/audacity/audacity/milestone/8?closed=1).

### Supported Platforms

**Windows**

* Audacity 3.2 supports Windows 10 & 11
  * Windows Vista, 7 and 8.1 should still work, but are no longer tested.
  * Downloads for older versions are available on the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.

**macOS / Mac OS X**

* Audacity 3.2 supports OS X 10.9 and later, and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* In addition to the traditional update path via package managers, Audacity 3.0.3 and onwards are distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested on Ubuntu 20.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
