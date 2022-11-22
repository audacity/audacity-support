# New features in Audacity 2.4.2

This page is an overview of prominent new functionality that has been introduced in Audacity 2.4.2

Version 2.4.2 is primarily a maintenance release for bug-fixing, so there are not many new features.

* Details of all the major changes since 2.4.1 can be found in [Audacity Release Notes 2.4.2](./).

### Reset Configuration|Easy configuration reset

A new command has been added to the **Help** menu: **Help > Reset Configuration**.

This resets your Audacity configuration, preferences _(except Extended Import)_, export settings and toolbars, to default settings.

{% hint style="danger" %}
Be aware that this command acts _**immediately**_ with no dialog and no choice of actions or chance to abort.

**Undo** is not available for this command.
{% endhint %}

User presets in Effects, Generators and Analyzers are left untouched, as are any Macros you may have created and plug-ins.

### MP3 exports and imports without padding

Audacity now supports LAME's gapless playback info, allowing MP3s to be exported and imported without additional padding.

Other applications that support the LAME tag, for example audio player applications, will be able to read MP3 files exported by Audacity without the padding.

### Bug Fixes

In less than a month we have foxed a further 29 bugs in this maintenance release.

Here is a small selection of some of the most important.

#### Key P1 bugs fixed

* P1 [2442](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2442) - Windows: Crash when importing (or editing) to a disk with insufficient disk space available
* P1 [2449](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2449) - Mac: Attempting to export as M4A(AAC) yields an FFmpeg error message
* P1 [2457](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2457) - Windows: WAV Export runs 6 to 7 times slower than on 2.3.3
* P1 [2459](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2459) - Macros with Nyquist effects don't apply saved parameters
* P1 [2471](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2471) - Mix Stereo down to Mono fails if space at start of track.
* P1 [2478](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2478) - Windows: with an empty rules list in "Extended Import" prefs - Tab or Home crashes Audacity
* P1 [2479](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2479) - Mac: AudioUnit effects are not applied if you initially use the preview
* P1 [2484](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2484) - Win/Linux: OPUS import fails

#### Key P2 bugs fixed

* P2 [2403](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2403) - Undocking meter toolbars while playing/recording results in a frozen meter
* P2 [2408](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2408) - A region label gets split on inserting audio when Sync-lock is turned on
* P2 [2418](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2418) - Time toolbar displays incorrect time if project rate isn't 44100
* P2 [2419](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2419) - Time toolbar: Opening and closing preferences resets format to hh:mm:ss
* P2 [2428](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2428) - Nyquist Effects do not display a Progress Dialog if run from a Macro.
* P2 [2431](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2431) - Real-time effects - Enable checkbox has no effect
* P2 [2439](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2439) - Mix and Render to New Track selects left channel of new stereo track
* P2 [2443](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2443) - Mac/Linux: Old (PowerPC) projects open flat-lined or with corrupted display on Intel machines
* P2 [2456](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2456) - audacity 2.3.3 config with Spectral Selection toolbar corrupts lower dock in 2.4.x and can crash
* P2 [2458](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2458) - Possible crash when clearing text field in Gain dialog

### Links

[.](./ "mention") _- detailed release notes for this release of Audacity_
