---
description: Audacity 3.7.0 was released on 30 Oct 2024
---

# Audacity 3.7

The 3.7.x series is primarily maintenance releases while we're working on Audacity 4.0. 3.7.0 fixes the following bugs:

## Changes

* [#6233](https://github.com/audacity/audacity/issues/6233) [#7397](https://github.com/audacity/audacity/issues/7397) [#6900](https://github.com/audacity/audacity/issues/6900) Improved Linux compatibility.
* [#6702](https://github.com/audacity/audacity/issues/6702) Improved contrast in the light theme.
* [#7008](https://github.com/audacity/audacity/issues/7008) MP3 exports: Renamed "Insane" to "Excessive".
* [#7570](https://github.com/audacity/audacity/issues/7570) [#7452](https://github.com/audacity/audacity/issues/7452) Improved non-standard character handling for cloud saving.
* [#7486](https://github.com/audacity/audacity/issues/7486) Renamed "Split cut/delete" to "Cut/delete and leave gap".
* [#7293](https://github.com/audacity/audacity/issues/7293) Pasting clips no longer moves clips on other tracks if "editing clips can move other clips" is enabled.
* [#7312](https://github.com/audacity/audacity/issues/7312) [#7382](https://github.com/audacity/audacity/issues/7382) Fixed database compacting not working properly sometimes.
* [#6851](https://github.com/audacity/audacity/issues/6851) Improved startup speed on systems with many audio devices.
* [#7186](https://github.com/audacity/audacity/issues/7186) Multi view: Fixed the hitbox of the x being misaligned with the visuals. (Thanks, Kurtsley)
* [#7468](https://github.com/audacity/audacity/issues/7468) macOS: Fixed VST presets path.
* [#7571](https://github.com/audacity/audacity/issues/7571) Adding, removing, replacing and reordering of effects now is undoable.
* [#7573](https://github.com/audacity/audacity/issues/7573) Closing a project upon turning a realtime effect stack on and off doesn't crash Audacity anymore.
* [#7610](https://github.com/audacity/audacity/issues/7610) Canceling a stereo track mid-operation no longer crashes Audacity.
* [#7385](https://github.com/audacity/audacity/issues/7385) Importing Opus files using libopus no longer shifts the audio data.
* Changed the login flow for cloud uploads.



## Supported Platforms

**Windows**

* Audacity 3.7 is tested on Windows 10 & 11
  * Windows Vista, 7 and 8.1 may still work, but are no longer tested. We are not actively supporting these versions anymore, but still accept patches which improve compatibility with these versions.

**macOS / Mac OS X**

* Audacity 3.7 is tested on macOS 14
  * Older macOS versions down to OS X 10.9 may still work, but is no longer tested. We are not actively supporting OSX versions anymore, but still accept patches which improve compatibility with these versions.
  * The Universal Binary may not work on various OSX versions. Use the Intel (x86\_64) installer instead.

**Linux**

* Linux support is tested with AppImages on Ubuntu 24.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
  * On some distributions, `libfuse2` needs to be installed for AppImages to work. See [https://github.com/AppImage/AppImageKit/wiki/FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE) for more information.
  * Community-maintained distro-specific versions and other repackages (such as Flatpak) are often available, too.
