# Audacity 2.2.2

**Audacity 2.2.2 was released on 20 February 2018.**

## Changes and improvements since previous version

See the [new-features-in-audacity-2.2.2.md](new-features-in-audacity-2.2.2.md "mention") page in the Manual for more information about improvements and other changes.

### Dropout detection

New feature **Dropout detection** is controlled from a setting in **Recording Preferences** called "**Detect dropouts**".

* When this setting is "**on**" _(default setting)_ Audacity will detect dropouts (brief gaps in the recording) and will insert zeroes into the recording to keep the other good parts synchronized. These silent spans will make the dropouts more obvious, but keep the duration of the recording correct.
  * Dropouts may be caused by a disk drive that cannot keep up with the recording. This can happen, for example, with a slow USB or network drive, or if antivirus software is slowing writing to disk, or if other activity on the computer is slowing the computer down.
* When recording stops, a Warning message is shown and a label track, called "Dropouts", is added showing the lost parts, labeled with consecutive numbers.

### Improved zooming

**Zooming with the mouse wheel**

* Mouse wheel zooming has been changed so that the focus for the zoom is:
  * With the mouse pointer outside the selection, the leftmost or rightmost edge of the current selection, _(if a selection exists)_.
  * Mouse pointer position will be used as the zoom focus if the mouse position is inside the current selection, _(if a selection exists)_.
  * If no selection is present, zoom focus is as it was before and is taken as the mouse pointer position.

**Zoom Toggle**

* A new command has been introduced, **Zoom Toggle**, accessed by a new button or by **View > Zoom > Zoom Toggle** (shortcut Shift + Z).
  * Zoom Toggle toggles between two pre-defined zoom levels. These presets are user selectable in **Tracks Preferences**.
  * Defaults are normal **Default Zoom** level and **4 Pixels per Sample** _(which shows a fraction of a second of audio as samples)_
  * Either of the two presets can be changed in **Tracks Preferences** using the dropdown menus.

### Vertical Zooming changes

* **Simple Vertical Scrolling**
  * A context menu has been introduced for the **Vertical Scale**. This is activated by right-clicking in the Vertical Scale.
* **Advanced Vertical Zooming**
  * Left-click, and click\&drag, in the **Vertical Scale** remain available as a user-selectable option. The default setting is "off",
  * You can turn on advanced mode for vertical zooming from **Edit > Preferences > Tracks Behaviors** and selecting **Advanced Vertical Zooming**.

### Extra menu

A new **Extra** menu has been created from consolidating the **Ext-Bar** and **Ext-Command** menus that were introduced in the previous 2.2.1 release.

### Theme tweaks

* **Hover Appearance**
  * In dark theme, the change in appearance of sliders when you hover over them is greater than before.
  * In light and dark themes, buttons such as 'pause' and 'pin' now highlight when you hover over them and they are down. Previously there was no visible change.
  * The hover effect for buttons when they are up has been changed to work better in conjunction with this change.
* **Icon Appearance**
  * In dark theme the microphone and speaker icons are now brighter and not dulled as they were before.

### Other Changes

* For menu commands that are enabled _(not grayed-out)_ if you hold the Shift key and click on the sub-menu item, instead of executing the command the **Keyboard Preferences** pop open at the chosen command. You can then change that _(or any other)_ shortcut binding.
* **Interface Preferences** has been upgraded so when selecting languages the proper spelling of these languages is shown with accented and special characters.
* The **Index** page in the Manual has been upgraded - so that now any item that can be clicked on/through in the front page imagemap now has a corresponding text entry in the index _(this is primarily as an aid to VI (Visually Impaired) users)_ Additionally the Index has been divided into alphabetic sections to aid readability.

## Bug Fixes

For those who **really have to know**, the list of bugs fixed in 2.2.2 is [here](broken-reference).

* Multiple use of "Save As" to the existing open project can result in data corruption/loss
* Crash undoing during record, using Discard button of History window
* Exporting audio in compressed formats to device with insufficient space produces inconsistent/truncated results
* In Export Multiple, Cancel does not remove the file that is in progress when Cancel is chosen
* Crash using SBSMS pitch change at low sample rate
* Installer has old logo for 2.2.1 and 2.2.0
* (Mac) Equalization: "Telephone" curve displays a flat line, no sound on Preview
* Toolbars: open undocked if previously not shown, unless Reset Toolbars first
* Analysis effects that create labels should give focus to label track
* Control value may be out of range when using FloatingPointValidator
* Analysis effects produce false indication that a label is open for editing
* Import Uncompressed File Dialog Incorrect Reference to Menu Item
* Wave Color not grayed out in TCP dropdown menu when in Spectrogram view
* Hover indication on note track channel toggle appears on all tracks (when they rerender)
* Unicode page encodings fixed ( ͡° ͜ʖ ͡°)
* Un-muting with a single track unnecessarily activates the Solo button
* Applying chain to file should zoom-to-fit

## Supported Platforms

### Windows

* Audacity 2.2.2 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003. To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html). If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 2.2.2 does not officially support Windows XP.

### macOS / Mac OS X

* Audacity 2.2.2 is for Intel Macs running OS X 10.6 and later and macOS. There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

### Linux

* Linux support is tested on Ubuntu Linux.
  * Audacity may compile on Gentoo, Debian, Mint.
  * Audacity does not currently compile on SuSE Linux.

## Issues

See our [list of issues](broken-reference) for much more detail of issues with Audacity 2.2.2.

* Below are listed what we believe are the most common and important issues with 2.2.2 for most users.

### Accessibility

* Far less of Audacity is properly accessible to visually impaired users than we would like. Currently the best supported platform for accessibility is Windows. We lost a lot of custom accessibility programming when we had to move to a more recent version of the wxWidgets library. A lot more detail about accessibility limitations can be found [here](broken-reference)

## Bugzilla

We track these and many other bugs in our 'bugzilla' database.

{% hint style="info" %}
Click on the bug numbers to see work done on these bugs.
{% endhint %}

<table data-header-hidden><thead><tr><th width="113.33333333333331"></th><th width="510"></th><th></th></tr></thead><tbody><tr><td><strong>ID</strong></td><td><strong>Summary (3 tasks)</strong> <a href="http://bugzilla.audacityteam.org/buglist.cgi?&#x26;field0-0-0=bug_id&#x26;type0-0-0=equals&#x26;value0-0-0=1765&#x26;field0-0-1=bug_id&#x26;type0-0-1=equals&#x26;value0-0-1=33&#x26;field0-0-2=bug_id&#x26;type0-0-2=equals&#x26;value0-0-2=42&#x26;field0-0-3=bug_id&#x26;type0-0-3=equals&#x26;value0-0-3=276&#x26;field0-1-0=bug_status&#x26;type0-1-0=notequals&#x26;value0-1-0=CLOSED"><strong>⇒</strong></a></td><td><strong>ID</strong></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=42">42</a></td><td>Timer Record occasionally carries on recording past the scheduled end, requiring force quit</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=42">42</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=276">276</a></td><td>Linux: PULSE-AUDIO issues. Freeze repeatedly starting/stopping streams</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=276">276</a></td></tr><tr><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1765">1765</a></td><td>Using File > Open to import audio gives wrong zoom level and no scroll bar slider</td><td><a href="http://bugzilla.audacityteam.org/show_bug.cgi?id=1765">1765</a></td></tr></tbody></table>
