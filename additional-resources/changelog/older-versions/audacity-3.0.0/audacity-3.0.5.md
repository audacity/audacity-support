# Audacity 3.0.5

**Audacity 3.0.5 was released on 29 Sep 2021.**

### Changes and improvements since previous version

Audacity 3.0.5 replaces all previous macOS versions.

This is a hotfix release that fixes a bug on macOS that could corrupt project files when being opened via cmd+o on languages where the decimal separator wasn't a dot.

Other than that, this release is identical to Version 3.0.3.

### Supported Platforms

**Windows**

* Audacity 3.0.5 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.0.5 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.0.5 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* In addition to the traditional update path via package managers, Audacity 3.0.3 and onwards are distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested on Ubuntu Linux.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
