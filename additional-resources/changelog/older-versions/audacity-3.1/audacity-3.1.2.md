# Audacity 3.1.2

**Audacity 3.1.2 was released on 16. Nov 2021.**

### Changes and improvements since previous version

Audacity 3.1.2 is a hotfix release for Audacity 3.1.

It fixes the following bugs:

* Fixed UTF8 support in clip titles [#2135](https://github.com/audacity/audacity/pull/2135)
* Fixed data loss on joining clips [#2123](https://github.com/audacity/audacity/pull/2123)
* Fixed a crash with exporting resampled tracks [#2136](https://github.com/audacity/audacity/pull/2136)
* Fixed a crash when opening projects with very small double values [#2128](https://github.com/audacity/audacity/pull/2128)

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
