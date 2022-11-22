# Audacity 2.4.2

**Audacity 2.4.2 was released on 26th Jun 2020.**

### Checksums

```
audacity-win-2.4.2.exe
SHA256	1f20cd153b2c322bf1ff9941e4e5204098abdc7da37250ce3fb38612b3e927ba

audacity-macos-2.4.2.dmg
SHA256	4730abe5b59d9c3dd000fde22d7037af6e6019a4305195a3e4e714f6c9f6380a

audacity-minsrc-2.4.2.tar.xz
SHA256	b3ea9b85f184cec4c1d0da50edb4a588132589d6d1709f6ef0147d52199d0b59

audacity-2.4.2.zip
SHA256	0c14f7c6850c93b9dacc14fe66876b8dc3397d92dbd849898783a21bad1fff55

audacity-manual-2.4.2.zip
SHA256	030b8da55738d80a181af212f6ce25205c4d047a90f21c15acd083c5a589a6c6

audacity-macosx-ub-2.1.1-screen-reader.dmg
SHA256	b1913d3362a9221609bae7fab848a5cae93d786d178234c6018e3c95ddfd9d62
```

### Changes and improvements since previous version

Audacity 2.4.2 replaces all previous versions.

* Over 30 bugs fixed since 2.4.1

Full details of new features in the visual guide to [new-features-in-audacity-2.4.2.md](new-features-in-audacity-2.4.2.md "mention")

### Supported Platforms

**Windows**

* Audacity 2.4.2 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.4.2 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 2.4.2 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [https://audacityteam.org/download/legacy-mac/](https://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.4.1 that we have fixed for 2.4.2
* Known bugs on the OS you use Mac, Windows or Linux.
* Known bugs to do with accessibility or localization.
* Workarounds for some bugs.
* Serious bugs and less serious bugs.

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that [dynamic buglist page](<../../../../.gitbook/assets/Issues (8)>) for most users.

We **do** use this detail in our own QA work.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.4.2 for most users.

**Accessibility**

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (2 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=276\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=2212\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) |
| -------------------------------------------------------------- | ----- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [2212](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2212) | P2    | RESOLVED   | Mac: Keyboard tabbing in Timer Record stuck in left hand panel.                                                                                                                                                                                           |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | P3    | NEW        | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                    |

* Click on the bug numbers to see work done on these bugs.
