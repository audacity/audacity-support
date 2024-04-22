# Audacity 3.0.4

**Audacity 3.0.4 was released on 24. Aug 2021.**

### Changes and improvements since previous version

Audacity 3.0.4 replaces all previous versions.

This is a hotfix release that fixes a bug with envelope points, which could multiply uncontrollably and cause Audacity to crash. In particular:

* [#1476](https://github.com/audacity/audacity/issues/1476): Envelope points are multiplied when using Filter Curve EQ or Graphic EQ
* [#1477](https://github.com/audacity/audacity/issues/1477): Filter Curve EQ will crash if there is an envelope point outside of the selection

This fix re-introduces an earlier, but way less destructive bug:

* [bugzilla 208](https://bugzilla.audacityteam.org/show\_bug.cgi?id=208) / [#1500](https://github.com/audacity/audacity/issues/1500): Some effects delete Envelope Control Points, or do not move them when timeline changes

Other than that, this release is identical to Version 3.0.3.

### Supported Platforms

**Windows**

* Audacity 3.0.4 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.0.4 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.0.4 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
