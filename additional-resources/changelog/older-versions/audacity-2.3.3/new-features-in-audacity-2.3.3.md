# New features in Audacity 2.3.3

This page is an overview of the key new functionality that has been introduced in Audacity 2.3.3

* Details of all the major changes since 2.3.2 can be found in [.](./ "mention").

### Maintenance release

2.3.3 is a maintenance release to reorganize the structure of the underlying code. This is so that we can make better changes for the user experience in the future.

There are no new and almost no changed features in this release. However, we have fixed many long standing bugs, at the same time as making the restructuring. We are also taking the opportunity to retire some features which are better done by other approaches.

\
Earlier we had set ourselves a target of 20% live bugs out of total bugs by August 2019. Two years ago 35% of bugs were live bugs, and the live bugs total was just over 600. We actually met our target early, by 1st June 2019. As at 1st September we were at 16% live bugs with just 356 live bugs. See [**this table**](https://wiki.audacityteam.org/wiki/Bug\_Counts) in the Audacity Wiki.

Two bugs we fixed which noticeably change behavior are:

#### Quality slider now works for AAC/M4A Export

An important bug-fix for this release is that we have finally made the Quality slider work when exporting AAC/M4A files. Formerly, although you could move the slider, the setting of slider was ignored by Audacity and it used always a constant bit rate (CBR) 196 kbps (stereo) file or 98 kbps (mono) file.

This was [P2 Bug 344](https://bugzilla.audacityteam.org/show\_bug.cgi?id=344) - M4A Quality slider has no control of bitrate setting or AAC quality

#### Leading blank space treated as silence on Export

For this release we have added a feature where by default when exporting audio any leading blank space in the tracks or project to be exported is treated as silence and appropriate leading silence will pad the exported audio.

Previously many users were confused when they had carefully positioned their audio with an initial offset (white/gray space) that when they Exported the track this offset was ignored and the exported file started immediately with the audio with no offset.

This particularly confused multi-track users who export and subsequently re-import tracks and are surprised/puzzled when their tracks no longer line up properly.

This makes for greater consistency in Audacity with regard to pre-existing behaviors:

* leading blank space has always been treated as silence when playing such an offset audio track
* if a track has embedded blank white/gray space between audio clips, upon export those embedded chunks are rendered as silence to preserve the relative positioning of the clips.
* Mix\&Render has always preserved leading blank white/gray offsets

There is a new option in **Import/Export Preferences** where you can turn this off and revert to Audacity's previous behavior with leading blank space ignored on Export.

{% hint style="info" %}
A use case for turning this "on" is track-based multiple export where you have "songs" lined up one after the other on different tracks - and in this case you probably do not want the offsets exported as long silences at the start of "songs".
{% endhint %}

This was [P3 Bug 1904](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1904) - Audio offset not honored in Export/Export Multiple/Export Selection

#### Exports are now based on "What you hear is what you get"

From this version onwards when making multi-track exports the export will be based entirely upon the track hear when preview playing the audio in the project prior to Export.

I also means than any grayed-out tracks will not be exported.

Formerly with the **Solo Button** behavior set to the expert mode "Multi-Track" in **Tracks Behaviors" preferences the exports were instead based on the state of the** Mute **buttons, using the** Solo **buttons could leave some tracks grayed out and not playable on preview, but still exported on Export.**

Users who leave the **Solo Button** set to its default **Simple** mode will notice no difference as a result of this change.

This was [P2 Bug 2213](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2213) - When Solo button is "Multi-track" Export is not accurate - can lead to data loss

### Equalization effect split

The former Equalization effect has now been split into two separate effects. We did this as part of fixing some bugs with the effect:

#### **Filter Curve** - equalization using drawn curves

<figure><img src="../../../../.gitbook/assets/image (46).png" alt=""><figcaption><p><strong>Filter Curve</strong> equalization effect</p></figcaption></figure>

#### **Graphic EQ** - equalization using sliders

<figure><img src="../../../../.gitbook/assets/image (55).png" alt=""><figcaption><p><strong>Graphic EQ</strong> effect</p></figcaption></figure>

### End-of-life retired functionality

For this maintenance release we have decided to withdraw some pieces of functionality which are considered to be no longer useful or relevant.

#### Nyquist Workbench End of Life

The optional module Nyquist Workbench has been declared obsolete for version 2.3.3 onwards.

We plan to replace it later with a modern alternative [**Nyquist IDE**](https://wiki.audacityteam.org/wiki/Proposal\_Nyquist\_IDE). A lot of the important functionality is already built into the Nyquist prompt in Audacity.

#### Vocal Remover End of Life

We have finally decided to no longer ship the legacy effect **Vocal Remover** with Audacity. It has been superseded for a while now by the newer and more powerful **Vocal Reduction and Isolation** effect. We upgraded the effect slightly with this release, so that it now can also do exactly what the old effect did.

New users who install 2.3.3 as their first Audacity will not see Vocal Remover in the effect menu. Upgraders from earlier versions of Audacity will still find this legacy effect in their effects list _(because it was supplied as a Nyquist plug-in)_. If you no longer wish to see it in the Effect menu simply mark it as **Disabled** in the **Plug-in Manager**.

#### On-Demand loading of aliased files End of Life

Audacity previously had a feature where Audacity projects could depend on uncompressed audio files (for example WAV and AIFF) that were stored outside the Audacity project and folder. This saved space but was rather dangerous, as the project could become unusable if the files were moved or renamed.

The space saving made some sense back in 1999 when disk storage was more expensive. Nowadays it does not make sense. It causes far more problems than the space saving is worth. Previously we had defaults set to always copy audio into projects, and not try and save space. Now we have removed the option of this ill advised space saving. Audacity will still work with old projects that do this, but for new projects audio will always be copied in.

#### Normalize on Load feature

Audacity previously had a 'mis-feature' called 'Normalize on Load' which gave the option of always normalizing newly imported audio _(an option that was settable in preferences)_. Normalizing or alternatively compression should usually only be done as one of the last steps in producing audio, for example if one knows the audio is destined to go into an MP3 file or CD.

### Bug Fixes

We have fixed many bugs in the course of this maintenance release:

Click on the bug number for full details in the bug thread.

* P1 [2077](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2077) - Mac - FFmpeg Custom options dialog opens behind Export Audio dialog
* P1 [2112](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2112) - Crash when opening Equalization settings in a Macro
* P1 [2119](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2119) - Linux: Incorrect behaviors in "Manage Macro"
* P1 [2127](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2127) - Track deletion while in Record/Pause state crashes Audacity
* P1 [2133](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2133) - Silence Audio deletes MIDI notes
* P1 [2141](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2141) - Tabbing between labels now only works if the label track is selected
* P1 [2176](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2176) - Crash when attempting to time shift multiple tracks
* P1 [2191](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2191) - Linux: Many effects (Repair, Paulstretch, Reverb) much slower
* P1 [2192](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2192) - Audacity throws warning dialog on opening project if it contains silent blockfile(s)
* P1 [2200](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2200) - Uncompressed exports in formats that have no (realistic) size restriction fail the 4GB trap for WAV & AIFF - regression on 2.3.1
* P1 [2216](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2216) - Mac: Cannot use Enter to effect an Effect after entering numeric data in a field - regression on 2.1.3
* P1 [2226](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2226) - Punch\&Roll record inserts a squelch/screech noise at start of re-recording
* P2 [344](https://bugzilla.audacityteam.org/show\_bug.cgi?id=344) - FFmpeg: M4A Quality slider has no control of bitrate setting or AAC quality
* P2 [1329](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1329) - Mac: ENTER does not close/apply effects unless user has turned on Full Keyboard Access
* P2 [1335](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1335) - Moving tracks or swapping stereo channels during playback does not work correctly.
* P2 [1503](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1503) - Mac: Modal dialogs cause 100% Audacity CPU when open with any AU or graphical VST/LV2 effect
* P2 [1843](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1843) - Tracks menu error messages do not have "?" help buttons to link to the Manual
* P2 [2199](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2199) - crash after attempting to export as OGG at very high sample rate
* P2 [2213](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2213) - When Solo button is "Multi-track" Export is not accurate - can lead to data loss
* P3 [46](https://bugzilla.audacityteam.org/show\_bug.cgi?id=46) - GSM 6.10 files cannot be exported - failure messages are unhelpful un-illuminating
* P3 [59](https://bugzilla.audacityteam.org/show\_bug.cgi?id=59) - No error reported to user and crash when FFmpeg attempts invalid custom export of WAV with mp2 codec
* P3 [387](https://bugzilla.audacityteam.org/show\_bug.cgi?id=387) - Mac/Linux: Text export for Contrast and Plot Spectrum does not supply extension if omitted
* P3 [461](https://bugzilla.audacityteam.org/show\_bug.cgi?id=461) - MIDI or Allegro export filter does not enforce output format cross-platform
* P3 [1180](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1180) - Custom FFmpeg Export: an empty presets list can be Exported
* P3 [1281](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1281) - Windows: Plug-in manager does not properly disable SC4
* P3 [1477](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1477) - Mac: Sticky Tooltips
* P3 [1567](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1567) - Windows: DirectSound Sound Activated Recording does not record correctly or pauses permanently after 12 seconds
* P3 [1578](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1578) - TXT and XML exports are not to Documents and may require elevation to save
* P3 [1622](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1622) - Cryptic error message when existing project cannot be saved
* P3 [1723](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1723) - Keyboard Preferences: Closing subtrees can leave highlight on wrong item.
* P3 [1824](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1824) - Preview fails (with Error Opening Sound Device) for built-in Generate effects when no selection
* P3 [1904](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1904) - Audio offset not honored in Export/Export Multiple/Export Selection
* P3 [2099](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2099) - 24-bit WAV (and AIFF) export is wrongly limited to 3GB
* P3 [2113](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2113) - Label editor: After it closes, no control is the focus
* P3 [2118](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2118) - "Q" shortcut for "Toggle Spectral Selection is not in the Standard set
* P3 [2122](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2122) - Screenshot tool: no way to exit using the keyboard
* P3 [2120](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2120) - Spectral Selection Toolbar can be truncated when undocked
* P3 [2169](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2169) - Windows: Modules page of preferences is not read by NVDA screen reader
* P3 [2182](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2182) - Updating Audacity can cause messed up toolbar layout
* P3 [2185](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2185)- Import2: Incorrect error message if file not found
* P3 [2189](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2189)- Bugs that won't be fixed relating to on-demand loading of aliased external audio files
* P3 [2225](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2225) - No error message when trying to delete with no selection
* P4 [169](https://bugzilla.audacityteam.org/show\_bug.cgi?id=169) - Welcome Message: Local links to "Quick Help" and "Manual" do nothing if help is not installed.
* P4 [240](https://bugzilla.audacityteam.org/show\_bug.cgi?id=240) - Time track selected by itself cannot be removed with Tracks>Remove Tracks
* P4 [440](https://bugzilla.audacityteam.org/show\_bug.cgi?id=440) - Metadata Editor: Tags without values can't be added
* P4 [496](https://bugzilla.audacityteam.org/show\_bug.cgi?id=496) - Modifier keys ignored when focus is on time box in the Selection Toolbar
* P4 [590](https://bugzilla.audacityteam.org/show\_bug.cgi?id=590) - Win/Linux: Audacity crashes with LADSPA blop plug-ins
* P4 [826](https://bugzilla.audacityteam.org/show\_bug.cgi?id=826) - Mis-handling of envelopes when split-deleting, or when cutting with cut lines enabled
* P4 [1058](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1058) - Windows: Strange cursor changes _**Works for me on 2.3.2**_
* P4 [1235](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1235) - Linux: Mixer Board meters do not update when Meter Preferences are updated
* P4 [1269](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1269) - "backslash percent" not saved in effect presets
* P4 [1411](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1411) - Multiple non-modal "Help from the Internet" windows
* P4 [1582](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1582) - Incorrect level shown in Mixer Board meter when track has positive gain
* P4 [1738](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1738) - Numeric control units are not translated
* P4 [1742](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1742) - Built-in Macro name "MP3 Conversion" does not translate
* P4 [2043](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2043) - Access keys not shown (Japanese)
* P4 [2049](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2049) - ENH: Noise Reduction error message for no selection is unhelpful
* P4 [2107](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2107) - Mac Accessibility: if a text box is the focus, pressing enter does not press the default button
* P4 [2136](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2136) - GetInfo: localization creates invalid JSON
* P4 [2137](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2137) - Nyquist: Assert when receiving multibyte characters
* P4 [2138](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2138) - Crossfade Tracks effect may desynchronize tracks
* P4 [2148](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2148) - AUD-GET-INFO command fails if data contains backslash
* P4 [2154](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2154) - selected audio: timeline and track show different selected time range
* P4 [2160](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2160) - Shipped macros are not protected against edits. Edits can be made, but there is a Restore button
* P4 [1780](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1780) - Sample Rate dialog does not appear when track has custom sample rate
* P5 [680](https://bugzilla.audacityteam.org/show\_bug.cgi?id=680) - "Undo Recover" does not undo.
* P5 [803](https://bugzilla.audacityteam.org/show\_bug.cgi?id=803) - Incorrect pointer (cursor) when rearranging tracks
* P5 [1200](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1200) - Unwanted duplicate .mo files on Mac.
* P5 [2100](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2100) - AIFF exports GT 4GB are trapped but error message is only "WAV" - _**German translation also OK now - was not so before**_

#### Equalization bugs

* P1 [1750](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1750) - Equalization: EQ control points can disappear if the points are at the same frequency
* P1 [2031](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2031) - Equalization: presets under the Manage button do not save custom EQ curves
* P1 [2088](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2088) - Graphic EQ ( and Filter Curve): Manage button does not work
* P2 [1722](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1722) - Equalization effect: possible crash when using Manage > User Presets
* P2 [2206](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2206) - Filter Curve (and Graphic EQ) corrupt saved curves (on the right)
* P2 [2207](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2207) - Filter Curve and Graphic EQ have no factory presets (available in 2.3.2 and earlier)

### Links

[.](./ "mention") _- detailed release notes for this release of Audacity_
