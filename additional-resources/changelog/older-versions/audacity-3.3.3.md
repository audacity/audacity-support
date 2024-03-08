# Audacity 3.3.3

Audacity 3.3.3 was released on 08 Jun 2023.

This is a hotfix release. It fixes the following bugs:

* [#4618](https://github.com/audacity/audacity/issues/4618) Fixed EQ not scaling properly when resizing the window.
* [#4743](https://github.com/audacity/audacity/pull/4743) Fixed the [audio.com](http://audio.com/) upload flow.

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
