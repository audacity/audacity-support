# Audacity 2.3.0

**Audacity 2.3.0 was released on 29 September 2018.**

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

{% hint style="danger" %}
The 2.3.0 tarball is now marked as 'Experimental'.

After release we found it is not stable, and are investigating.

[Bug 1992](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1992) is one way to cause the problem.
{% endhint %}

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

Full details of new features in the visual guide to [new-features-in-audacity-2.3.0.md](new-features-in-audacity-2.3.0.md "mention")

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

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that [dynamic buglist page](broken-reference) for most users.

We **do** use this detail in our own QA work.

### Bug Fixes

Some of the bugs we fixed for Audacity 2.3.0:

* Timer record continues recording and does not stop at the stated time. _You may on low powered hardware still see slow updates to the timer, and we haven't fixed that entirely yet_.
* QM 1.7.1 plug-in crash, now fixed.
* Envelope curves got badly confused when joining clips.
* "The Incredible Shrinking Toolbars" - Toolbars getting smaller if you repeatedly docked and undocked them.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.3.0 for most users.

**Accessibility**

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

**Selected Bugzilla-Tracked Bugs**

<table data-header-hidden><thead><tr><th width="103"></th><th width="59"></th><th width="158"></th><th width="317"></th><th></th></tr></thead><tbody><tr><td><strong>ID</strong></td><td><strong>P</strong></td><td><strong>Status</strong></td><td><strong>Summary (4 tasks)</strong> <a href="http://bugzilla.audacityteam.org/buglist.cgi?&#x26;field0-0-0=bug_id&#x26;type0-0-0=equals&#x26;value0-0-0=276&#x26;field0-0-1=bug_id&#x26;type0-0-1=equals&#x26;value0-0-1=1585&#x26;field0-0-2=bug_id&#x26;type0-0-2=equals&#x26;value0-0-2=1657&#x26;field0-0-3=bug_id&#x26;type0-0-3=equals&#x26;value0-0-3=1913&#x26;field0-0-4=bug_id&#x26;type0-0-4=equals&#x26;value0-0-4=1992&#x26;field0-1-0=bug_status&#x26;type0-1-0=notequals&#x26;value0-1-0=CLOSED"><strong>⇒</strong></a></td><td><strong>ID</strong></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1913">1913</a></td><td>P1</td><td>RESOLVED</td><td>Mac: Audacity will not work with future versions of macOS</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1913">1913</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1992">1992</a></td><td>P1</td><td>RESOLVED</td><td>Linux: built-in real-time preview effects crash</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1992">1992</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=276">276</a></td><td>P3</td><td>NEW</td><td>Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=276">276</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1657">1657</a></td><td>P3</td><td>RESOLVED</td><td>Windows: DirectSound Sound Activated Recording does not record correctly or pauses permanently after 12 seconds</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1657">1657</a></td></tr></tbody></table>

{% hint style="info" %}
Click on the bug numbers to see work done on these bugs.
{% endhint %}
