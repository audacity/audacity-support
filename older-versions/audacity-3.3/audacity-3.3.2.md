# Audacity 3.3.2

Audacity 3.3.2 was released on 5. May 2023.

This is a hotfix release.

## Bug Fixes

* [#4629](https://github.com/audacity/audacity/issues/4629) Linux AppImage fails to start.
* [#4637](https://github.com/audacity/audacity/issues/4637) Issues with selection and time toolbars on Linux packages.
* [#4639](https://github.com/audacity/audacity/issues/4639) Missing duration input in generators on Linux packages.
* [#4646](https://github.com/audacity/audacity/issues/4646) Potentialy extreme memory usage with Jack host.
* [#4654](https://github.com/audacity/audacity/pull/4654) Anonymous upload to [audio.com](http://audio.com/) is disabled.

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
