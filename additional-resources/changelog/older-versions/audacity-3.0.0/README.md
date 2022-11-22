# Audacity 3.0.0

**Audacity 3.0.0 was released on 17th Mar 2021.**

### Checksums

```
audacity-win-3.0.0.exe	(application/x-msdownload) - 29378296 bytes
SHA-256	6a0cfed327b00cf8fefef4bd5c8ba85b5364f3e56345772410572f2d821ca14d

audacity-macos-3.0.0.dmg	(n/a) - 41328807 bytes
SHA-256	f769a9e8c0f2352171933339681616ddab43ca6d7b688918e5af8bd1382a0fad

audacity-minsrc-3.0.0.tar.xz	(n/a) - 13308836 bytes
SHA-256	d3bb1358b930ea4ef935ed83cc5a0f47006565762c5667c2fb376c6535876a6a

audacity-win-3.0.0.zip	(application/x-zip-compressed) - 12507745 bytes
SHA-256	63c23df0731d02327ca964f01e0bd2ff533fa189ef18402e29c3e3992038217d

audacity-manual-3.0.0.zip	(application/x-zip-compressed) - 23118171 bytes
SHA-256	9e3ab6ae3455db8be98e26cc09d90a89901e37b8eca671949f9959bbc1c7c2e8
```

### Changes and improvements since previous version

Audacity 3.0.0 replaces all previous versions.

* Over 150 bugs fixed since 2.4.2

Full details of new features in the visual guide to [new-features-in-audacity-3.0.0.md](new-features-in-audacity-3.0.0.md "mention")

### Supported Platforms

**Windows**

* Audacity 3.0.0 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.0.0 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.0.0 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.4.2 that we have fixed for 3.0.0
* Known bugs on the OS you use Mac, Windows or Linux.
* Known bugs to do with accessibility or localization.
* Workarounds for some bugs.
* Serious bugs and less serious bugs.

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that [dynamic buglist page](../../../../.gitbook/assets/Issues) for most users.

We **do** use this detail in our own QA work.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 3.0.0 for most users.

**Accessibility**

* Less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary**                                                     |
| -------------------------------------------------------------- | ----- | ---------- | --------------------------------------------------------------- |
| [2672](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2672) | P3    | RESOLVED   | Plug-ins listed in reverse alphabetic order in Plug-ins Manager |

* Click on the bug numbers to see work done on these bugs.
