# New features in Audacity 2.3.1

**This page is an overview of the key new functionality that has been introduced in Audacity 2.3.1**

* Details of all the major changes since 2.3.0 can be found in [.](./ "mention").

### 64-bit Mac build

The 2.3.1 release of Audacity for macOS is now a 64-bit build and will only run on modern 64-bit Macs, running OSX 10.7 or later.

### Scrub Ruler

The **Scrub Ruler** is now turned **"off"** by default and is not displayed. The reason we did this was because we found too many users were accidentally clicking in the Scrub Ruler and then finding themselves stuck in Scrubbing mode.

This will only affect you if you opt to reset your preferences settings as part of the 2.3.1 installation, manually reset your preferences or install Audacity for the first time.

If you want/need to turn it back on again use either the and check the Scrub Ruler to be "on". Or right click in the **Timeline** and select **Enable Scrub Ruler**.

{% hint style="info" %}
The **Scrub** and **Seek** commands are still readily available from the **Transport** menu.
{% endhint %}

### Advanced Vertical Zooming

We have added a new command to the menu **View > Zoom** menu for turning **Advanced Vertical Zooming** "on" or "off".

Advanced Vertical Zooming enables you to use left-click gestures in the **Vertical Scale** to control zooming _(this is in addition to the Simple mode vertical zooming commands available from the right-click context menu in the Vertical Scale)_.

{% hint style="info" %}
In version 2.2.2 we changed the way [vertical zooming](https://wiki.audacityteam.org/wiki/Release\_Notes\_2.2.2#Vertical\_Zooming\_changes) works, splitting it into Simple and Advanced forms with the Advanced form turned off by default. Advanced mode could be turned on in **Tracks Behaviors** preferences but many users failed to find it there. Accordingly we introduced this new command to make this more discoverable.
{% endhint %}

### Micro Fades

Micro fades (introduced in 2.3.0) can reduce the click when playback starts and stops. We've now made this an opt-in feature rather than provide it all the time, this can be set in Playback Preferences.

### Regular Interval Labels improvements

We have made some improvements to Regular Interval Labels, accessed by **Tools > Regular Interval Labels**.

In particular we have made it possible to create **range labels** and not just point labels with this Tool. You can do this by specifying the label length in the new input field **Length of label region (seconds)**

### Bug Fixes

* Linux: Audacity 2.3.0 was available only for Mac and Windows, and Linux used 2.2.1. Audacity 2.3.1 is available for Linux.
* Windows and Linux: Intermittent truncation of the end of a recording - see [Bug #2009](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2009)
* Can't adjust Time Track envelope when Logarithmic scale selected - see [Bug #1832](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1832)
* Mixer Board does not automatically update when tracks added or removed - see [Bug #2022](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2022)
* Regular Interval Labels fails - see [Bug #2014](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2014)
* Windows: Regular Interval Labels on multiple tracks produces multiple labels - see [Bug #1298](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1298)
* Multiple problems with Change Pitch - see [Bug #2016](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2016)
* Mac: Audacity crashes when right clicking in label after copying label text to ano app - see [Bug #2028](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2028)
* Linux: Assert on recording or generating when main Window minimized - see [Bug #2040](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2040)
* Windows: Macros - "ExportMP3 before" and "ExportMP3 after" overwrite causing non-critical data loss - see [Bug #2054](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2054)
* Macros: Change Pitch in a Macro does not remember speed parameter setting - see [Bug #2069](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2069)

### Links

[.](./ "mention") _- detailed release notes for this release of Audacity_
