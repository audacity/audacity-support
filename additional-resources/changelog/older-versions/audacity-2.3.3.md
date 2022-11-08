# Audacity 2.3.3

{% hint style="danger" %}
In early October Apple released its latest operating system 10.15.x known as **Catalina**.

Audacity is not officially supported yet to run under Catalina. It appears to launch and run fine but it fails to record from the microphone (or external USB device) yielding only a flat-line silent recording. This is a permissions issue regarding access to the microphone (recording input) and something which we need to explore further.

Fortunately there is a workaround ...

if you have updated to Catalina and still need to use Audacity for recording as well as all its other functionality:

1\) Go to Applications > Utilities

2\) Launch Terminal.app

3\) in the Terminal dialog type the following command following command:

open /Applications/Audacity.app/Contents/MacOS/Audacity

This will open Audacity and then Terminal will actually ask for the correct permissions.

this assume that Audacity is stored in your Applications folder. If it is somewhere else, you will need to change the path in the above command: open /\*location of audacity\*/Audacity.app/Contents/MacOS/Audacity When you first try to record, you will be asked to grant access to the microphone - similar happened in 1.14 Mojave - but microphone access permissions granted in Mojave do not pass through to Catalina. Once you have granted this access in Catalina you should not be asked for it again when relaunching Audacity with this workaround method.

If you leave Audacity active (black dot) in the bottom dock you can just relaunch from the Audacity logo.

If you totally quit Audacity you will need to relaunch from the Terminal app again every time.

\
Finally: _credit for providing this useful workaround must go to Forum user noraa - very much appreciated, thanks Noraa._
{% endhint %}

**Audacity 2.3.3 was released on ----- May 2019.**

### Checksums

```
audacity-win-2.3.3.exe
SHA256	263cecf19ff27c7a2f0c04a4031f0e45cda5215eb0836a4e40e09605d83286e2

audacity-macos-2.3.3.dmg
SHA256	43db4d502086257ca377326f9621a343149faac6d3334424b20a3b5caceadda8

audacity-minsrc-2.3.3.tar.xz
SHA256	ca42f64d9e9b3d5ee007f5d00b438229f88c9016f30b3ad9f49076a14bce0b55

Audacity-2.3.3.zip
SHA256	0cb7d4e293ee6fd6955af2a4bc6cea8cf21b9db053b86274f3072e036d7204e3

audacity-manual-2.3.3.zip
SHA256	286ca5b865d53f960e45976bb22c6f0c1b863f2f43e8b7c0f633bf1c5ecb2790

audacity-macosx-ub-2.1.1-screen-reader.dmg
SHA256	b1913d3362a9221609bae7fab848a5cae93d786d178234c6018e3c95ddfd9d62
```

### Changes and improvements since previous version

Audacity 2.3.3 replaces all previous versions.

* Over 150 bugs fixed since 2.3.2.

Full details of new features in the visual guide to [New Features in 2.3.3](https://manual.audacityteam.org/man/new\_features\_in\_this\_release.html)

### Supported Platforms

**Windows**

* Audacity 2.3.3 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.3.3 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 2.3.3 is for Intel Macs running OS X 10.7 and later and macOS, but not Catalina.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

### Interactive Buglist Page

_We probably track more bugs than you are interested in..._

On the dynamic buglist page you can select to view:

* Complete list of bugs in 2.3.2 that we have fixed for 2.3.3
* Known bugs on the OS you use Mac, Windows or Linux.
* Known bugs to do with accessibility or localization.
* Workarounds for some bugs.
* Serious bugs and less serious bugs.

You can choose various combinations of these. However, there are probably too many minor bugs and too much detail on that [dynamic buglist page](<../../../.gitbook/assets/Issues (7)>) for most users.

We **do** use this detail in our own QA work.

### Highlighted Issues

* Below are listed what we believe are the most common and important issues with 2.3.3 for most users.

\
**macOS Catalina**

* We don't properly support mac Catalina yet. A workaround must be used to get recording to work at all.

**Accessibility**

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

\
**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

\
**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (2 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=276\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=1585\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=2227\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) | **ID**                                                         |
| -------------------------------------------------------------- | ----- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [2227](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2227) | P1    | RESOLVED   | Mac: Audacity does not run properly on macOS 10.15 Catalina                                                                                                                                                                                                                                                      | [2227](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2227) |
| [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   | P3    | NEW        | Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams                                                                                                                                                                                                                                           | [276](http://bugzilla.audacityteam.org/show\_bug.cgi?id=276)   |

* Click on the bug numbers to see work done on these bugs.
