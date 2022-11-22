# Audacity 3.0.2

**Audacity 3.0.2 was released on 19th Apr 2021.**

### Checksums

```
audacity-win-3.0.2.exe	(application/x-msdownload) - 29534144 bytes
SHA-256	2fa8e586a339d9da8dcf49c21f4cd1cbaa24691b1dcc0d02f6c9f451ac8bea47

audacity-macos-3.0.2.dmg	(n/a) - 41554455 bytes
SHA-256	57895aad20a5512aeb44d1ab5b7d01a68a5303d4225351528f377eb7686f281e

audacity-minsrc-3.0.2.tar.xz	(n/a) - 13330160 bytes
SHA-256	728d6459931da006ed45a31e63b7fe6ca47a2547459a2aff3bf0880cef85c296

audacity-win-3.0.2.zip	(application/x-zip-compressed) - 12588153 bytes
SHA-256	00b8f65fdffc6f213362bd01bb21e3c47f1b5cdf99b4fc5c8c0dd92a41e590e0

audacity-manual-3.0.2.zip	(application/x-zip-compressed) - 23254582 bytes
SHA-256	5078ebf5c34af71abe60178b319cc6e6aae2e0d510bc400981e0899795ca362f
```

### Changes and improvements since previous version

Audacity 3.0.2 replaces all previous versions.

* Over 30 bugs fixed since 3.0.0

Full details of new features in the visual guide to [new-features-in-audacity-3.0.2.md](new-features-in-audacity-3.0.2.md "mention")

### Supported Platforms

**Windows**

* Audacity 3.0.2 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.0.1 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.0.2 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Buglists

_We probably track more bugs than you are interested in..._

We used to have a separate page with a dynamic buglist for each version, but nowadays we recommend instead to visit our [bugzilla instance](https://bugzilla.audacityteam.org/report.cgi) for current bug status.

We **do** use this detail in our own QA work.

### Highlighted Issues

Below are listed what we believe are the most common and important issues with 3.0.2 for most users.

**macOS Big Sur**

*

**Accessibility**

* Less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

\
**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

\
**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (3 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=2732\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=2700\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=2452\&field0-0-3=bug\_id\&type0-0-3=equals\&value0-0-3=2705\&field0-0-4=bug\_id\&type0-0-4=equals\&value0-0-4=2565\&field0-0-5=bug\_id\&type0-0-5=equals\&value0-0-5=2361\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) | **ID**                                                         |
| -------------------------------------------------------------- | ----- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [2700](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2700) | P2    | RESOLVED   | "Failed to open the project database"                                                                                                                                                                                                                                                                                                                                                                                                                                                  | [2700](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2700) |
| [2361](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2361) | P3    | NEW        | Linux: High-dpi displays are not supported                                                                                                                                                                                                                                                                                                                                                                                                                                             | [2361](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2361) |
| [2732](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2732) | P3    | RESOLVED   | Faux recovery offered on launch (very moonphase)                                                                                                                                                                                                                                                                                                                                                                                                                                       | [2732](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2732) |

* Click on the bug numbers to see work done on these bugs.
