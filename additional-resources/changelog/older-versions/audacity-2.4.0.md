# Audacity 2.4.0

**Audacity 2.4.0 was released on 16th May 2020.**

### Checksums

```
audacity-win-2.4.0.exe 
SHA256 dc71fbfd4f6c1b921c6f8ec387125fb61f53a60abeeff30aa73e19ba675b2bec

audacity-macos-2.4.0.dmg 
SHA256 42d08496569556d22f2f22c84b9f0196ef207af1311a9089ebbfcf2af9e21922

audacity-minsrc-2.4.0.tar.xz 
SHA256 dcb85efe447e8c6fa815f5fa1c4a0678ec56fb4db52d767de2ecfb546f777878

audacity-manual-2.4.0.zip 
SHA256 3800bff937de7e8695c27dce107e5779d6d84ad2c49ef8906eb7069824209472

audacity-2.4.0.zip 
SHA256 b697958c49de95818f7322bca7a043cee1580c3ecab91d62bfb649457edd285a
```

### Changes and improvements since previous version

Audacity 2.4.0 replaces all previous versions.

* Over 100 bugs fixed since 2.3.3

Full details of new features in the visual guide to [New Features in 2.4.0](https://wiki.audacityteam.org/wiki/New\_features\_in\_Audacity\_2.4.0)

### Supported Platforms

**Windows**

* Audacity 2.4.0 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.4.0 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 2.4.0 is for Intel Macs running OS X 10.7 and later and macOS including Catalina.
  * There are legacy versions for older OS X at [https://audacityteam.org/download/legacy-mac/](https://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux. Use the CMake build. The Automake build is no longer reliable.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.3.3 that we have fixed for 2.4.0
* Known bugs on the OS you use Mac, Windows or Linux.
* Known bugs to do with accessibility or localization.
* Workarounds for some bugs.
* Serious bugs and less serious bugs.

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that dynamic buglist page for most users.

We **do** use this detail in our own QA work.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.4.0 for most users.

**Accessibility**

* Less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (5 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=276\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=421\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=1986\&field0-0-3=bug\_id\&type0-0-3=equals\&value0-0-3=2212\&field0-0-4=bug\_id\&type0-0-4=equals\&value0-0-4=2400\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) |
| -------------------------------------------------------------- | ----- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [2400](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2400) | P1    | RESOLVED   | Mac: Zoomed in, playback meters slow to respond.                                                                                                                                                                                                                                                                                                                                                                              |
| [1986](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1986) | P2    | RESOLVED   | Linux: Unwanted messages in console.                                                                                                                                                                                                                                                                                                                                                                                          |
| [421](http://bugzilla.audacityteam.org/show\_bug.cgi?id=421)   | P2    | RESOLVED   | Crash importing malformed MP3 file using libmad                                                                                                                                                                                                                                                                                                                                                                               |
| [2212](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2212) | P2    | RESOLVED   | Mac: Keyboard tabbing in Timer Record stuck in left hand panel.                                                                                                                                                                                                                                                                                                                                                               |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | P3    | NEW        | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                                                                                                                                                                                        |

* Click on the bug numbers to see work done on these bugs.
