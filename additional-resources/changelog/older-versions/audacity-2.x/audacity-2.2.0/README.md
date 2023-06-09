# Audacity 2.2.0

**Audacity 2.2.0 was released on 02 November 2017.**

## Changes since previous version

See the [new-features-in-audacity-2.2.0.md](new-features-in-audacity-2.2.0.md "mention") page in the Manual for more information about improvements and other changes.

### Improvements

* Four Selectable themes provided, with new 'Light' theme as default, plus option to customize
* Many menu changes:
  * Menus Reorganized
  * Extended menu bar provided
  * New keyboard commands for working with clips
* Help buttons ? in Preferences, Effects, Generators and Analyzers - and other places
* Non-Greying out of effects when no selection (and explanatory dialog with help button)
* Playback of MIDI (and Allegro) files imported into Note Tracks is now available.
* 'Center' option in Selection Toolbar
* Stem plots
* Major overhaul to documentation/manual including many new images and streamlined text on landing pages for in-program help.

### Other Changes

* Append-record is now the default _(use Shift + Record for old behavior, to record on a new track)_
* The _Esc_ key now cancels all click-and-drag actions. It also chooses among overlapping mouse click targets, which is especially useful in the Multi-Tool.
* Sync-Lock button removed (use menu item or keyboard shortcut instead)
* New preferences and preference pages
* Overhaul of much code:
  * Overhaul of envelope handling code to deal with some anomalies
  * Overhaul of exception handling for greater safety
* New Logo

### Bug Fixes

* Major work on bug fixing. 198 bugs that were in 2.1.3 fixed for 2.2.0.
  * The most serious bug fixed this time round was [bug 437](http://bugzilla.audacityteam.org/show\_bug.cgi?id=437) which was about what happens when Audacity is recording and runs out of storage.
  * The problems of incomplete support for macOs Sierra have been resolved (including [bug 290](http://bugzilla.audacityteam.org/show\_bug.cgi?id=290), [bug 1567](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1567), [bug 1702](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1702), and [bug 1703](http://bugzilla.audacityteam.org/show\_bug.cgi?id=1703)).
  * Most of the bugs fixed were more minor, such as [bug 463](http://bugzilla.audacityteam.org/show\_bug.cgi?id=463) which was about a case in which the numbering on the timeline could display incorrect times.

For those who **really have to know**, the list of bugs fixed in 2.2.0 is [here](broken-reference).

## Supported Platforms

### Windows

* Audacity 2.2.0 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003. To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html). If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.2.0 does not officially support Windows XP.

### macOS / Mac OS X

* Audacity 2.2.0 is for Intel Macs running OS X 10.6 and later and macOS. There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

### Linux

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

## Issues

See our [list of issues](broken-reference) for much more detail of issues with Audacity 2.2.0.

{% hint style="info" %}
Below are listed what we believe are the most common and important issues with 2.2.0 for most users.
{% endhint %}

### File > Open

* If you use **File > Open** to "open" an audio file (WAV file or MP3 file say) the file will import properly but only the first few seconds of it will be shown (the default zoom level), but more importantly the horizontal scroll slider will be missing from the scroll bar, meaning you can't access the remaining audio.
  * All you need to do do is press the Play button or any of the Zoom buttons in the Edit toolbar and the horizontal scroll slider will be restored.
  * The best way to avoid this happening is to use the **File > Export** command to import the file into an Audacity project. All that the **File > Open** does with an audio file is to **Import** the audio into an open empty project, or if you already have an active project it will open a new project and import the file into that project.

### Timer Record

* Timer Record may not reliably stop the recording on some machines. The Elapsed and Remaining Time counters may stop counting. In this case it will be necessary to force quit Audacity.
  * On a few affected machines, the problem can be avoided if you leave focus on Audacity or ensure it has focus when recording is due to end.

### (Linux) PULSE Audio

* PulseAudio is not reliable when used with Audacity on Linux. Playback or recording may freeze, recording dropouts or fast playback may occur when using PulseAudio.
  * Freezes may be caused by repeatedly starting and stopping playback or recording in quick succession (or by holding down the Play or Record button).
  * Workarounds: Try launching Audacity from the terminal with the pulse latency set to 30 ms in an environment variable:

env PULSE\_LATENCY\_MSEC=30 audacity

* If you get underruns noted in the terminal, try a higher number in the PULSE\_LATENCY\_MSEC command. If the problem is unchanged, try a lower number.
* Alternatively, bypass pulseaudio by setting the playback and recording device to an ALSA (hw) choice in Device Toolbar. More help with this can be found here.

### (Linux) MIDI

* The timing of notes during MIDI playback may sound erratic on some machines. Optimizing the system for low latency MIDI playback can help to reduce the inaccuracies.

### (Mac) Launch from Finder or AUP file

* With Sierra 10.12 and High Sierra 10.13 opening a second project from Mac's Finder produces a second inaccessible instance of Audacity. If you already have an Audacity project open, and attempt to open a second .AUP from within the Finder window (whether by double clicking, right-clicking for Open on the pop-up menu, or typing Cmd-O) or by right-clicking on the .AUP file and using **Open With**, the second project attempts to open in a new instance of Audacity, visible in Apple’s Dock bar at the bottom of the screen. This second instance of Audacity will not be accessible and you will need to Force Quit it.
  * Workaround: Use Audacity's **File > Open** command to open the second and successive projects.

### Accessibility

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library. A lot more detail about accessibility limitations can be found [here](broken-reference)

## Bugzilla

We track these and many other bugs in our 'bugzilla' database.

{% hint style="info" %}
Click on the bug numbers to see work done on these bugs.
{% endhint %}

<table data-header-hidden><thead><tr><th width="110.33333333333331"></th><th width="480"></th><th></th></tr></thead><tbody><tr><td><strong>ID</strong></td><td><strong>Summary (5 tasks)</strong> <a href="http://bugzilla.audacityteam.org/buglist.cgi?&#x26;field0-0-0=bug_id&#x26;type0-0-0=equals&#x26;value0-0-0=1765&#x26;field0-0-1=bug_id&#x26;type0-0-1=equals&#x26;value0-0-1=33&#x26;field0-0-2=bug_id&#x26;type0-0-2=equals&#x26;value0-0-2=42&#x26;field0-0-3=bug_id&#x26;type0-0-3=equals&#x26;value0-0-3=276&#x26;field0-0-4=bug_id&#x26;type0-0-4=equals&#x26;value0-0-4=1726&#x26;field0-0-5=bug_id&#x26;type0-0-5=equals&#x26;value0-0-5=1767&#x26;field0-1-0=bug_status&#x26;type0-1-0=notequals&#x26;value0-1-0=CLOSED"><strong>⇒</strong></a></td><td><strong>ID</strong></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=42">42</a></td><td>Timer Record occasionally carries on recording past the scheduled end, requiring force quit</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=42">42</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1726">1726</a></td><td>Linux: MIDI playback timing / synchronisation problems</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1726">1726</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1767">1767</a></td><td>Opening a second project from Mac's Finder produces a second inaccessible instance of Audacity</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1767">1767</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=276">276</a></td><td>Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=276">276</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1765">1765</a></td><td>Using File > Open to import audio gives wrong zoom level and no scroll bar slider</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1765">1765</a></td></tr></tbody></table>
