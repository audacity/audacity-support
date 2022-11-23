# Audacity 2.3.1

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

Full details of new features in the visual guide to [new-features-in-audacity-2.3.1.md](new-features-in-audacity-2.3.1.md "mention")

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

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that [dynamic buglist page](broken-reference) for most users.

We **do** use this detail in our own QA work.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.3.1 for most users.

**Accessibility**

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (2 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=276\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=1585\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=1657\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) |
| -------------------------------------------------------------- | ----- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | P3    | NEW        | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                                                                           |
| [1657](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1657) | P3    | RESOLVED   | Windows: DirectSound Sound Activated Recording does not record correctly or pauses permanently after 12 seconds                                                                                                                                                                                                  |

* Click on the bug numbers to see work done on these bugs.
