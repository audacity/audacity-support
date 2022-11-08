# Release Notes 2.3.1 and 2.3.0

This page provides release notes for:

* Audacity 2.3.1 [(scroll down)](broken-reference) which is currently being tested and will be released soon
* Audacity 2.3.0, which is already released.

***

### Audacity 2.3.0

**Audacity 2.3.0 was released on 29 September 2018.**

### Contents

* [1 Audacity 2.3.0](broken-reference)
  * [1.1 Size and Checksums](broken-reference)
  * [1.2 Changes and improvements since previous version](broken-reference)
  * [1.3 Supported Platforms](broken-reference)
  * [1.4 Interactive Buglist Page](broken-reference)
  * [1.5 Bug Fixes](broken-reference)
  * [1.6 Highlighted Issues](broken-reference)
* [2 Audacity 2.3.1](broken-reference)
  * [2.1 Size and Checksums](broken-reference)
  * [2.2 Changes and improvements since previous version](broken-reference)
  * [2.3 Supported Platforms](broken-reference)
  * [2.4 Interactive Buglist Page](broken-reference)
  * [2.5 Highlighted Issues](broken-reference)

### Size and Checksums

```
audacity-win-2.3.0.exe	(application/x-msdownload) - 26693160 bytes
SHA-256	3909676287cc0c44fe867bcc0e74a23891aeeeda42ebf11b3037c9b28dca43a1

audacity-win-2.3.0.zip	(application/x-zip-compressed) - 12899377 bytes
SHA-256	f57b4074a544169311830bb428d1d8fefafceb6a3b0680ae23fa1c5321c05835

audacity-macos-2.3.0.dmg	(n/a) - 35846075 bytes
SHA-256	16684a03a6e6aacac0962636735ce7d9bf11483f6d194b05729981136cced9eb

audacity-manual-2.3.0.zip	(application/x-zip-compressed) - 20131123 bytes
SHA-256	4f48b3e5d8b8573442c087cbf853297cae46ce54754f7485b50e86e0b4326b98
```

|   | <p>The 2.3.0 tarball is now marked as 'Experimental'.</p><p>After release we found it is not stable, and are investigating.</p><p><a href="https://bugzilla.audacityteam.org/show_bug.cgi?id=1992">Bug 1992</a> is one way to cause the problem.</p> |
| - | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

```
audacity-minsrc-2.3.0.tar.xz	(n/a) - 10431768 bytes
SHA-256	bc9c9e3c826e7e9c481ef3adcdf6277836c099ca26c34bd7071d0522917fecd8
```

### Changes and improvements since previous version

Audacity 2.3.0 replaces all previous versions.

* Over 90 bugs fixed since 2.2.2.
  * Includes fixes to Timer Record, and to 'Envelope Points'.
* New feature - "Punch and Roll Recording".
* Toolbars controlling volume and speed can now be resized for greater precision.
* Play-at-Speed now can be adjusted whilst playing.
* Macros (formerly 'Chains') substantially extended.
* Pinned-play-head can now be repositioned by dragging.

Full details of new features in the visual guide to [New Features in 2.3.0](https://alphamanual.audacityteam.org/man/New\_features\_in\_this\_release)

### Supported Platforms

**Windows**

* Audacity 2.3.0 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.3.0 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 2.3.0 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.2.2 that we have fixed for 2.3.0
* Known bugs on the OS you use Mac, Windows or Linux.
* Known bugs to do with accessibility or localization.
* Workarounds for some bugs.
* Serious bugs and less serious bugs.

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that [dynamic buglist page](<../../../.gitbook/assets/Issues (6)>) for most users.

We **do** use this detail in our own QA work.

### Bug Fixes

Some of the bugs we fixed for Audacity 2.3.0:

* Timer record continues recording and does not stop at the stated time. _You may on low powered hardware still see slow updates to the timer, and we haven't fixed that entirely yet_.
* QM 1.7.1 plug-in crash, now fixed.
* Envelope curves got badly confused when joining clips.
* "The Incredible Shrinking Toolbars" - Toolbars getting smaller if you repeatedly docked and undocked them.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.3.0 for most users.

\
**Accessibility**

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

\
**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

\
**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (4 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=276\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=1585\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=1657\&field0-0-3=bug\_id\&type0-0-3=equals\&value0-0-3=1913\&field0-0-4=bug\_id\&type0-0-4=equals\&value0-0-4=1992\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) | **ID**                                                         |
| -------------------------------------------------------------- | ----- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------- |
| [1913](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1913) | P1    | RESOLVED   | Mac: Audacity will not work with future versions of macOS                                                                                                                                                                                                                                                                                                                                                                      | [1913](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1913) |
| [1992](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1992) | P1    | RESOLVED   | Linux: built-in real-time preview effects crash                                                                                                                                                                                                                                                                                                                                                                                | [1992](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1992) |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | P3    | NEW        | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                                                                                                                                                                                         | [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   |
| [1657](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1657) | P3    | RESOLVED   | Windows: DirectSound Sound Activated Recording does not record correctly or pauses permanently after 12 seconds                                                                                                                                                                                                                                                                                                                | [1657](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1657) |

* Click on the bug numbers to see work done on these bugs.

***

### Audacity 2.3.1

**Audacity 2.3.1 will be released on 8th March 2019.**

### Size and Checksums

```
audacity-win-2.3.1.exe application/x-msdownload)
SHA-256 c3f35f2061473433cd545145d9018dab600ed6806a4a3de7e04cc5e8875b1966

audacity-win-2.3.1.zip application/x-zip-compressed)
SHA-256 6be81567fe97446eb591910f82d7a6c7a4469ef1e2926a7344cee74db44772af

audacity-macos-2.3.1.dmg (n/a) 
SHA-256 cfce59cf73a8339c92d2246de7834df803a889563bd4c5b8bd4ef5fd3fd46553

audacity-minsrc-2.3.1.tar.xz (n/a)
SHA-256 f99f198a4d653aeee1f8967670f3edb4f74a81393bb14479d969f8aef9cdf923

audacity-manual-2.3.1.zip (application/x-zip-compressed)
SHA-256 235dc2cde337245d652033df46dce310aec3b3a213cc760764046d1b3afcf8a7
```

### Changes and improvements since previous version

Audacity 2.3.1 replaces all previous versions.

* Audacity now supports 64-bit Mac.
* Over 20 bugs fixed since 2.3.0, including:
  * A crashing bug on Linux that made Audacity 2.3.0. unsuitable for Linux.
  * Crash on Mac when right clicking on label.
  * Problems with Change Pitch, including not remembering parameter values.
* Options and preferences:
  * Microfades are now an opt-in feature. They were always on in 2.3.0.
  * The advanced vertical zooming option is now available in the View->Zoom menu.
* Regular interval labels now support range labels.

Full details of new features in the visual guide to [New Features in 2.3.1](https://alphamanual.audacityteam.org/man/New\_features\_in\_this\_release)

### Supported Platforms

**Windows**

* Audacity 2.3.1 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.3.1 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 2.3.1 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.3.0 that we have fixed for 2.3.1
* Known bugs on the OS you use Mac, Windows or Linux.
* Known bugs to do with accessibility or localization.
* Workarounds for some bugs.
* Serious bugs and less serious bugs.

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that dynamic buglist page for most users.

We **do** use this detail in our own QA work.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.3.1 for most users.

\
**Accessibility**

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

\
**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

\
**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (2 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=276\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=1585\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=1657\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) | **ID**                                                         |
| -------------------------------------------------------------- | ----- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | P3    | NEW        | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                                                                           | [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   |
| [1657](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1657) | P3    | RESOLVED   | Windows: DirectSound Sound Activated Recording does not record correctly or pauses permanently after 12 seconds                                                                                                                                                                                                  | [1657](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1657) |

* Click on the bug numbers to see work done on these bugs.
