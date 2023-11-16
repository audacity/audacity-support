# Audacity 3.4.2

This is a hotfix release. It fixes the following issues:

* &#x20;\#5568 Fix a crash when opening projects with zero-length clips.
* &#x20;\#5032 When exporting a file, the sample rate of the tracks is now considered, and last-used sample rate is remembered.&#x20;
* &#x20;[#5555](https://github.com/audacity/audacity/pull/5555) Copy-pasting behavior now pastes into clips again by default. This can be changed via Preferences -> Track Behavior -> Always paste audio as new clips.
* \#5549 Mix and render now also resets the gain for the resulting track.
* &#x20;\#5571 Fix clips shifting to the right when effects are applied to them.
* &#x20;\#5106 Fix clicks occurring when overdubbing a project with muted tracks.
* &#x20;\#5533 Fix files being exported without a file extension in rare cases.
* &#x20;\#5539 Show all sample rates possible for MP2 exports.
* &#x20;\#5518 Fix pasting into labels.
* &#x20;\#5543 Fix a crash when clearing loops.
* &#x20;\#5529 Fix copying when "select all audio if selection required" is enabled.
* &#x20;\#5598 #5552 Fix GTK detection and compilation for wxWidgets 3.2.4.
* &#x20;[#5551](https://github.com/audacity/audacity/pull/5551) Fix Nyquist-related crashes.
* &#x20;\#5604 Fix EQs in macros.
* &#x20;\#5511 Fix a crash when closing Audacity.
* &#x20;\#5476 Fix builds on arm64/armhf.
* &#x20;\#5631 Use dladdr when possible to setup modules paths

### Supported Platforms

**Windows**

* Audacity 3.4 is tested on Windows 10 & 11
  * Windows Vista, 7 and 8.1 may still work, but are no longer tested.

**macOS / Mac OS X**

* Audacity 3.4 is tested on macOS 12 - 14
  * Mac OS X 10.9 and onwards may still work, but are no longer tested.

**Linux**

* In addition to the traditional update path via package managers, Audacity is distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested with AppImages on Ubuntu 22.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
