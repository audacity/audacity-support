# Audacity 3.1.1

**Audacity 3.1.1 was released on 11. Nov 2021.**

### Changes and improvements since previous version

Audacity 3.1.1 replaces all previous versions.

This is a hotfix release. It fixes the following bugs:

* Fixed FFMPEG imports only importing the left channel [#2046](https://github.com/audacity/audacity/pull/2046)
* Improved Audacity's performance when many clips are present
* Fixed a crash with detach at silences [#2072](https://github.com/audacity/audacity/issues/2072)
* Fixed clip name corruption when applying effects to adjacent clips [#1889](https://github.com/audacity/audacity/issues/1889)
* Fixed a crash with the time shift commands [#2061](https://github.com/audacity/audacity/issues/2061)
* Fixed custom themes not working [#2043](https://github.com/audacity/audacity/issues/2043)

Other than that, this release is identical to Version 3.1.0.

### Supported Platforms

**Windows**

* Audacity 3.1.x requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.1.x does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.1.x is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
