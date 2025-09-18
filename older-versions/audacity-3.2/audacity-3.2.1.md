# Audacity 3.2.1

**Audacity 3.2.1 was released on 05 Oct 2022**

This is a patch release for Audacity 3.2. It fixes some bugs.

### Changes and improvements since previous version

* [#3686](https://github.com/audacity/audacity/issues/3686) Fixed Audacity crashing on startup on some systems.
* [#3694](https://github.com/audacity/audacity/issues/3694) Fixed a crash when applying Waves Berzerk Distortion Mono to a mono track.
* [#3699](https://github.com/audacity/audacity/issues/3699) Fixed a freeze when very quickly starting and stopping playback.
* [#3747](https://github.com/audacity/audacity/issues/3747) macOS: Homebrew FFmpeg installs are now found automatically.
* [#3594](https://github.com/audacity/audacity/issues/3594) macOS: Fixed Melda VST Plugin UI.
* [#3474](https://github.com/audacity/audacity/issues/3474) Building with VST3 support is now possible without Conan.

A full list of changes can be found [on Github](https://github.com/audacity/audacity/milestone/14?closed=1).

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
