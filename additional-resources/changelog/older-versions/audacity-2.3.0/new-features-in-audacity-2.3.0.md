# New features in Audacity 2.3.0

**This page is an overview of the key new functionality that has been introduced in Audacity 2.3.0**

* Details of all the major changes since 2.2.2 can be found in [.](./ "mention").

### Punch and Roll Recording

We have introduced **Punch and Roll Recording** into Audacity as one of our most popular and long-standing feature requests.

It is **Accessed by:** **Transport > Recording > Punch and Roll Record** or more simply using its shortcut **Shift + D**.

This enables you to correct errors easily during the course of a recording session.

* You can stop, back up over a mistake, and continue recording, resulting in one track that eliminates the errors and is properly timed, without the use of cutting, pasting, and clip-moving commands, or mixing of multiple tracks.
* You can do rough editing as you go, with minimal interruption of your performance and less work left until afterwards.

This is likely to be very useful to voiceover artists and audiobook authors enabling them to make rapid corrections of fluffs as they progress.

{% hint style="info" %}
Be aware that this is not punch-in patch repair - the repair recording carries on rolling _(as the command name implies)_ until you specifically stop it.
{% endhint %}

### Movable pinned Playhead/Recordhead

We have made the pinned playhead/recordhead movable on the Timeline, enabling you to choose whereabouts on the Timeline you want it to be pinned for playback and recording

The default pinned position is the center of the Timeline as before, but you can change this by clicking on the pinned head and dragging it along the Timeline while you are playing or recording. A double-click on the head will restore it to its default position in the center of the Timeline.

You may find that a pinned Playhead/Recordhead position right of center will be more useful during recording, including Punch and Roll recording, but a position back in the middle may be more useful if you are playing, especially if you are scrubbing and seeking.

### Scrubbing and Seeking always use un-pinned playhead

By default, scrubbing and seeking will ignore the pinned playhead (if it is turned on) and will play with an unpinned playhead. This will cause the playhead to move with the waveform remaining static.

You can change this by turning "**off**" the option for "**Always scrub unpinned**" in **Playback** preferences. This will cause the playhead to remain static and the waveform will move under it while scrubbing and seeking.

The un-pinned head is probably the easier way to work with scrubbing and seeking.

### Play-at-Speed

The **Play-at-Speed Toolbar** _(formerly called the "Transcription Toolbar")_ now enables you to make dynamic changes to the playback speed as you play audio using the Transcription toolbar to set the required speed. Formerly you had to stop playback and restart it to get the changed speed.

<figure><img src="../../../../.gitbook/assets/image (58).png" alt=""><figcaption><p>The Play-at-Speed toolbar allows dynamic changes to the playback speed</p></figcaption></figure>

The Play-at-Speed toolbar has also been made resizable, so you can stretch it by dragging the right end rightwards, and so get a longer slider with more precision to it. At the same time as we made this change we also made the Mixer toolbar resizable, to give more precision over the main volume and playback settings if you want it.

### Batch Processing

A collection of features added to Audacity for 2.3.0 are related. They come from a project to improve batch processing. Listed here, they are described in more detail in following sections. The project led to improved:

* [Macros](broken-reference) feature _(replaces **Chains**)_, for repetitive tasks that can be done without using a scripting language.
* Scripting using a scripting language such as Python running outside Audacity.
* The project led to the new tools menu, and the new [Scriptables](broken-reference) submenus with many new commands.

### Macros command replaces Chains

The old Chains command (for batch processing and effect automation) has been replaced by an extended command. Macros can do everything that Chains did before, however there are now many more commands it can use - including new commands that have been created specially for batch processing.

We have changed the user interface integrating the functionality so that you now can view, edit and apply your macros from the same single dialog window, simplifying the usage of macros.

<figure><img src="../../../../.gitbook/assets/image (29).png" alt=""><figcaption><p>Macros command user interface</p></figcaption></figure>

* Re-setting the parameters for commands in macros has been simplified. Now double clicking on a command in a displayed chain will pop up the parameter settings dialog for that command.
* The dialog window can be reduced in size and scope by using the Shrink button. This reduced 'Macro Palette' dialog can apply macros to your project, but does not edit them.
* Many more commands are now available to Macros. Previously the commands were mostly effects. Now nearly all menu items are included.

### New Tools menu

A new menu item **Tools** has been created, with customizable tools.

* Chains feature renamed as 'Macros'.
* Extended documentation on using Macros for presets and other tasks.
* Dialogs have help buttons
* Some new prebuilt macros are available in Tools, and you can configure and add your own.
* Macros are bindable to key presses.
* New Nyquist Prompt in Tools with enhanced capabilities.

### New Save Project menu

We have created a new submenu from the **File** Menu called **Save Project**

<figure><img src="../../../../.gitbook/assets/image (49).png" alt=""><figcaption><p><strong>Save Project</strong> menu</p></figcaption></figure>

This replaces the former **Save Project** and **Save Project As** commands and these move into the new submenu. The **Save Compressed Copy of Project...** is also moved to the new submenu (it was in **File > Export** formerly).

Most importantly we have added a new command to that menu **File > Save Project > Save Lossless Copy of Project**. This is the now the safe and recommended way to make a safety backup copy of a project as you work on it. This could serve either as a single backup copy of the project, or as one of several incremental copies of the project in the state it had at a particular date and time. Unlike "Save As..." using this command will leave your current project open enabling you to continue working on it.

### New Scriptables submenus

New **Extra > Scriptables I** and **Extra > Scriptables II** submenus in the Extra menu

* 24 New functions in these menus
  * These are likely to be particularly useful to VI users.
  * Actions that are currently done by mouse that can now be done by keyboard.
  * These functions too are available from Macros.

### Nyquist effects translated

Nyquist effects now support translation, and the ones shipped with Audacity are translated.

### Help Buttons

We added help buttons ? to the Macros full and reduced dialogs, to the Export dialogs, to some error message dialogs and to some other dialogs that did not previously have them.

### Increased legibility of trackname display

Increased legibility of trackname display. the Track Name overlay now has a background.

<figure><img src="../../../../.gitbook/assets/image (70).png" alt=""><figcaption><p>Track name overlay now has a background</p></figcaption></figure>

### Half-wave option for collapsed tracks

For collapsed tracks there is now an option settable in Tracks Preferences to show the upper half of the wave display only in order to show a little more detail.

<figure><img src="../../../../.gitbook/assets/image (40).png" alt=""><figcaption><p>Half-wave option for collapsed tracks</p></figcaption></figure>

### **Sliding Stretch** replace Sliding Time Scale / Pitch Shift

The effect that was formerly named "Sliding Time Scale / Pitch Shift" has been renamed to **Sliding Stretch** for this release.

This is a simple name change, no other changes have been made to the effect. The change has been made mainly to reduce verbosity in the menu along with an attempt to make the command name more meaningful.

### Overwriting existing projects

In response to many user requests for this we have changed Audacity so that is now possible to overwrite pre-existing projects with **File > Save Project** or **File > Save Project As...**.

In doing so you will get the following warning message and please note that for safety reasons this warning cannot be turned off.

<figure><img src="../../../../.gitbook/assets/image (72).png" alt=""><figcaption><p>Overwrite existing projects warning dialog</p></figcaption></figure>

### Use dialog for the name of new labels

There is a new option in Tracks Behaviors Preferences for: "**Use dialog for the name of new label**".

This is off by default, but when enabled creating a label will pop up a dialog box for you to enter the label name _(rather than the default behavior of opening the new label itself for editing)_. When the dialog is closed, focus is returned to the track which was the focus before the dialog opened. This functionality is primarily provided to aid Visually Impaired users who use screen readers, but may be useful to normally sighted users too.

### Changed shortcuts for clip navigation

The shortcuts for clip navigation have been changed

* **Select > Clip Boundaries > Previous Clip** is now **Alt + ,** - _was Alt + P_
* **Select > Clip Boundaries > Next Clip** is now **Alt + .** - _was Alt + N_

### Bug Fixes

* Windows: Queen Mary 1.7.1 Vamp plug-ins crash Audacity on opening Plug-in Manager - see [bug #1244](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1244)
* Inconsistent behavior when recording with a selection defined see [bug #1839](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1839)
* Ctrl + M does not open label for editing - see [bug #1852](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1852)
* Vertical Zoom in by clicking in the vertical Scale, or context menu, in waveform views is inconsistent see [bug #1810](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1810)
* Deletion of all tracks cannot be undone - see [bug #1845](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1845)
* Timer Record with a selection present can get a truncated recording with data loss - see [bug #1851](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1851)
* Duplicate shortcuts can be created - see [bug #1786](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1786)
* Labels longer than 260 characters are now supported - see [bug #1905](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1905)
* Using Spectrogram Settings in TCP or using Preferences causes Audacity to reset Project Rate to default rate in Quality Preferences - see [bug #1977](https://bugzilla.audacityteam.org/show\_bug.cgi?id=1977)
* Cut Preview should play all selected/sync-locked tracks, respecting Mute/Solo during preview - see [bug #231](https://bugzilla.audacityteam.org/show\_bug.cgi?id=231)

### Links

[.](./ "mention") _- detailed release notes for this release of Audacity_
