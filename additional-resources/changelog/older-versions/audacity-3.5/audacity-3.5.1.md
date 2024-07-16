---
description: Audacity 3.5.1 was released on 24.04.2024.
---

# Audacity 3.5.1

This is a hotfix release. It fixes the following bugs:

* [#6322](https://github.com/audacity/audacity/issues/6322) Fixed a crash on launch on macOS 11 and older.
* [#6324](https://github.com/audacity/audacity/issues/6324) Fixed the update notification looking for alpha versions instead of release versions.
* [#6321](https://github.com/audacity/audacity/issues/6321) Fixed a freeze when using macros on multiple files.

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
