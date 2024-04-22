---
description: Audacity 3.4.1 was released on 08 Nov 2023.
---

# Audacity 3.4.1

This is a hotfix release. It fixes the following bugs:

* &#x20;[#5467](https://github.com/audacity/audacity/issues/5467) Fix 24-bit recording.
* &#x20;[#5488](https://github.com/audacity/audacity/issues/5488) Fix a crash with .aup importing.
* &#x20;[#5471](https://github.com/audacity/audacity/issues/5471) [#5483](https://github.com/audacity/audacity/issues/5483) Fix crossfading of clips and tracks.
* &#x20;[#5473](https://github.com/audacity/audacity/issues/5473) Exporting multiple files honors sample rate settings again.
* &#x20;[#5480](https://github.com/audacity/audacity/issues/5480) [#5417](https://github.com/audacity/audacity/issues/5417) Fix crashes related to external program exports.
* &#x20;[#5479](https://github.com/audacity/audacity/issues/5479) [#5476](https://github.com/audacity/audacity/issues/5476) Fix BSD and ARM builds.
* &#x20;[#5498](https://github.com/audacity/audacity/pull/5498) Ctrl+J is now a standard shortcut for joining clips.
* &#x20;[#5389](https://github.com/audacity/audacity/issues/5389) Stereo tracks no longer randomly split into mono.
* &#x20;[#5007](https://github.com/audacity/audacity/issues/5007) When exporting a file, the file extension is now always added (except for custom FFmpeg and external program exports).
* &#x20;[#5516](https://github.com/audacity/audacity/issues/5516) Fix a crash when exporting Opus with older CPUs that don't support AVX.

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
