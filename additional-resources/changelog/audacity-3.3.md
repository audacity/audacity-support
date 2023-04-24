# Audacity 3.3

Audacity 3.3 was released on 24. Apr 2023

This release is mostly focused on under-the-hood changes

## Changes

* Some of the built-in effects are now realtime capable (Bass & Treble, Distortion, Phaser, Reverb and Wahwah).
* [#4352](https://github.com/audacity/audacity/pull/4352) Added a new effect: Shelf Filter.
* Added an initial (beta) version of Beats and Bars. See [aligning-music-to-beats-and-measures.md](../../music/aligning-music-to-beats-and-measures.md "mention") for further info.&#x20;
* [#4414](https://github.com/audacity/audacity/pull/4414) reworked the bottom toolbar dock:
  * Project Sample Rate is now found in Audio Setup -> Audio Settings (formerly known as Project Rate).
  * The Snapping Toolbar (formerly known as Snap-To) is now independent of the Selection Toolbar.
  * Added a new Time Signature Toolbar (beta). It is hidden by default. See [aligning-music-to-beats-and-measures.md](../../music/aligning-music-to-beats-and-measures.md "mention") for further info.
* [#4212](https://github.com/audacity/audacity/issues/4212) Improved Zooming behavior slightly (more to come in the future).
* [#4393](https://github.com/audacity/audacity/pull/4393) Added a new ruler, Linear (dB). This ruler goes from 0 dBFS to -∞ dBFS and better reflects the volume as shown in the recording/playback meters.
* [#3820](https://github.com/audacity/audacity/issues/3820) When copying clips between projects, you now can choose between whether to copy smart clips or just the visible portion.
* [#4133](https://github.com/audacity/audacity/pull/4133) added a delete button to the Cut/Copy/Paste toolbar.

### Bugfixes

* [#1584](https://github.com/audacity/audacity/issues/1584) Audacity no longer dithers tracks unnecessarily.
* [#2427](https://github.com/audacity/audacity/issues/2427) Linux playback now handles output latency better (less stutters).
* [#3796](https://github.com/audacity/audacity/issues/3796) The EQ effect no longer resets clip names.
* [#4417](https://github.com/audacity/audacity/issues/4417) Resampling a track no longer trims it.

### Libraries

* FFmpeg 6 (avformat 60) is now supported.
* Moved from Breakpad to Crashpad.
* Extracted various libraries from within Audacity.

A full list of changes can be found [on Github](https://github.com/audacity/audacity/milestone/12?closed=1).

### Supported Platforms

**Windows**

* Audacity 3.3 is tested on Windows 10 & 11
  * Windows Vista, 7 and 8.1 should still work, but are no longer tested.

**macOS / Mac OS X**

* Audacity 3.3 is tested on macOS 12 & 13
  * OS X 10.9 and onwards should still work, but are no longer tested.

**Linux**

* In addition to the traditional update path via package managers, Audacity is distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested with AppImages on Ubuntu 20.04 & 22.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.

#### Compiling from source

Audacity is not yet compatible with Conan 2.&#x20;
