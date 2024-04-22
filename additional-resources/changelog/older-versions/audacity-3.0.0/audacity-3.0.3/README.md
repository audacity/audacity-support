# Audacity 3.0.3

**Audacity 3.0.3 was released on the 26th of July, 2021**

### Changes and improvements since previous version

Key improvements:

* Windows version is now 64-bit
  * (Note: 32-bit plugins will _**not work**_ on 64-bit Audacity)
  * _A 32-bit build of 3.0.3 remains available for download_
* Improved default spectrogram colors
* We now provide an official binary for Linux in the form of an AppImage
* Update checking: Audacity can now check to see if there is a newer version available
* Error reporting: this is a new dialog where users can choose to send us the details of a serious error
* Multiple bugs fixed

{% hint style="danger" %}
If you are a user of previous Audacity versions on Windows and had installed the optional FFmpeg library then you must now install the 64-bit versions of the FFmpeg library.

Otherwise your imports and exports that depend upon FFmpeg will no longer work.

See [Installing FFmpeg for Windows](https://manual.audacityteam.org/man/installing\_ffmpeg\_for\_windows.html) for installation details.
{% endhint %}

Full details of new features in the visual guide to [new-features-in-audacity-3.0.3.md](new-features-in-audacity-3.0.3.md "mention")

Audacity 3.0.3 replaces all previous versions.

### Supported Platforms

**Windows**

* Audacity 3.0.3 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.0.3 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.0.3 is for Intel Macs running OS X 10.9 and later and macOS.
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

Below are listed what we believe are the most common and important issues with 3.0.3 for most users.

**Accessibility**

* Less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library.

**Internationalization**

* Audacity is only partially translated in many languages. We also have some issues, for example, with Right-To-Left Languages.

**Selected Bugzilla-Tracked Bugs**

| **ID**                                                         | **P** | **Status** | **Summary (2 tasks)** [**⇒**](http://bugzilla.audacityteam.org/buglist.cgi?\&field0-0-0=bug\_id\&type0-0-0=equals\&value0-0-0=2705\&field0-0-1=bug\_id\&type0-0-1=equals\&value0-0-1=2755\&field0-0-2=bug\_id\&type0-0-2=equals\&value0-0-2=2757\&field0-0-3=bug\_id\&type0-0-3=equals\&value0-0-3=2787\&field0-0-4=bug\_id\&type0-0-4=equals\&value0-0-4=2738\&field0-0-5=bug\_id\&type0-0-5=equals\&value0-0-5=2739\&field0-1-0=bug\_status\&type0-1-0=notequals\&value0-1-0=CLOSED) |
| -------------------------------------------------------------- | ----- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [2739](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2739) | P2    | RESOLVED   | If Temporary files directory is set to be unwritable then Audacity has a catalog of cryptic unhelpful errors                                                                                                                                                                                                                                                                                                                                                                           |
| [2738](http://bugzilla.audacityteam.org/show\_bug.cgi?id=2738) | P2    | RESOLVED   | Audacity crashes with Macros on files when the macro-output folder is in an unwriteable location                                                                                                                                                                                                                                                                                                                                                                                       |

* Click on the bug numbers to see work done on these bugs.
