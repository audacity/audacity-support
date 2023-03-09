# New features in Audacity 3.0.0

**This page is an overview of prominent new functionality that has been introduced in Audacity 3.0.0**

**Version 3.0.0 is primarily a release for a unitary, single self-contained, project file.**

* Details of all the major changes since 2.4.2 can be found in [.](./ "mention").

### Unitary Project

Audacity 3.0.0 introduces the new AUP3 project format. Project files saved with this version will have an **aup3** extension, for example **My-Project.aup3**. We believe that this new project format will make life easier for Audacity users, as it replaces the previous project storage format - which used an AUP file and its associated \_data folder full of little audio clips - with a single project file that integrates those two parts.

The old structure caused too many users to lose or damage their projects by moving or deleting the project components. The new single project file structure precludes that happening.

{% hint style="info" %}
AUP projects from previous versions of Audacity can be opened or imported in Audacity 3.0.0 _(Audacity converts them to the new unified file format)_.

* Note that saving as AUP3 will leave behind the old **AUP** file and its associated **\_data** folder which you will probably want to delete to recover disk space.
{% endhint %}

{% hint style="danger" %}
Once you have saved the project in the new AUP3 format they can then **no longer be opened in previous versions of Audacity**.

* The workaround is to Export as WAV files, exporting individual tracks using and then Importing those into older Audacity versions.
{% endhint %}

{% hint style="danger" %}
Active projects _**cannot**_ be saved to a FAT/FAT32 formatted drive as FAT is subject to a maximum file size of 4GB which can easily be temporarily exceeded when editing.
{% endhint %}

#### Project size

Saved Projects with the new unified file structure should not be larger than similar projects with the old multiple files structure.

As you work on a project, Audacity will consume additional temporary disk space. This is normally released on closing the project. _This is not new with Unitary Project File, previous versions of Audacity also used to do this._

{% hint style="info" %}
You can, if you wish, compress your project removing the temporary storage with:

1. **File > Save Project**
2. **File > Exit**
3. Relaunch Audacity
4. **File > Open...**

But note carefully that this will remove your **Undo History** and the contents of your Audacity clipboard.
{% endhint %}

#### Performance

Extensive speed testing has shown that for most work in Audacity the new project file can be a little faster than the old project structure.

This is especially true of using the Effects and Generators which run faster with the new project file.

{% hint style="info" %}
Closing a project can now take a little longer as Audacity clears up the unused temporary disk space in the file.

You will get a progress dialog informing you about the Compaction progress.                &#x20;
{% endhint %}

#### Automatic Recovery

Automatic Recovery (following a crash) is different in Audacity 3.0.0. _It is simpler with no orphan block-files or missing block-files to worry about_

* When Audacity is launched following a crash it will offer to recover the crashed projects.
* You can choose to either accept the recovery or to discard the projects.
* You can select projects for either action by clicking on their checkbox, or you can select all by clicking on **Select**.
* You can discard just some and then the recovery dialog will remain open enabling you to select others for recovery.

#### Temporary work files

In addition to the single database project file the database also creates two temporary work files **WAL** & **SHM** files. For example **My-Project.aup3-wal** and **My-Project.aup3-shm**. On Mac there is only the **WAL** file.

These are deleted on closure of the project or on exit from Audacity.

{% hint style="danger" %}
Do _**not**_ delete them or move these temporary files while the project is open as this will destroy the project.

Windows blocks you from doing this but macOS and Linux do not.
{% endhint %}

### Backing up your project

There is a new backup command for projects: **File > Save Project > Backup Project**.

This saves a copy of the current project as an AUP3 file, but with a new name. It is the safe and recommended way to make a safety backup copy of a project as you work on it.

* This could serve either as a single backup copy of the project, or as one of several incremental copies of the project in the state it had at a particular date and time.
* Unlike "Save Project As..." using this command will leave your current project open enabling you to continue working on it.

{% hint style="warning" %}
You are **strongly** advised to make backup versions of your project at key stages in your project so you can return to that stage if you mess up.
{% endhint %}

{% hint style="info" %}
This new command replaces the two previous commands:

* File > Save Project > Save Lossless Copy of Project
* File > Save Project > Save Compressed Copy of Project

You can losslessly compress an AUP3 project with standard utilities such as ZIP, WinZip or 7-Zip.
{% endhint %}

### Two new Languages added

* Corsican language has been added for 3.0.0, _thanks to Patriccollu._
* Marathi language has been added for 3.0.0, _thanks to Mukul Kulkarni._

Thanks also to all our regular translators who brought translations up to date for 3.0.0.

### **Label Sounds** replaces **Sound Finder** and **Silence Finder**

A new analyzer has been introduced called **Label Sounds**. It supersedes and replaces the old **Sound Finder** and **Silence Finder** analyzers.

Label Sounds is a tool which can useful to label the different songs or sections (or silences) in a long recording, such as the tracks from an LP or cassette.

This analyzer is an upgrade of the old **Sound Finder** from previous versions of Audacity. It is more accurate, and more versatile than previous versions, supporting both region labels and point labels.

Accessed by: **Analyze > Label Sounds...**

<figure><img src="../../../../.gitbook/assets/image (39).png" alt=""><figcaption><p><strong>Label Sounds</strong> settings</p></figcaption></figure>

It detects the audio level in the selected track(s). When the track level exceeds a specified threshold level, the audio is considered to be "sound", and when below the level it is considered to be "silence".

There are options to add point labels before or after each detected sound, region labels around each sound, or region labels between each sound (effectively labeling the silences).

You can still continue to use this Sound Finder if it is present in your Audacity app as a result of an earlier Audacity version download.

### Enhanced Directories preferences

Default folder locations have been added enabling you to specify the folders to be used for each of the Audacity actions: Open, Save, Import and Export.

<figure><img src="../../../../.gitbook/assets/image (67).png" alt=""><figcaption><p>Enhanced <strong>Directories</strong> preferences</p></figcaption></figure>

If you set a default folder for any of those actions Audacity will _**always**_ offer that folder location when you invoke that action.

If a particular action's default folder is left blank _(default setting)_ then Audacity will offer the last-used location for that action.

The default setting is for all to be blank.

See Directories Preferences for more details.

### Improvements to Macros

#### Import and Export of Macros

Import and Export of Macros has been added to the **Manage Macros** dialog.

<figure><img src="../../../../.gitbook/assets/image (4) (2).png" alt=""><figcaption><p><strong>Import...</strong> and <strong>Export...</strong> options added to <strong>Manage Macros</strong></p></figcaption></figure>

Only one Macro can be imported or exported at a time.

#### Comments in Macros

Comments can now be added to Macros to enable you to document what is happening in the Macro.

There is a new command "**Comment**" in the Macro command set. Editing its parameters enables you to type the text of your comment.

<figure><img src="../../../../.gitbook/assets/image (32).png" alt=""><figcaption><p>Adding comments in Macros</p></figcaption></figure>

### Noise Gate improved

The **Noise Gate** effect has been improved for version 3.0.0 of Audacity. It now supports faster Attack times (down to 1ms), and provides separate controls for Attack, Hold and Decay. The effect can also process much longer selections in one pass (up to 13.5 hours at a sample rate of 44,100 Hz.)

<figure><img src="../../../../.gitbook/assets/image (10).png" alt=""><figcaption><p><strong>Noise Gate</strong> effect settings</p></figcaption></figure>

### Multi-view can be set as user-default view

In **Tracks preferences** you can now set Multi-view as your preferred user-default view for tracks.

<figure><img src="../../../../.gitbook/assets/image (11).png" alt=""><figcaption><p><strong>Multi-view</strong> option for <strong>Default view mode</strong></p></figcaption></figure>

### Preferences settings that affect Edit behavior

We realized that we had a couple of settings in **Tracks Behaviors Preferences** that affect the operation of the _Cut, Paste,_ and _Delete_ editing commands in perhaps unexpected ways:

* **Editing a clip can move other clips**
* **Enable Cut lines**

<figure><img src="../../../../.gitbook/assets/image (5) (1).png" alt=""><figcaption><p>Track Behaviors Preferences that affect Cut, Paste and Delete commands</p></figcaption></figure>

So a new page was added to the Manual to explain the subtleties of these behaviors. See [**this page**](https://manual.audacityteam.org/man/preferences\_settings\_that\_affect\_edit\_behavior.html).

### Mixer Board improvement

We have changed **Mixer Board** so that its window always remains on top when it is in use.

Many users have requested this and the original developer always wanted to do this but could not at the time because of issues with the libraries used for this feature.

These libraries have been updated by the provider and we can now make Mixer Board a top window on all three platforms.

### Repeat last Generator, Analyzer or Tool

A **Repeat last used** command has been added for Generators, Analyzers and Tools. These are not in the menus but are "ghost" commands that you can assign custom shortcuts to.

This enables you to simply repeat the last generator, analyzer or tool that you used, with the last settings that you used.

{% hint style="info" %}
By default, **Macro' **_**commands cannot be applied either from a main menu or from a shortcut. They are not "Tool menu" items, and they do not respond to**_** Repeat Last Tool**.

However, if a Macro has a shortcut, then it becomes listed in and it will now respond to "Repeat Last Tool", but only if it has been launched via the shortcut. The macro is still not a "Tool menu item", even though the shortcut effectively is.
{% endhint %}

### Nyquist Upgrade

**Nyquist** has been updated to the latest Nyquist Version 3.16

This has enabled us to clear a lot of long-standing Nyquist-related Audacity bugs.

### Bug Fixes

A large number of bugs were fixed for this release.

Here is a small selection of some of the most important.

#### Key P1 bugs fixed

* P1 [208](https://bugzilla.audacityteam.org/show\_bug.cgi?id=208) - Some effects (including equalization effects) delete Envelope Control Points, or do not move them when timeline changes
* P1 [2367](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2367) - Change Pitch effect may create spurious clip at end
* P1 [2492](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2492) - Linux: Crash when applying or previewing Sliding Stretch effect on stereo track
* P1 [2544](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2544) - "Editing a clip can move other clips" turned off can cause corruption when copying and pasting audio
* P1 [2630](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2630) - A project saved with an imported MP3 with Unicode metadata cannot be opened
* P1 [2656](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2656) - Cannot horizontal scroll when paused in Play-at-Speed
* P1 [2669](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2669) - Win: Save As can be used to overwrite the existing project without warning

#### Key P2 bugs fixed

* P2 [1300](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1300) - Mac: COMMAND + V paste limitations in standard file save dialogs
* P2 [1579](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1579) - Mac: Cut/Copy from file save dialogs using shortcuts does not work
* P2 [2187](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2187) - No error/warning message when using a missing aliased audio file
* P2 [2296](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2296) - There is no Import or Export for Macros
* P2 [2464](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2464) - Cannot drag just the selected audio and label with Time Shift Tool
* P2 [2437](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2437) - Mac: "Open with" fails when Audacity is running
* P2 [2473](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2473) - Linux: Numbers on meters have opaque backgrounds
* P2 [2487](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2487) - Playback meters do not respond during preview of non-real-time effects
* P2 [2491](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2491) - Reset Configuration does not reset Extended Import preferences
* P2 [2509](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2509) - Filter curve and Graphic EQ help links are broken in release version
* P2 [2527](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2527) - Reset Configuration does not reset Project rate or selection timers
* P2 [2573](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2573) - High / Low Pass filters limited to \~94 mins stereo at 44100 Hz
* P2 [2581](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2581) - Inconsistent behavior when pasting and not enough room
* P2 [2593](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2593) - Play-at-Speed does not play unless you have used normal Play first
* P2 [2616](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2616) - Labelled Audio Cut and Delete disabled by Sync-Lock

#### Key P3 bugs fixed

* P3 [852](https://bugzilla.audacityteam.org/show\_bug.cgi?id=852) - Noise Reduction preview failure when track rate is different from project rate
* P3 [1592](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1592) - Sound Activated Recording fails when recording meter disabled
* P3 [1686](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1686) - Equalization effects ignore and remove any amplitude envelope
* P3 [2295](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2295) - ENH: cannot add a comment in a Macro with Audacity
* P3 [2366](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2366) - Macros: Run does "Select All" ignoring setting in Tracks Behaviors Preferences
* P3 [2460](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2460) - Enh: Can't select "Multi-view" as default view mode in Tracks preferences
* P3 [2510](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2510) - Mac: Drag\&Drop of a project file onto Audacity in Apps bar or Finder fails if Audacity is active in the Apps bar
* P3 [2534](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2534) - Change Speed merges selected clip with adjacent clips - _**residual fix to be tested**_
* P3 [2564](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2564) - Metadata: Artist and Year tags missing on M4A(AAC) exports
* P3 [2611](https://bugzilla.audacityteam.org/show\_bug.cgi?id=2611) - Mixer Board does not stay on top of main window

### Links

[.](./ "mention") _- detailed release notes for this release of Audacity_
