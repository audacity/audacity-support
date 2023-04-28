# Audacity 2.3.2

**Audacity 2.3.2 was released on 15th May 2019.**

### Size and Checksums

```
audacity-win-2.3.2.exe application/x-msdownload)
SHA-256 351bbf5a30e65e2a77d28cf5384057bbc2b25880c682be755908307951e43b01

audacity-win-2.3.2.zip application/x-zip-compressed)
SHA-256 7edd522506274df9fff2839182988c210a7c2187295942b963eb81ea094cd4ad

audacity-macos-2.3.2.dmg (n/a) 
SHA-256 0d2ea6de4f2cbd960abb6a6e020b51f6637423c072422596691960fcfae67206

audacity-minsrc-2.3.2.tar.xz (n/a)
SHA-256 df1f88984a6486094157e061024244b39c4a5875394ec9e5ae404c783cd8fee2

audacity-manual-2.3.2.zip (application/x-zip-compressed)
SHA-256 67717cf822e8f528da164f685175b181af99b59aa87941da8df46b8559ba5362 

audacity-macosx-ub-2.1.1-screen-reader.dmg (n/a)
SHA-256 b1913d3362a9221609bae7fab848a5cae93d786d178234c6018e3c95ddfd9d62
```

### Changes and improvements since previous version

Audacity 2.3.2 replaces all previous versions.

* Audacity now includes the LAME MP3 encoder. Previously, due to now expired patents, you had to download it separately.
* There is a new Select button in the track panel to select the whole track.
* Audacity mod-script-pipe for driving Audacity from Python now comes with Audacity and it can be enabled via preferences.
* Over 20 bugs fixed since 2.3.1. The most serious bug was that Audacity 2.3.1 would crash if append-recording to a collapsed track.

Full details of new features in the visual guide to [new-features-in-audacity-2.3.2.md](new-features-in-audacity-2.3.2.md "mention")

### Supported Platforms

**Windows**

* Audacity 2.3.2 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.3.2 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 2.3.2 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.3.1 that we have fixed for 2.3.2
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
