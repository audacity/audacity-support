---
description: >-
  This page lists all commands in the Audacity menus and all pre-defined
  keyboard shortcuts.
---

# Keyboard Shortcuts

&#x20;The default **Standard** set of shortcuts is a reduced set, compared to earlier versions of Audacity, to simplify the set of shortcuts somewhat and to provide greater flexibility for users who wish to create their own shortcuts. There is also an extended **Full** set of keyboard shortcuts that can be selected from the Defaults button on the Keyboard Preferences dialog. This **Full** set is the set that was available in Audacity 2.1.3 and earlier. You can use Keyboard Preferences to change or remove existing shortcuts or to assign a shortcut to commands that lack a default shortcut.

* Standard shortcuts are shown like so: `Ctrl + A`.
* Shortcuts that are only in the **Full** set are shown like so: `Ctrl + #`   _Extra_.
* Shortcuts that have not been assigned, that you can assign using keyboard preferences, are shown like so _(unassigned)_.

Some less commonly used commands are not in the default menus but they can be accessed by menu by enabling **Show extra menus** in Interface Preferences

{% hint style="info" %}
**Note:** You can change all shortcuts via Preferences > Keyboard. This includes adding new shortcuts, or removing shortcuts existing by default.
{% endhint %}



**Other Tips and hints:**

* **Mac users:** Ctrl = ⌘ and Alt = Option. So, for example, Ctrl + Alt + K = ⌘ + Option + K.
* See Audacity Selection for examples of changing track focus and selection.
* PAGE UP scrolls the project rightwards and PAGE DOWN scrolls the project leftwards, equivalent to a single click in the white area either side of the horizontal scrollbar. These shortcuts cannot be configured in Keyboard Preferences.
* There are a number of key combinations that can be used in combination with mouse clicks. These cannot be configured. They are listed on Mouse Preferences

### File Menu

The File Menu provides commands for creating, opening and saving Audacity projects and importing and exporting audio files

| Action          | Shortcut       | Description                                                                                                                                                            |
| --------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| New             | Ctrl+N         | Creates a new empty project window, to start working on new or imported tracks.                                                                                        |
| Open...         | Ctrl+O         | Presents a standard dialog box where you can select either audio files, a list of files (.LOF) or an Audacity Project file to open.                                    |
| Recent Files    | _(unassigned)_ | Lists the full path to the twelve most recently saved or opened projects or most recently imported audio files                                                         |
| Close           | Ctrl+W         | Closes the current project window, prompting you to save your work if you have not saved.                                                                              |
| Save Project    | _(unassigned)_ | Various ways to save a project.                                                                                                                                        |
| Compact Project | Shift+A        | Compacts your project, saving disk space. Using this command will delete your Undo/Redo History and your Audacity clipboard contents.                                  |
| Export          | _(unassigned)_ | For exporting audio files                                                                                                                                              |
| Import          | _(unassigned)_ | For importing audio files or label files into your project                                                                                                             |
| Page Setup...   | _(unassigned)_ | Opens the standard Page Setup dialog box prior to printing                                                                                                             |
| Print...        | _(unassigned)_ | Prints all the waveforms in the current project window (and the contents of Label Tracks or other tracks), with the Timeline above. Everything is printed to one page. |
| Exit            | Ctrl+Q         | Closes all project windows and exits Audacity. If there are any unsaved changes to your project, Audacity will ask if you want to save them.                           |

#### File: Recent Files

Lists the full path to the twelve most recently saved or opened projects or most recently imported audio files

| Action | Shortcut       | Description                             |
| ------ | -------------- | --------------------------------------- |
| Clear  | _(unassigned)_ | Clears the list of recently used files. |

#### File: Save Project

Various ways to save a project.

| Action             | Shortcut       | Description                                                                                                    |
| ------------------ | -------------- | -------------------------------------------------------------------------------------------------------------- |
| Save Project       | Ctrl+S         | Saves the current Audacity project .AUP3 file.                                                                 |
| Save Project As... | _(unassigned)_ | Same as "Save Project" above, but allows you to save a copy of an open project to a different name or location |
| Backup Project...  | _(unassigned)_ | Saves a backup copy of your project in .AUP3 format to a different name or location                            |

#### File: Export

For exporting audio files

| Action                   | Shortcut       | Description                                                                                                                                                                         |
| ------------------------ | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Export as MP3            | _(unassigned)_ | Exports to an MP3 file                                                                                                                                                              |
| Export as WAV            | _(unassigned)_ | Exports to a WAV file                                                                                                                                                               |
| Export as OGG            | _(unassigned)_ | Exports to an OGG file                                                                                                                                                              |
| Export Audio...          | Ctrl+Shift+E   | Exports to an audio file.                                                                                                                                                           |
| Export Selected Audio... | _(unassigned)_ | Exports selected audio to a file.                                                                                                                                                   |
| Export Labels...         | _(unassigned)_ | Exports audio at one or more labels to file(s).                                                                                                                                     |
| Export Multiple...       | Ctrl+Shift+L   | Exports multiple audio files in one process, one file for each track if there are multiple audio tracks, or labels can be added which then define the length of each exported file. |
| Export MIDI...           | _(unassigned)_ | Exports MIDI (note tracks) to a MIDI file.                                                                                                                                          |

#### File: Import

For importing audio files or label files into your project

| Action      | Shortcut       | Description                                                                                                                                                                                                                                                                                     |
| ----------- | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Audio...    | Ctrl+Shift+I   | Similar to 'Open', except that the file is added as a new track to your existing project.                                                                                                                                                                                                       |
| Labels...   | _(unassigned)_ | Launches a file selection window where you can choose to _import_ a single text file into the project containing point or region labels. For more information about the syntax for labels files, see Importing and Exporting Labels.                                                            |
| MIDI...     | _(unassigned)_ | Imports a _**MIDI**_ (MIDI or MID _**extension**_) or Allegro (GRO) file to a Note Track where simple cut-and-paste edits can be performed. The result can be exported with the File > Export> > Export MIDI command. **Note:** Currently, MIDI and Allegro files cannot be played.             |
| Raw Data... | _(unassigned)_ | Attempts to import an uncompressed audio file that might be "raw" data without any headers to define its format, might have incorrect headers or be otherwise partially corrupted, or might be in a format that Audacity is unable to recognize. Raw data in textual format cannot be imported. |

### Edit Menu

The Edit Menu provides standard edit commands (Undo, Redo, Cut, Copy, Paste and Delete) plus many other commands specific to editing audio or labels

| Action          | Shortcut       | Description                                                                                                                                                                                                                     |
| --------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Undo            | Ctrl+Z         | Undoes the most recent editing action.                                                                                                                                                                                          |
| Redo            | Ctrl+Y         | Redoes the most recently undone editing action.                                                                                                                                                                                 |
| Cut             | Ctrl+X         | Removes the selected audio data and/or labels and places these on the Audacity clipboard. By default, any audio or labels to right of the selection are shifted to the left.                                                    |
| Delete          | Ctrl+K         | Removes the selected audio data and/or labels without copying these to the Audacity clipboard. By default, any audio or labels to right of the selection are shifted to the left.                                               |
| Copy            | Ctrl+C         | Copies the selected audio data to the Audacity clipboard without removing it from the project.                                                                                                                                  |
| Paste           | Ctrl+V         | Inserts whatever is on the Audacity clipboard at the position of the selection cursor in the project, replacing whatever audio data is currently selected, if any.                                                              |
| Duplicate       | Ctrl+D         | Creates a new track containing only the current selection as a new clip.                                                                                                                                                        |
| Remove Special  | _(unassigned)_ | For more "advanced" removal of audio                                                                                                                                                                                            |
| Clip Boundaries | _(unassigned)_ | Create or remove separate clips in the audio track. A clip inside an audio track is a separate section of that track which has been split so that it can be manipulated somewhat independently of the other clips in the track. |
| Labels          | _(unassigned)_ | These commands are to add and edit labels.                                                                                                                                                                                      |
| Labeled Audio   | _(unassigned)_ | Labeled Audio commands apply standard Edit Menu commands to the audio of one or more regions that are labeled. The labels themselves are not affected.                                                                          |
| Metadata...     | _(unassigned)_ | The Metadata Editor modifies information about a track, such as the artist and genre. Typically used with MP3 files.                                                                                                            |
| Preferences...  | Ctrl+P         | Preferences let you change most of the default behaviors and settings of Audacity. On Mac, Preferences are in the Audacity Menu and the default shortcut is ⌘ + ,.                                                              |

#### Edit: Remove Special

For more "advanced" removal of audio

| Action        | Shortcut   | Description                                                                                                                                                                                                   |
| ------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Split Cut     | Ctrl+Alt+X | Same as Cut, but none of the audio data or labels to right of the selection are shifted.                                                                                                                      |
| Split Delete  | Ctrl+Alt+K | Same as Delete, but none of the audio data or labels to right of the selection are shifted.                                                                                                                   |
| Silence Audio | Ctrl+L     | Replaces the currently selected audio with absolute silence. Does not affect label tracks.                                                                                                                    |
| Trim Audio    | Ctrl+T     | Deletes all audio but the selection. If there are other separate clips in the same track these are not removed or shifted unless trimming the entire length of a clip or clips. Does not affect label tracks. |

#### Edit: Clip Boundaries

Create or remove separate clips in the audio track. A clip inside an audio track is a separate section of that track which has been split so that it can be manipulated somewhat independently of the other clips in the track.

| Action             | Shortcut             | Description                                                                                                                                                                   |
| ------------------ | -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Split              | Ctrl+I               | Splits the current clip into two clips at the cursor point, or into three clips at the selection boundaries.                                                                  |
| Split New          | Ctrl+Alt+I   _Extra_ | Does a Split Cut on the current selection in the current track, then creates a new track and pastes the selection into the new track.                                         |
| Join               | Ctrl+J   _Extra_     | If you select an area that overlaps one or more clips, they are all joined into one large clip. Regions in-between clips become silence.                                      |
| Detach at Silences | Ctrl+Alt+J   _Extra_ | In a selection region that includes absolute silences, creates individual non-silent clips between the regions of silence. The silence becomes blank space between the clips. |

#### Edit: Labels

These commands are to add and edit labels.

| Action                          | Shortcut                | Description                                                                                                                                                                                                                                                                                                                   |
| ------------------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Edit Labels...                  | _(unassigned)_          | Brings up a dialog box showing all of your labels in a keyboard-accessible tabular view. Handy buttons in the dialog let you insert or delete a label, or import and export labels to a file. See Labels Editor for more details.                                                                                             |
| Add Label at Selection          | Ctrl+B                  | Creates a new, empty label at the cursor or at the selection region.                                                                                                                                                                                                                                                          |
| Add Label at Playback Position  | Ctrl+M (_⌘ + . on Mac_) | Creates a new, empty label at the current playback or recording position.                                                                                                                                                                                                                                                     |
| Paste Text to New Label         | Ctrl+Alt+V   _Extra_    | Pastes the text on the Audacity clipboard at the cursor position in the currently selected label track. If there is no selection in the label track a point label is created. If a region is selected in the label track a region label is created. If no label track is selected one is created, and a new label is created. |
| Type to Create a Label (on/off) | _(unassigned)_          | When a label track has the yellow focus border, if this option is on, just type to create a label. Otherwise you must create a label first.                                                                                                                                                                                   |

#### Edit: Labeled Audio

Labeled Audio commands apply standard Edit Menu commands to the audio of one or more regions that are labeled. The labels themselves are not affected.

| Action             | Shortcut        | Description                                                                                                                                                                       |
| ------------------ | --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cut                | Alt+X   _Extra_ | Same as the Cut command, but operates on labeled audio regions.                                                                                                                   |
| Delete             | Alt+K   _Extra_ | Same as the Delete command, but operates on labeled audio regions.                                                                                                                |
| Split Cut          | Alt+Shift+X     | Same as the Split Cut command, but operates on labeled audio regions.                                                                                                             |
| Split Delete       | Alt+Shift+K     | Same as the Split Delete command, but operates on labeled audio regions.                                                                                                          |
| Silence Audio      | Alt+L   _Extra_ | Same as the Silence Audio command, but operates on labeled audio regions.                                                                                                         |
| Copy               | Alt+Shift+C     | Same as the Copy command, but operates on labeled audio regions.                                                                                                                  |
| Split              | Alt+I   _Extra_ | Same as the Split command, but operates on labeled audio regions or points.                                                                                                       |
| Join               | Alt+J   _Extra_ | Same as the Join command, but operates on labeled audio regions or points. You may need to select the audio and use Edit > Clip Boundaries > Join, to join all regions or points. |
| Detach at Silences | Alt+Shift+J     | Same as the Detach at Silences command, but operates on labeled audio regions.                                                                                                    |

### Select Menu

Select Menu has commands that enable you make selections of tracks or parts of the tracks in your project.

| Action                           | Shortcut               | Description                                                                                                          |
| -------------------------------- | ---------------------- | -------------------------------------------------------------------------------------------------------------------- |
| All                              | Ctrl+A                 | Selects all of the audio in all of the tracks.                                                                       |
| None                             | Ctrl+Shift+A   _Extra_ | Deselects all of the audio in all of the tracks.                                                                     |
| Tracks                           | _(unassigned)_         | Tracks                                                                                                               |
| Region                           | _(unassigned)_         | For modifying, saving and restoring a selection.                                                                     |
| Spectral                         | _(unassigned)_         | For making a selection of a frequency range.                                                                         |
| Clip Boundaries                  | _(unassigned)_         | For modifying a selection, taking account of clips.                                                                  |
| Cursor to Stored Cursor Position | _(unassigned)_         | Selects from the position of the cursor to the previously stored cursor position                                     |
| Store Cursor Position            | _(unassigned)_         | Stores the current cursor position for use in a later selection                                                      |
| At Zero Crossings                | Z                      | Moves the edges of a selection region (or the cursor position) slightly so they are at a rising zero crossing point. |

#### Select: Tracks

Tracks

| Action                    | Shortcut     | Description                                                                                                     |
| ------------------------- | ------------ | --------------------------------------------------------------------------------------------------------------- |
| In All Tracks             | Ctrl+Shift+K | Extends the current selection up and/or down into all tracks in the project.                                    |
| In All Sync-Locked Tracks | Ctrl+Shift+Y | Extends the current selection up and/or down into all sync-locked tracks in the currently selected track group. |

#### Select: Region

For modifying, saving and restoring a selection.

| Action                     | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| -------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Left at Playback Position  | \[             | <p>When Audacity is playing, recording or paused, sets the left boundary of a potential selection by moving the cursor to the current position of the green playback cursor (or red recording cursor).</p><p>Otherwise, opens the "Set Left Selection Boundary" dialog for adjusting the time position of the left-hand selection boundary. If there is no selection, moving the time digits backwards creates a selection ending at the former cursor position, and moving the time digits forwards provides a way to move the cursor forwards to an exact point.</p>                               |
| Right at Playback Position | ]              | <p>When Audacity is playing, recording or paused, sets the right boundary of the selection, thus drawing the selection from the cursor position to the current position of the green playback cursor (or red recording cursor).</p><p>Otherwise, opens the "Set Right Selection Boundary" dialog for adjusting the time position of the right-hand selection boundary. If there is no selection, moving the time digits forwards creates a selection starting at the former cursor position, and moving the time digits backwards provides a way to move the cursor backwards to an exact point.</p> |
| Track Start to Cursor      | Shift+J        | Selects a region in the selected track(s) from the start of the track to the cursor position.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Cursor to Track End        | Shift+K        | Selects a region in the selected track(s) from the cursor position to the end of the track.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Track Start to End         | _(unassigned)_ | Selects a region in the selected track(s) from the start of the track to the end of the track.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Store Selection            | _(unassigned)_ | Stores the end points of a selection for later reuse.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Retrieve Selection         | _(unassigned)_ | Retrieves the end points of a previously stored selection.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |

#### Select: Spectral

For making a selection of a frequency range.

| Action                     | Shortcut       | Description                                                                                                                                                                                                                                                                                       |
| -------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Toggle Spectral Selection  | Q   _Extra_    | Changes between selecting a time range and selecting the last selected spectral selection in that time range. This command toggles the spectral selection even if not in Spectrogram view, but you must be in Spectrogram view to use the spectral selection in one of the Spectral edit effects. |
| Next Higher Peak Frequency | _(unassigned)_ | When in Spectrogram view, snaps the center frequency to the next higher frequency peak, moving the spectral selection upwards.                                                                                                                                                                    |
| Next Lower Peak Frequency  | _(unassigned)_ | When in Spectrogram views snaps the center frequency to the next lower frequency peak, moving the spectral selection downwards.                                                                                                                                                                   |

#### Select: Clip Boundaries

For modifying a selection, taking account of clips.

| Action                           | Shortcut                                                          | Description                                                                                |
| -------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Previous Clip Boundary to Cursor | _(unassigned)_                                                    | Selects from the current cursor position back to the right-hand edge of the previous clip. |
| Cursor to Next Clip Boundary     | _(unassigned)_                                                    | Selects from the current cursor position forward to the left-hand edge of the next clip.   |
| Previous Clip on selected track  | Alt+,                                                             | Moves the selection to the previous clip.                                                  |
| Next Clip on selected Track      | Alt+.                                                             | Moves the selection to the next clip.                                                      |
| Previous Clip on focused Track   | <p>Shift+Tab<br><em>(not in menu - cannot be reassigned)</em></p> | Moves the selection to the previous clip.                                                  |
| Next Clip on focused Track       | <p>Tab<br><em>(not in menu - cannot be reassigned)</em></p>       | Moves the selection to the next clip.                                                      |

### View Menu

View Menu has commands that determine the amount of detail you see in all the tracks in the project window. It also lets you show or hide Toolbars and some additional windows such as Undo History.

| Action                 | Shortcut       | Description                                                                                                                                                                       |
| ---------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Zoom                   | _(unassigned)_ | Zoom in/out on the horizontal axis. Show more detail or show a longer length of time.                                                                                             |
| Track Size             | _(unassigned)_ | Controls the sizes of tracks.                                                                                                                                                     |
| Skip to                | _(unassigned)_ | Move forward/backwards through the audio                                                                                                                                          |
| History...             | _(unassigned)_ | Brings up the History window which can then be left open while using Audacity normally. History lists all undoable actions performed in the current project, including importing. |
| Karaoke...             | _(unassigned)_ | Brings up the Karaoke window, which displays the labels in a "bouncing ball" scrolling display                                                                                    |
| Mixer Board...         | _(unassigned)_ | Mixer Board is an alternative view to the audio tracks in the main tracks window. Analogous to a hardware mixer board, each audio track is displayed in a Track Strip.            |
| Toolbars               | _(unassigned)_ | Toolbars can be used to determine which of the Audacity toolbars are displayed. By default all toolbars are shown except Spectral Selection and Scrub                             |
| Extra Menus (on/off)   | _(unassigned)_ | Shows extra menus with many extra less-used commands.                                                                                                                             |
| Show Clipping (on/off) | _(unassigned)_ | Option to show or not show audio that is too loud (in red) on the wave form.                                                                                                      |

#### View: Zoom

Zoom in/out on the horizontal axis. Show more detail or show a longer length of time.

| Action                    | Shortcut       | Description                                                                                        |
| ------------------------- | -------------- | -------------------------------------------------------------------------------------------------- |
| Zoom In                   | Ctrl+1         | Zooms in on the horizontal axis of the audio displaying more detail over a shorter length of time. |
| Zoom Normal               | Ctrl+2         | Zooms to the default view which displays about one inch per second.                                |
| Zoom Out                  | Ctrl+3         | Zooms out displaying less detail over a greater length of time.                                    |
| Zoom to Selection         | Ctrl+E         | Zooms in or out so that the selected audio fills the width of the window.                          |
| Zoom Toggle               | Shift+Z        | Changes the zoom back and forth between two preset levels.                                         |
| Advanced Vertical Zooming | _(unassigned)_ | Enable for left-click gestures in the vertical scale to control zooming.                           |

#### View: Track Size

Controls the sizes of tracks.

| Action                  | Shortcut     | Description                                                                   |
| ----------------------- | ------------ | ----------------------------------------------------------------------------- |
| Fit to Width            | Ctrl+F       | Zooms out until the entire project just fits in the window.                   |
| Fit to Height           | Ctrl+Shift+F | Adjusts the height of all the tracks until they fit in the project window.    |
| Collapse All Tracks     | Ctrl+Shift+C | Collapses all tracks to take up the minimum amount of space.                  |
| Expand Collapsed Tracks | Ctrl+Shift+X | Expands all collapsed tracks to their original size before the last collapse. |

#### View: Skip to

Move forward/backwards through the audio

| Action          | Shortcut          | Description                                                                                          |
| --------------- | ----------------- | ---------------------------------------------------------------------------------------------------- |
| Selection Start | Ctrl+\[   _Extra_ | When there is a selection, moves the cursor to the start of the selection and removes the selection. |
| Selection End   | Ctrl+]   _Extra_  | When there is a selection, moves the cursor to the end of the selection and removes the selection.   |

#### View: Toolbars

Toolbars can be used to determine which of the Audacity toolbars are displayed. By default all toolbars are shown except Spectral Selection and Scrub

| Action                     | Shortcut       | Description                                                                                                                        |
| -------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| Reset Toolbars             | _(unassigned)_ | Using this command positions all toolbars in default location and size as they were when Audacity was first installed              |
| Transport Toolbar          | _(unassigned)_ | Controls playback and recording and skips to start or end of project when neither playing or recording                             |
| Tools Toolbar              | _(unassigned)_ | Chooses various tools for selection, volume adjustment, zooming and time-shifting of audio                                         |
| Recording Meter Toolbar    | _(unassigned)_ | Displays recording levels and toggles input monitoring when not recording                                                          |
| Playback Meter Toolbar     | _(unassigned)_ | Displays playback levels                                                                                                           |
| Mixer Toolbar              | _(unassigned)_ | Adjusts the recording and playback volumes of the devices currently selected in Device Toolbar                                     |
| Edit Toolbar               | _(unassigned)_ | Cut, copy, paste, trim audio, silence audio, undo, redo, zoom tools                                                                |
| Play-at-Speed Toolbar      | _(unassigned)_ | Plays audio at a slower or faster speed than normal, affecting pitch                                                               |
| Scrub Toolbar              | _(unassigned)_ | Controls playback and recording and skips to start or end of project when neither playing or recording                             |
| Device Toolbar             | _(unassigned)_ | Selects audio host, recording device, number of recording channels and playback device                                             |
| Selection Toolbar          | _(unassigned)_ | Controls the sample rate of the project, snapping to the selection format and adjusts cursor and region position by keyboard input |
| Spectral Selection Toolbar | _(unassigned)_ | Displays and lets you adjust the current spectral (frequency) selection without having to be in Spectrogram view                   |

### Transport Menu

Transport Menu commands let you play or stop, loop play, scrub play or record (including timed and sound activated recordings).

| Action                      | Shortcut       | Description                                                                                                                                                                                                                                                                                                                             |
| --------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Playing                     | _(unassigned)_ | These commands control playback in Audacity. You can Start, Stop or Pause playback of the audio in your project.                                                                                                                                                                                                                        |
| Recording                   | _(unassigned)_ | These commands control recording in Audacity. You can Start, Stop or Pause recording in your project. You can either start a recording on your existing track or an a new track.                                                                                                                                                        |
| Scrubbing                   | _(unassigned)_ | Scrubbing is the action of moving the mouse pointer right or left so as to adjust the position, speed or direction of playback, listening to the audio at the same time - a convenient way to quickly navigate the waveform to find a particular event of interest. Speed changes are made by rotating the mouse wheel while scrubbing. |
| Cursor to                   | _(unassigned)_ | These commands let you move the cursor to the start or end of the selection, track or any adjacent Clip that you may have                                                                                                                                                                                                               |
| [Looping](broken-reference) | _(unassigned)_ | These commands enable you to control looping playback                                                                                                                                                                                                                                                                                   |
| Rescan Audio Devices        | _(unassigned)_ | Rescan for audio devices connected to your computer, and update the playback and recording dropdown menus in Device Toolbar                                                                                                                                                                                                             |
| Transport Options           | _(unassigned)_ | This submenu lets you manage and set various options for transport (playing and recording) in Audacity                                                                                                                                                                                                                                  |

#### Transport: Playing

These commands control playback in Audacity. You can Start, Stop or Pause playback of the audio in your project.

| Action                   | Shortcut    | Description                                                                                                                                                                                                                                                                                                                                                         |
| ------------------------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Play/Stop                | Space       | Starts and stops playback or stops a recording (stopping does not change the restart position). Therefore using any play or record command after stopping with "Play/Stop" will start playback or recording from the same Timeline position it last started from. You can also assign separate shortcuts for [Play](broken-reference) and [Stop](broken-reference). |
| Play/Stop and Set Cursor | X           | Starts playback like "Play/Stop", but stopping playback sets the restart position to the stop point. When stopped, this command is the same as "Play/Stop". When playing, this command stops playback and moves the cursor (or the start of the selection) to the position where playback stopped.                                                                  |
| Play Once/Stop           | Shift+Space | Plays the loop region only once when looping is enabled.                                                                                                                                                                                                                                                                                                            |
| Pause                    | P           | Temporarily pauses playing or recording without losing your place.                                                                                                                                                                                                                                                                                                  |

#### Transport: Recording

These commands control recording in Audacity. You can Start, Stop or Pause recording in your project. You can either start a recording on your existing track or an a new track.

| Action                | Shortcut | Description                                                                                                         |
| --------------------- | -------- | ------------------------------------------------------------------------------------------------------------------- |
| Record                | R        | Starts recording at the end of the currently selected track(s).                                                     |
| Record New Track      | Shift+R  | Recording begins on a new track at either the current cursor location or at the beginning of the current selection. |
| Timer Record...       | Shift+T  | Brings up the Timer Record dialog.                                                                                  |
| Punch and Roll Record | Shift+D  | Re-record over audio, with a pre-roll of audio that comes before.                                                   |
| Pause                 | P        | Temporarily pauses playing or recording without losing your place.                                                  |

#### Transport: Scrubbing

Scrubbing is the action of moving the mouse pointer right or left so as to adjust the position, speed or direction of playback, listening to the audio at the same time - a convenient way to quickly navigate the waveform to find a particular event of interest. Speed changes are made by rotating the mouse wheel while scrubbing.

| Action      | Shortcut       | Description                                                                                                                                                              |
| ----------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Scrub       | _(unassigned)_ | Scrubbing is the action of moving the mouse pointer right or left so as to adjust the position, speed or direction of playback, listening to the audio at the same time. |
| Seek        | _(unassigned)_ | Seeking is similar to Scrubbing except that it is playback with skips, similar to using the seek button on a CD player.                                                  |
| Scrub Ruler | _(unassigned)_ | Shows (or hides) the scrub ruler, which is just below the timeline.                                                                                                      |

#### Transport: Cursor to

These commands let you move the cursor to the start or end of the selection, track or any adjacent Clip that you may have

| Action                 | Shortcut       | Description                                                                                                 |
| ---------------------- | -------------- | ----------------------------------------------------------------------------------------------------------- |
| Selection Start        | _(unassigned)_ | Moves the left edge of the current selection to the center of the screen, without changing the zoom level.  |
| Selection End          | _(unassigned)_ | Moves the right edge of the current selection to the center of the screen, without changing the zoom level. |
| Track Start            | J              | Moves the cursor to the start of the selected track.                                                        |
| Track End              | K              | Moves the cursor to the end of the selected track.                                                          |
| Previous Clip Boundary | _(unassigned)_ | Moves the cursor position back to the right-hand edge of the previous clip                                  |
| Next Clip Boundary     | _(unassigned)_ | Moves the cursor position forward to the left-hand edge of the next clip                                    |
| Project Start          | Home           | Moves the cursor to the beginning of the project.                                                           |
| Project End            | End            | Moves the cursor to the end of the project.                                                                 |

#### Transport: Looping

| Action                | Shortcut       | Description                                                    |
| --------------------- | -------------- | -------------------------------------------------------------- |
| Loop on/off           | L              | Toggles playback looping on/off.                               |
| Clear Loop            | Alt+Shift+L    | Clears the looping region.                                     |
| Set Loop to Selection | Shift+L        | Sets the current selection range as the new looping region.    |
| Set Loop In           | _(unassigned)_ | Sets the start of the looping region to the current selection. |
| Set Loop Out          | _(unassigned)_ | Sets the end of the looping region to the current selection.   |

#### Transport: Transport Options

This submenu lets you manage and set various options for transport (playing and recording) in Audacity

| Action                             | Shortcut       | Description                                                                                                                                       |
| ---------------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sound Activation Level...          | _(unassigned)_ | Sets the activation level above which Sound Activated Recording will record.                                                                      |
| Sound Activated Recording (on/off) | _(unassigned)_ | Toggles on and off the Sound Activated Recording option.                                                                                          |
| Pinned Play/Record Head (on/off)   | _(unassigned)_ | You can change Audacity to play and record with a fixed head pinned to the Timeline. You can adjust the position of the fixed head by dragging it |
| Overdub (on/off)                   | _(unassigned)_ | Toggles on and off the Overdub option.                                                                                                            |
| Software Playthrough (on/off)      | _(unassigned)_ | Toggles on and off the Software Playthrough option.                                                                                               |

### Tracks Menu

Tracks Menu provides commands for creating and removing tracks, applying operations to selected tracks such as mixing, resampling or converting from stereo to mono, and lets you add or edit labels.

| Action                    | Shortcut       | Description                                                                                                                             |
| ------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Add New                   | _(unassigned)_ | Adds a new track                                                                                                                        |
| Mix                       | _(unassigned)_ | Mixes down selected tracks to mono or stereo tracks                                                                                     |
| Resample...               | _(unassigned)_ | Allows you to resample the selected track(s) to a new sample rate for use in the project                                                |
| Remove Tracks             | _(unassigned)_ | Removes the selected track(s) from the project. Even if only part of a track is selected, the entire track is removed.                  |
| Mute/Unmute               | _(unassigned)_ | Mutes or unmutes audio tracks in the project                                                                                            |
| Pan                       | _(unassigned)_ | Pans left right or center audio tracks in the project                                                                                   |
| Align Tracks              | _(unassigned)_ | Commands that provide an automatic way of aligning selected tracks with the cursor, the selection, or with the start of the project.    |
| Sort Tracks               | _(unassigned)_ | Sorts all tracks in the project from top to bottom in the project window, by Start Time or by Name.                                     |
| Sync-Lock Tracks (on/off) | _(unassigned)_ | Ensures that length changes occurring anywhere in a defined group of tracks also take place in all audio or label tracks in that group. |

#### Tracks: Add New

Adds a new track

| Action       | Shortcut               | Description                                                                                    |
| ------------ | ---------------------- | ---------------------------------------------------------------------------------------------- |
| Mono Track   | Ctrl+Shift+N   _Extra_ | Creates a new empty mono audio track.                                                          |
| Stereo Track | _(unassigned)_         | Adds an empty stero track to the project                                                       |
| Label Track  | _(unassigned)_         | Adds an empty label track to the project                                                       |
| Time Track   | _(unassigned)_         | Adds an empty time track to the project. Time tracks are used to speed up and slow down audio. |

#### Tracks: Mix

Mixes down selected tracks to mono or stereo tracks

| Action                      | Shortcut               | Description                                                                                                                                                                                                                          |
| --------------------------- | ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Mix Stereo Down to Mono     | _(unassigned)_         | Converts the selected stereo track(s) into the same number of mono tracks, combining left and right channels equally by averaging the volume of both channels.                                                                       |
| Mix and Render              | _(unassigned)_         | Mixes down all selected tracks to a single mono or stereo track, rendering to the waveform all real-time transformations that had been applied (such as track _**gain**_, panning, amplitude envelopes or a change in project rate). |
| Mix and Render to New Track | Ctrl+Shift+M   _Extra_ | Same as Tracks > Mix and Render except that the original tracks are preserved rather than being replaced by the resulting "Mix" track.                                                                                               |

#### Tracks: Mute/Unmute

Mutes or unmutes audio tracks in the project

| Action            | Shortcut         | Description                                                                                                                     |
| ----------------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| Mute All Tracks   | Ctrl+U           | Mutes all the audio tracks in the project as if you had used the mute buttons from the Track Control Panel on each track.       |
| Unmute All Tracks | Ctrl+Shift+U     | Unmutes all the audio tracks in the project as if you had released the mute buttons from the Track Control Panel on each track. |
| Mute Tracks       | Ctrl+Alt+U       | Mutes the selected tracks.                                                                                                      |
| Unmute Tracks     | Ctrl+Alt+Shift+U | Unmutes the selected tracks.                                                                                                    |

#### Tracks: Pan

Pans left right or center audio tracks in the project

| Action | Shortcut       | Description                          |
| ------ | -------------- | ------------------------------------ |
| Left   | _(unassigned)_ | Pan selected audio to left speaker   |
| Right  | _(unassigned)_ | Pan selected audio centrally.        |
| Center | _(unassigned)_ | Pan selected audio to right speaker. |

#### Tracks: Align Tracks

Commands that provide an automatic way of aligning selected tracks with the cursor, the selection, or with the start of the project.

| Action                              | Shortcut       | Description                                                                                                      |
| ----------------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------- |
| Align End to End                    | _(unassigned)_ | Aligns the selected tracks one after the other, based on their top-to-bottom order in the project window.        |
| Align Together                      | _(unassigned)_ | Align the selected tracks so that they start at the same (averaged) start time.                                  |
| Start to Zero                       | _(unassigned)_ | Aligns the start of selected tracks with the start of the project.                                               |
| Start to Cursor/Selection Start     | _(unassigned)_ | Aligns the start of selected tracks with the current cursor position or with the start of the current selection. |
| Start to Selection End              | _(unassigned)_ | Aligns the start of selected tracks with the end of the current selection.                                       |
| End to Cursor/Selection Start       | _(unassigned)_ | Aligns the end of selected tracks with the current cursor position or with the start of the current selection.   |
| End to Selection End                | _(unassigned)_ | Aligns the end of selected tracks with the end of the current selection.                                         |
| Move Selection with Tracks (on/off) | _(unassigned)_ | Toggles on/off the selection moving with the realigned tracks, or staying put.                                   |

#### Tracks: Sort Tracks

Sorts all tracks in the project from top to bottom in the project window, by Start Time or by Name.

| Action        | Shortcut       | Description                         |
| ------------- | -------------- | ----------------------------------- |
| By Start Time | _(unassigned)_ | Sort tracks in order of start time. |
| By Name       | _(unassigned)_ | Sort tracks in order by name.       |

### Generate Menu

Generate Menu lets you create audio containing tones, noise or silence.

| Action                   | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                |
| ------------------------ | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Plugin Manager | _(unassigned)_ | Selecting this option from the Effect Menu (or the Generate Menu or Analyze Menu) takes you to a dialog where you can enable or disable particular Effects, Generators and Analyzers in Audacity. Even if you do not add any third-party plugins, you can use this to make the Effect menu shorter or longer as required. For details see Add / Remove Effects, Generators and Analyzers. |
| Built-in                 | _(unassigned)_ | Shows the list of available Audacity built-in effects but only if the user has effects "Grouped by Type" in Effects Preferences.                                                                                                                                                                                                                                                           |
| Nyquist                  | _(unassigned)_ | Shows the list of available Nyquist effects but only if the user has effects "Grouped by Type" in Effects Preferences.                                                                                                                                                                                                                                                                     |

#### Generate: Built-in

| Action        | Shortcut       | Description                                                                                                                                                                       |
| ------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Chirp...      | _(unassigned)_ | Generates four different types of tone waveforms like the [Tone Generator](broken-reference), but additionally allows setting of the starting and ending amplitude and frequency. |
| DTMF Tones... | _(unassigned)_ | Generates dual-tone multi-frequency (DTMF) tones like those produced by the keypad on telephones.                                                                                 |
| Noise...      | _(unassigned)_ | Generates 'white', 'pink' or 'brown' noise.                                                                                                                                       |
| Silence...    | _(unassigned)_ | Creates audio of zero amplitude, the only configurable setting being duration.                                                                                                    |
| Tone...       | _(unassigned)_ | Generates one of four different tone waveforms: _Sine_, _Square_, _Sawtooth_ or _Square (no alias)_, and a frequency between 1 Hz and _half the current project rate_.            |

#### Generate: Nyquist

| Action          | Shortcut       | Description                                                                                                        |
| --------------- | -------------- | ------------------------------------------------------------------------------------------------------------------ |
| Pluck...        | _(unassigned)_ | A synthesized pluck tone with abrupt or gradual fade-out, and selectable pitch corresponding to a _**MIDI**_ note. |
| Rhythm Track... | _(unassigned)_ | Generates a track with regularly spaced sounds at a specified tempo and number of beats per measure (bar).         |
| Risset Drum...  | _(unassigned)_ | Produces a realistic drum sound.                                                                                   |

### Effect Menu

Audacity includes many built-in effects and also lets you use a wide range of plugin effects.

| Action                   | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                |
| ------------------------ | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Plugin Manager | _(unassigned)_ | Selecting this option from the Effect Menu (or the Generate Menu or Analyze Menu) takes you to a dialog where you can enable or disable particular Effects, Generators and Analyzers in Audacity. Even if you do not add any third-party plugins, you can use this to make the Effect menu shorter or longer as required. For details see Add / Remove Effects, Generators and Analyzers. |
| Add Realtime Effects     | E              | Open the Realtime effects pane for the focused track. If the pane is already open, then it is closed. |
| Repeat Last Effect       | Ctrl+R         | Repeats the last used effect at its last used settings and without displaying any dialog.                                                                                                                                                                                                                                                                                                  |
| Built-in                 | _(unassigned)_ | no tip string.                                                                                                                                                                                                                                                                                                                                                                             |
| LADSPA                   | _(unassigned)_ | Shows the list of available LADSPA effects but only if the user has effects "Grouped by Type" in Effects Preferences.                                                                                                                                                                                                                                                                      |
| Nyquist                  | _(unassigned)_ | no tip string.                                                                                                                                                                                                                                                                                                                                                                             |

#### Effect: Built-in

| Action                    | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Amplify...                | _(unassigned)_ | Increases or decreases the volume of the audio you have selected.                                                                                                                                                                                                                                                                                                                                                                                                         |
| Auto Duck...              | _(unassigned)_ | Reduces (ducks) the volume of one or more tracks whenever the volume of a specified "control" track reaches a particular level. Typically used to make a music track softer whenever speech in a commentary track is heard.                                                                                                                                                                                                                                               |
| Bass and Treble...        | _(unassigned)_ | Increases or decreases the lower _**frequencies**_ and higher frequencies of your audio independently; behaves just like the bass and treble controls on a stereo system.                                                                                                                                                                                                                                                                                                 |
| Change Pitch...           | _(unassigned)_ | Change the pitch of a selection without changing its tempo.                                                                                                                                                                                                                                                                                                                                                                                                               |
| Change Speed...           | _(unassigned)_ | Change the speed of a selection, also changing its pitch.                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Change Tempo...           | _(unassigned)_ | Change the tempo and length (duration) of a selection without changing its pitch.                                                                                                                                                                                                                                                                                                                                                                                         |
| Click Removal...          | _(unassigned)_ | Click Removal is designed to remove clicks on audio tracks and is especially suited to declicking recordings made from vinyl records.                                                                                                                                                                                                                                                                                                                                     |
| Compressor...             | _(unassigned)_ | Compresses the _**dynamic range**_ by two alternative methods. The default "_**RMS**_" method makes the louder parts softer, but leaves the quieter audio alone. The alternative "peaks" method makes the entire audio louder, but amplifies the louder parts less than the quieter parts. Make-up _**gain**_ can be applied to either method, making the result as loud as possible without _**clipping**_, but not changing the dynamic range further.                  |
| Distortion...             | _(unassigned)_ | Use the Distortion effect to make the audio sound distorted. By distorting the waveform the frequency content is changed, which will often make the sound "crunchy" or "abrasive". Technically this effect is a [waveshaper](https://en.wikipedia.org/wiki/Waveshaper). The result of waveshaping is equivalent to applying non-linear amplification to the audio waveform. Preset shaping functions are provided, each of which produces a different type of distortion. |
| Echo...                   | _(unassigned)_ | Repeats the selected audio again and again, normally softer each time and normally not blended into the original sound until some time after it starts. The delay time between each repeat is fixed, with no pause in between each repeat. For a more configurable echo effect with a variable delay time and pitch-changed echoes, see Delay.                                                                                                                            |
| Fade In                   | _(unassigned)_ | Applies a _**linear**_ fade-in to the selected audio - the rapidity of the fade-in depends entirely on the length of the selection it is applied to. For a more customizable _**logarithmic**_ fade, use the Envelope Tool on the Tools Toolbar.                                                                                                                                                                                                                          |
| Fade Out                  | _(unassigned)_ | <p>Applies a <em><strong>linear</strong></em> fade-out to the selected audio - the rapidity of the fade-out depends entirely on the length of the selection it is applied to. For a more customizable <em><strong>logarithmic</strong></em> fade, use the Envelope Tool on the Tools Toolbar.<br></p>                                                                                                                                                                     |
| Filter Curve...           | _(unassigned)_ | Adjusts the volume levels of particular frequencies                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Graphic EQ...             | _(unassigned)_ | Adjusts the volume levels of particular frequencies                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Invert                    | _(unassigned)_ | This effect flips the audio samples upside-down. This normally does not affect the sound of the audio at all. It is occasionally useful for vocal removal.                                                                                                                                                                                                                                                                                                                |
| Loudness Normalization... | _(unassigned)_ | Changes the perceived loudness of the audio.                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Noise Reduction...        | _(unassigned)_ | This effect is ideal for reducing constant background noise such as fans, tape noise, or hums. It will not work very well for removing talking or music in the background. More details here.                                                                                                                                                                                                                                                                             |
| Normalize...              | _(unassigned)_ | Use the Normalize effect to set the maximum amplitude of a track, equalize the amplitudes of the left and right channels of a stereo track and optionally remove any DC offset from the track                                                                                                                                                                                                                                                                             |
| Paulstretch...            | _(unassigned)_ | Use Paulstretch only for an extreme time-stretch or "stasis" effect, This may be useful for synthesizer pad sounds, identifying performance glitches or just creating interesting aural textures. Use Change Tempo or Sliding Time Scale rather than Paulstretch for tasks like slowing down a song to a "practice" tempo.                                                                                                                                                |
| Phaser...                 | _(unassigned)_ | The name "Phaser" comes from "Phase Shifter", because it works by combining phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a Low _**Frequency**_ Oscillator (LFO).                                                                                                                                                                                                                                         |
| Repair                    | _(unassigned)_ | Fix one particular short click, pop or other glitch no more than 128 samples long.                                                                                                                                                                                                                                                                                                                                                                                        |
| Repeat...                 | _(unassigned)_ | Repeats the selection the specified number of times.                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Reverb...                 | _(unassigned)_ | A configurable stereo reverberation effect with built-in and user-added presets. It can be used to add ambience (an impression of the space in which a sound occurs) to a mono sound. Also use it to increase reverberation in stereo audio that sounds too "dry" or "close".                                                                                                                                                                                             |
| Reverse                   | _(unassigned)_ | Reverses the selected audio; after the effect the end of the audio will be heard first and the beginning last.                                                                                                                                                                                                                                                                                                                                                            |
| Sliding Stretch...        | _(unassigned)_ | This effect allows you to make a continuous change to the tempo and/or pitch of a selection by choosing initial and/or final change values.                                                                                                                                                                                                                                                                                                                               |
| Truncate Silence...       | _(unassigned)_ | Automatically try to find and eliminate audible silences. Do not use this with faded audio.                                                                                                                                                                                                                                                                                                                                                                               |
| Wahwah...                 | _(unassigned)_ | Rapid tone quality variations, like that guitar sound so popular in the 1970's.                                                                                                                                                                                                                                                                                                                                                                                           |

#### Effect: Nyquist

| Action                           | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                    |
| -------------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Adjustable Fade...               | _(unassigned)_ | enables you to control the shape of the fade (non-linear fading) to be applied by adjusting various parameters; allows partial _(that is not from or to zero)_ fades up or down.                                                                                                                                                                                                               |
| Clip Fix...                      | _(unassigned)_ | Clip Fix attempts to reconstruct clipped regions by interpolating the lost signal.                                                                                                                                                                                                                                                                                                             |
| Crossfade Clips                  | _(unassigned)_ | Use Crossfade Clips to apply a simple crossfade to a selected pair of clips in a single audio track.                                                                                                                                                                                                                                                                                           |
| Crossfade Tracks...              | _(unassigned)_ | Use Crossfade Tracks to make a smooth transition between two overlapping tracks one above the other. Place the track to be faded out above the track to be faded in then select the overlapping region in both tracks and apply the effect.                                                                                                                                                    |
| Delay...                         | _(unassigned)_ | A configurable delay effect with variable delay time and pitch shifting of the delays.                                                                                                                                                                                                                                                                                                         |
| High-Pass Filter...              | _(unassigned)_ | Passes frequencies above its cutoff frequency and attenuates frequencies below its cutoff frequency.                                                                                                                                                                                                                                                                                           |
| Limiter...                       | _(unassigned)_ | Limiter passes signals below a specified input level unaffected or gently reduced, while preventing the peaks of stronger signals from exceeding this threshold. Mastering engineers often use this type of dynamic range compression combined with make-up gain to increase the perceived loudness of an audio recording during the audio mastering process.                                  |
| Low-Pass Filter...               | _(unassigned)_ | Passes frequencies below its cutoff frequency and attenuates frequencies above its cutoff frequency.                                                                                                                                                                                                                                                                                           |
| Notch Filter...                  | _(unassigned)_ | Greatly attenuate ("notch out"), a narrow frequency band. This is a good way to remove mains hum or a whistle confined to a specific frequency with minimal damage to the remainder of the audio.                                                                                                                                                                                              |
| Spectral edit multi tool         | _(unassigned)_ | When the selected track is in spectrogram or spectrogram log(f) view, applies a _**notch filter**_, _**high pass filter**_ or _**low pass filter**_ according to the spectral selection made. This effect can also be used to change the audio quality as an alternative to using Equalization.                                                                                                |
| Spectral edit parametric EQ...   | _(unassigned)_ | When the selected track is in spectrogram or spectrogram log(f) view and the spectral selection has a center frequency and an upper and lower boundary, performs the specified _**band cut**_ or _**band boost**_. This can be used as an alternative to Equalization or may also be useful to repair damaged audio by reducing frequency spikes or boosting other frequencies to mask spikes. |
| Spectral edit shelves...         | _(unassigned)_ | When the selected track is in spectrogram or spectrogram log(f) view, applies either a low- or high-frequency shelving filter or both filters, according to the spectral selection made. This can be used as an alternative to Equalization or may also be useful to repair damaged audio by reducing frequency spikes or boosting other frequencies to mask spikes.                           |
| Studio Fade Out                  | _(unassigned)_ | Applies a more musical fade out to the selected audio, giving a more pleasing sounding result.                                                                                                                                                                                                                                                                                                 |
| Tremolo...                       | _(unassigned)_ | Modulates the volume of the selection at the depth and rate selected in the dialog. The same as the tremolo effect familiar to guitar and keyboard players.                                                                                                                                                                                                                                    |
| Vocal Reduction and Isolation... | _(unassigned)_ | Attempts to remove or isolate center-panned audio from a stereo track. Most "Remove" options in this effect preserve the stereo image.                                                                                                                                                                                                                                                         |
| Vocoder...                       | _(unassigned)_ | Synthesizes audio (usually a voice) in the left channel of a stereo track with a _carrier wave_ (typically white noise) in the right channel to produce a modified version of the left channel. Vocoding a normal voice with white noise will produce a robot-like voice for special effects.                                                                                                  |

### Analyze Menu

The Analyze Menu contains tools for finding out about the characteristics of your audio, or labeling key feature.

| Action                   | Shortcut               | Description                                                                                                                                                                                                                                                                                                                                                                                |
| ------------------------ | ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Plugin Manager | _(unassigned)_         | Selecting this option from the Effect Menu (or the Generate Menu or Analyze Menu) takes you to a dialog where you can enable or disable particular Effects, Generators and Analyzers in Audacity. Even if you do not add any third-party plugins, you can use this to make the Effect menu shorter or longer as required. For details see Add / Remove Effects, Generators and Analyzers. |
| Contrast...              | Ctrl+Shift+T   _Extra_ | Analyzes a single mono or stereo speech track to determine the average _**RMS**_ _difference in volume_ (contrast) between foreground speech and background music, audience noise or similar. The purpose is to determine if the speech will be intelligible to the hard of hearing.                                                                                                       |
| Plot Spectrum...         | _(unassigned)_         | Takes the selected audio (which is a set of sound pressure values at points in time) and converts it to a graph of frequencies against _**amplitudes**_.                                                                                                                                                                                                                                   |
| Find Clipping...         | _(unassigned)_         | Displays runs of _**clipped**_ samples in a Label Track, as a screen-reader accessible alternative to View > Show Clipping. A run must include at least one clipped sample, but may include unclipped samples too.                                                                                                                                                                         |
| Nyquist                  | _(unassigned)_         | no tip string.                                                                                                                                                                                                                                                                                                                                                                             |

#### Analyze: Nyquist

| Action          | Shortcut       | Description                                                                                                                                                                                                                                                                                                                   |
| --------------- | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Beat Finder...  | _(unassigned)_ | Attempts to place labels at beats which are much louder than the surrounding audio. It's a fairly rough and ready tool, and will not necessarily work well on a typical modern pop music track with compressed _**dynamic range**_. If you do not get enough beats detected, try reducing the "Threshold Percentage" setting. |
| Label Sounds... | _(unassigned)_ | Label Sounds is a tool which can useful to label the different songs or sections (or silences) in a long recording.                                                                                                                                                                                                           |

### Tools Menu

The Tools Menu contains customisable tools.

| Action                       | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                |
| ---------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Plugin Manager     | _(unassigned)_ | Selecting this option from the Effect Menu (or the Generate Menu or Analyze Menu) takes you to a dialog where you can enable or disable particular Effects, Generators and Analyzers in Audacity. Even if you do not add any third-party plugins, you can use this to make the Effect menu shorter or longer as required. For details see Add / Remove Effects, Generators and Analyzers. |
| Macros...                    | _(unassigned)_ | Creates a new macro or edits an existing macro.                                                                                                                                                                                                                                                                                                                                            |
| Apply Macro                  | _(unassigned)_ | Displays a menu with list of all your Macros. Selecting any of these Macros by clicking on it will cause that Macro to be applied to the current project.                                                                                                                                                                                                                                  |
| Screenshot...                | _(unassigned)_ | A tool, mainly used in documentation, to capture screenshots of Audacity.                                                                                                                                                                                                                                                                                                                  |
| Run Benchmark...             | _(unassigned)_ | A tool for measuring the performance of one part of Audacity.                                                                                                                                                                                                                                                                                                                              |
| Nyquist Prompt...            | _(unassigned)_ | Brings up a dialog where you can enter Nyquist commands. Nyquist is a programming language for generating, processing and analyzing audio. For more information see [Nyquist Plug-ins Reference](http://wiki.audacityteam.org/wiki/Nyquist\_Plugins\_Reference).                                                                                                                           |
| Nyquist Plugin Installer...  | _(unassigned)_ | A Nyquist plugin that simplifies the installation of other Nyquist plugins.                                                                                                                                                                                                                                                                                                              |
| Regular Interval Labels...   | _(unassigned)_ | Places labels in a long track so as to divide it into smaller, equally sized segments.                                                                                                                                                                                                                                                                                                     |
| Sample Data Export...        | _(unassigned)_ | Reads the values of successive samples from the selected audio and prints this data to a plain text, CSV or HTML file.                                                                                                                                                                                                                                                                     |
| Sample Data Import...        | _(unassigned)_ | Reads numeric values from a plain ASCII text file and creates a PCM sample for each numeric value read.                                                                                                                                                                                                                                                                                    |

#### Tools: Apply Macro

Displays a menu with list of all your Macros. Selecting any of these Macros by clicking on it will cause that Macro to be applied to the current project.

| Action         | Shortcut       | Description                                                                                                  |
| -------------- | -------------- | ------------------------------------------------------------------------------------------------------------ |
| Palette...     | _(unassigned)_ | Displays a menu with list of all your Macros which can be applied to the current project or to audio files.. |
| Fade Ends      | _(unassigned)_ | Fades in the first second and fades out the last second of a track.                                          |
| MP3 Conversion | _(unassigned)_ | Converts MP3.                                                                                                |

### Extra Menu

The Extra menu provides access to additional Commands that are not available in the normal default Audacity menus.

| Action               | Shortcut       | Description                                                                                                                                                                                                                                           |
| -------------------- | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transport            | _(unassigned)_ | Extra commands related to play and record                                                                                                                                                                                                             |
| Tools                | _(unassigned)_ | Extra commands to select the tool, for example time-shift, envelopes, multi-tool.                                                                                                                                                                     |
| Mixer                | _(unassigned)_ | Extra commands related to volume                                                                                                                                                                                                                      |
| Edit                 | _(unassigned)_ | Extra commands related to editing                                                                                                                                                                                                                     |
| Play-at-Speed        | _(unassigned)_ | Extra commands related to play at speed                                                                                                                                                                                                               |
| Seek                 | _(unassigned)_ | Extra commands related to seeking                                                                                                                                                                                                                     |
| Device               | _(unassigned)_ | Extra commands related to selecting a device                                                                                                                                                                                                          |
| Selection            | _(unassigned)_ | Extra commands related to selecting.                                                                                                                                                                                                                  |
| Focus                | _(unassigned)_ | Extra commands to set focus, usually focus on one track                                                                                                                                                                                               |
| Cursor               | _(unassigned)_ | Extra commands to move the cursor                                                                                                                                                                                                                     |
| Track                | _(unassigned)_ | Extra commands to operate on a track that has focus                                                                                                                                                                                                   |
| Scriptables I        | _(unassigned)_ | These commands were originally written for scripting Audacity, e.g via a Python script that uses mod-script-pipe. The commands though are also present in the menu, available from macros, and available from within Nyquist using (AUD-DO "command") |
| Scriptables II       | _(unassigned)_ | Like Scriptables I, but these ones are less commonly used from the menu.                                                                                                                                                                              |
| Full Screen (on/off) | F11            | Toggle full screen mode with no title bar                                                                                                                                                                                                             |

#### Extra Transport

Extra commands related to play and record

| Action                                | Shortcut                | Description                                                                                                                                                              |
| ------------------------------------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Play                                  | _(unassigned)_          | Play (or stop) audio                                                                                                                                                     |
| Stop                                  | _(unassigned)_          | Stop audio                                                                                                                                                               |
| Play One Second                       | _(unassigned)_          | Plays for one second centered on the current **mouse pointer** position (not from the current cursor position). See this page for an example.                            |
| Play to Selection                     | B                       | Plays to or from the current **mouse pointer** position to or from the start or end of the selection, depending on the pointer position. See this page for more details. |
| Play Before Selection Start           | Shift+F5   _Extra_      | Plays a short period before the start of the selected audio, the period before shares the setting of the cut preview.                                                    |
| Play After Selection Start            | Shift+F6   _Extra_      | Plays a short period after the start of the selected audio, the period after shares the setting of the cut preview.                                                      |
| Play Before Selection End             | Shift+F7   _Extra_      | Plays a short period before the end of the selected audio, the period before shares the setting of the cut preview.                                                      |
| Play After Selection End              | Shift+F8   _Extra_      | Plays a short period after the end of the selected audio, the period after shares the setting of the cut preview.                                                        |
| Play Before and After Selection Start | Ctrl+Shift+F5   _Extra_ | Plays a short period before and after the start of the selected audio, the periods before and after share the setting of the cut preview.                                |
| Play Before and After Selection End   | Ctrl+Shift+F7   _Extra_ | Plays a short period before and after the end of the selected audio, the periods before and after share the setting of the cut preview.                                  |
| Play Cut Preview                      | C                       | Plays audio excluding the selection                                                                                                                                      |

#### Extra: Tools

Extra commands to select the tool, for example time-shift, envelopes, multi-tool.

| Action         | Shortcut    | Description                                                                                                                                                                                     |
| -------------- | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Selection Tool | F1          | Chooses Selection tool.                                                                                                                                                                         |
| Envelope Tool  | F2          | Chooses Envelope tool.                                                                                                                                                                          |
| Draw Tool      | F3          | Chooses Draw tool.                                                                                                                                                                              |
| Zoom Tool      | F4          | Chooses Zoom tool.                                                                                                                                                                              |
| Multi Tool     | F6          | Chooses the Multi-Tool                                                                                                                                                                          |
| Previous Tool  | A   _Extra_ | Cycles backwards through the tools, starting from the currently selected tool: starting from Selection, it would navigate to Multi-tool to Time Shift to Zoom to Draw to Envelope to Selection. |
| Next Tool      | D   _Extra_ | Cycles forwards through the tools, starting from the currently selected tool: starting from Selection, it would navigate to Envelope to Draw to Zoom to Time Shift to Multi-tool to Selection.  |

#### Extra: Mixer

Extra commands related to volume

| Action                     | Shortcut       | Description                                                                                                                                                                           |
| -------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Adjust Playback Volume...  | _(unassigned)_ | Displays the Playback Volume dialog. You can type a new value for the playback volume (between 0 and 1), or press Tab, then use the left and right arrow keys to adjust the slider.   |
| Increase Playback Volume   | _(unassigned)_ | Each key press will increase the playback volume by 0.1.                                                                                                                              |
| Decrease Playback Volume   | _(unassigned)_ | Each key press will decrease the playback volume by 0.1.                                                                                                                              |
| Adjust Recording Volume... | _(unassigned)_ | Displays the Recording Volume dialog. You can type a new value for the recording volume (between 0 and 1), or press Tab, then use the left and right arrow keys to adjust the slider. |
| Increase Recording Volume  | _(unassigned)_ | Each key press will increase the recording volume by 0.1.                                                                                                                             |
| Decrease Recording Volume  | _(unassigned)_ | Each key press will decrease the recording volume by 0.1.                                                                                                                             |

#### Extra: Edit

Extra commands related to editing

| Action           | Shortcut       | Description                                                                                                                                                 |
| ---------------- | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Delete Key       | Backspace      | Deletes the selection. When focus is in Selection Toolbar, BACKSPACE is not a shortcut but navigates back to the previous digit and sets it to zero.        |
| Delete Key2      | Delete         | Deletes the selection.                                                                                                                                      |
| Time Shift Left  | _(unassigned)_ | Moves the currently focused audio track (or a separate clip in that track which contains the editing cursor or selection region) one screen pixel to left.  |
| Time Shift Right | _(unassigned)_ | Moves the currently focused audio track (or a separate clip in that track which contains the editing cursor or selection region) one screen pixel to right. |

#### Extra: Play at speed

Extra commands related to play at speed

| Action                    | Shortcut       | Description                                                                                                                                                                        |
| ------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Normal Play-at-Speed      | _(unassigned)_ | Play audio at a faster or slower speed                                                                                                                                             |
| Loop Play-at-Speed        | _(unassigned)_ | Combines looped play and play at speed                                                                                                                                             |
| Play Cut Preview-at-Speed | _(unassigned)_ | Combines cut preview and play at speed                                                                                                                                             |
| Adjust Playback Speed...  | _(unassigned)_ | Displays the Playback Speed dialog. You can type a new value for the playback volume (between 0 and 1), or press Tab, then use the left and right arrow keys to adjust the slider. |
| Increase Playback Speed   | _(unassigned)_ | Each key press will increase the playback speed by 0.1.                                                                                                                            |
| Decrease Playback Speed   | _(unassigned)_ | Each key press will decrease the playback speed by 0.1.                                                                                                                            |
| Move to Previous Label    | Alt+Left       | Moves selection to the previous label                                                                                                                                              |
| Move to Next Label        | Alt+Right      | Moves selection to the next label                                                                                                                                                  |

#### Extra: Seek

Extra commands related to seeking

| Action                           | Shortcut    | Description                                              |
| -------------------------------- | ----------- | -------------------------------------------------------- |
| Short Seek Left During Playback  | Left        | Skips the playback cursor back one second by default.    |
| Short Seek Right During Playback | Right       | Skips the playback cursor forward one second by default. |
| Long Seek Left During Playback   | Shift+Left  | Skips the playback cursor back 15 seconds by default.    |
| Long Seek Right During Playback  | Shift+Right | Skips the playback cursor forward 15 seconds by default. |

#### Extra: Device

Extra commands related to selecting a device

| Action                       | Shortcut          | Description                                                                                                                                                                                                                         |
| ---------------------------- | ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Change Recording Device...   | Shift+I   _Extra_ | Displays the Select recording Device dialog for choosing the recording device, but only if the "Recording Device" dropdown menu in Device Toolbar has entries for devices. Otherwise, an recording error message will be displayed. |
| Change Playback Device...    | Shift+O   _Extra_ | Displays the Select Playback Device dialog for choosing the playback device, but only if the "Playback Device" dropdown menu in Device Toolbar has entries for devices. Otherwise, an error message will be displayed.              |
| Change Audio Host...         | Shift+H   _Extra_ | Displays the Select Audio Host dialog for choosing the particular interface with which Audacity communicates with your chosen playback and recording devices.                                                                       |
| Change Recording Channels... | Shift+N   _Extra_ | Displays the Select Recording Channels dialog for choosing the number of channels to be recorded by the chosen recording device.                                                                                                    |

#### Extra: Selection

Extra commands related to selecting.

| Action                          | Shortcut         | Description                                                                                                                                                                                       |
| ------------------------------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Snap-To Off                     | _(unassigned)_   | Equivalent to setting the Snap To control in Selection Toolbar to "Off".                                                                                                                          |
| Snap-To Nearest                 | _(unassigned)_   | Equivalent to setting the Snap To control in Selection Toolbar to "Nearest".                                                                                                                      |
| Snap-To Prior                   | _(unassigned)_   | Equivalent to setting the Snap To control in Selection Toolbar to "Prior".                                                                                                                        |
| Selection to Start              | Shift+Home       | Select from cursor to start of project                                                                                                                                                            |
| Selection to End                | Shift+End        | Select from cursor to end of track                                                                                                                                                                |
| Selection Extend Left           | Shift+Left       | Increases the size of the selection by extending it to the left. The amount of increase is dependent on the zoom level. If there is no selection one is created starting at the cursor position.  |
| Selection Extend Right          | Shift+Right      | Increases the size of the selection by extending it to the right. The amount of increase is dependent on the zoom level. If there is no selection one is created starting at the cursor position. |
| Set (or Extend) Left Selection  | _(unassigned)_   | Extend selection left a little. This command only works during Playback or Recording.                                                                                                             |
| Set (or Extend) Right Selection | _(unassigned)_   | Extend selection right a little. This command only works during Playback or Recording.                                                                                                            |
| Selection Contract Left         | Ctrl+Shift+Right | Decreases the size of the selection by contracting it from the right. The amount of decrease is dependent on the zoom level. If there is no selection no action is taken.                         |
| Selection Contract Right        | Ctrl+Shift+Left  | Decreases the size of the selection by contracting it from the left. The amount of decrease is dependent on the zoom level. If there is no selection no action is taken.                          |

#### Extra: Focus

Extra commands to set focus, usually focus on one track

| Action                                | Shortcut            | Description                                                                                                                                                                                      |
| ------------------------------------- | ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Move Backward from Toolbars to Tracks | Ctrl+Shift+F6       | Move backward through currently focused toolbar in Upper Toolbar dock area, Track View and currently focused toolbar in Lower Toolbar dock area. Each use moves the keyboard focus as indicated. |
| Move Forward from Toolbars to Tracks  | Ctrl+F6             | Move forward through currently focused toolbar in Upper Toolbar dock area, Track View and currently focused toolbar in Lower Toolbar dock area. Each use moves the keyboard focus as indicated.  |
| Move Focus to Previous Track          | Up                  | Focus one track up                                                                                                                                                                               |
| Move Focus to Next Track              | Down                | Focus one track down                                                                                                                                                                             |
| Move Focus to First Track             | Ctrl+Home   _Extra_ | Focus on first track                                                                                                                                                                             |
| Move Focus to Last Track              | Ctrl+End   _Extra_  | Focus on last track                                                                                                                                                                              |
| Move Focus to Previous and Select     | Shift+Up            | Focus one track up and select it                                                                                                                                                                 |
| Move Focus to Next and Select         | Shift+Down          | Focus one track down and select it                                                                                                                                                               |
| Toggle Focused Track                  | Return              | Toggle selectedness of the track that has focus                                                                                                                                                  |
| Toggle Focused Track                  | NUMPAD\_ENTER       | Toggle selectedness of the track that has focus                                                                                                                                                  |

#### Extra: Cursor

Extra commands to move the cursor

| Action                  | Shortcut | Description                                                                                                                                                                                                                                                                                                                                                                       |
| ----------------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cursor Left             | Left     | When not playing audio, moves the editing cursor one screen pixel to left. When a Snap To option is chosen, moves the cursor to the preceding unit of time as determined by the current selection format. If the key is held down, the cursor speed depends on the length of the tracks. When playing audio, moves the playback cursor as described at "Cursor Short Jump Left"   |
| Cursor Right            | Right    | When not playing audio, moves the editing cursor one screen pixel to right. When a Snap To option is chosen, moves the cursor to the following unit of time as determined by the current selection format. If the key is held down, the cursor speed depends on the length of the tracks. When playing audio, moves the playback cursor as described at "Cursor Short Jump Right" |
| Cursor Short Jump Left  | ,        | When not playing audio, moves the editing cursor one second left by default. When playing audio, moves the playback cursor one second left by default. The default value can be changed by adjusting the "Short Period" under "Seek Time when playing" in Playback Preferences.                                                                                                   |
| Cursor Short Jump Right | .        | When not playing audio, moves the editing cursor one second right by default. When playing audio, moves the playback cursor one second right by default. The default value can be changed by adjusting the "Short Period" under "Seek Time when playing" in Playback Preferences.                                                                                                 |
| Cursor Long Jump Left   | Shift+,  | When not playing audio, moves the editing cursor 15 seconds left by default. When playing audio, moves the playback cursor 15 seconds left by default. The default value can be changed by adjusting the "Long Period" under "Seek Time when playing" in Playback Preferences.                                                                                                    |
| Cursor Long Jump Right  | Shift+.  | When not playing audio, moves the editing cursor 15 seconds right by default. When playing audio, moves the playback cursor 15 seconds right by default. The default value can be changed by adjusting the "Long Period" under "Seek Time when playing" in Playback Preferences.                                                                                                  |

#### Extra: Track

Extra commands to operate on a track that has focus

| Action                          | Shortcut                  | Description                                                                                                                                                                                                                                                                                                         |
| ------------------------------- | ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Change Pan on Focused Track...  | Shift+P   _Extra_         | Brings up the Pan dialog for the focused track where you can enter a pan value, or use the slider for finer control of panning than is available when using the track pan slider.                                                                                                                                   |
| Pan Left on Focused Track       | Alt+Shift+Left   _Extra_  | Controls the pan slider on the focused track. Each keypress changes the pan value by 10% left.                                                                                                                                                                                                                      |
| Pan Right on Focused Track      | Alt+Shift+Right   _Extra_ | Controls the pan slider on the focused track. Each keypress changes the pan value by 10% right.                                                                                                                                                                                                                     |
| Change Gain on Focused Track... | Shift+G                   | Brings up the Gain dialog for the focused track where you can enter a gain value, or use the slider for finer control of gain than is available when using the track pan slider.                                                                                                                                    |
| Increase Gain on Focused Track  | Alt+Shift+Up   _Extra_    | Controls the gain slider on the focused track. Each keypress increases the gain value by 1 dB.                                                                                                                                                                                                                      |
| Decrease Gain on Focused Track  | Alt+Shift+Down   _Extra_  | Controls the gain slider on the focused track. Each keypress decreases the gain value by 1 dB.                                                                                                                                                                                                                      |
| Open Menu on Focused Track...   | Shift+M                   | Opens the Audio Track Dropdown Menu on the focused audio track or other track type. In the audio track dropdown, use Up, and Down, arrow keys to navigate the menu and Enter, to select a menu item. Use Right, arrow to open the "Set Sample Format" and "Set Rate" choices or Left, arrow to leave those choices. |
| Mute/Unmute Focused Track       | Shift+U                   | Toggles the Mute button on the focused track.                                                                                                                                                                                                                                                                       |
| Solo/Unsolo Focused Track       | Shift+S                   | Toggles the Solo button on the focused track.                                                                                                                                                                                                                                                                       |
| Close Focused Track             | Shift+C   _Extra_         | Close (remove) the focused track only.                                                                                                                                                                                                                                                                              |
| Move Focused Track Up           | _(unassigned)_            | Moves the focused track up by one track and moves the focus there.                                                                                                                                                                                                                                                  |
| Move Focused Track Down         | _(unassigned)_            | Moves the focused track down by one track and moves the focus there.                                                                                                                                                                                                                                                |
| Move Focused Track to Top       | _(unassigned)_            | Moves the focused track up to the top of the track table and moves the focus there.                                                                                                                                                                                                                                 |
| Move Focused Track to Bottom    | _(unassigned)_            | Moves the focused track down to the bottom of the track table and moves the focus there.                                                                                                                                                                                                                            |

#### Extra: Scriptables I

These commands were originally written for scripting Audacity, e.g via a Python script that uses mod-script-pipe. The commands though are also present in the menu, available from macros, and available from within Nyquist using (AUD-DO "command")

| Action                | Shortcut       | Description                                                                                                                                                                                                                                                                |
| --------------------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Select Time...        | _(unassigned)_ | Modifies the temporal selection. Start and End are time. FromEnd allows selection from the end, which is handy to fade in and fade out a track.                                                                                                                            |
| Select Frequencies... | _(unassigned)_ | Modifies what frequencies are selected. High and Low are for spectral selection.                                                                                                                                                                                           |
| Select Tracks...      | _(unassigned)_ | Modifies which tracks are selected. First and Last are track numbers. High and Low are for spectral selection. The Mode parameter allows complex selections, e.g adding or removing tracks from the current selection.                                                     |
| Set Track Status...   | _(unassigned)_ | Sets properties for a track or channel (or both).Name is used to set the name. It is not used in choosing the track.                                                                                                                                                       |
| Set Track Audio...    | _(unassigned)_ | Sets properties for a track or channel (or both). Can set pan, gain, mute and solo.                                                                                                                                                                                        |
| Set Track Visuals...  | _(unassigned)_ | Sets visual properties for a track or channel (or both). SpectralPrefs=1 sets the track to use general preferences, SpectralPrefs=1 per track prefs. When using general preferences, SetPreferences can be used to change a preference and so affect display of the track. |
| Get Preference...     | _(unassigned)_ | Gets a single preference setting.                                                                                                                                                                                                                                          |
| Set Preference...     | _(unassigned)_ | Sets a single preference setting. Some settings such as them changes require a reload (use Reload=1), but this takes time and slows down a script.                                                                                                                         |
| Set Clip...           | _(unassigned)_ | Modify a clip by stating the track or channel a time within it. Color and start position can be set. Try to avoid overlapping clips, as Audacity will allow it, but does not like them.                                                                                    |
| Set Envelope...       | _(unassigned)_ | Modify an envelope by specifying a track or channel and a time within it. You cannot yet delete individual envelope points, but can delete the whole envelope using Delete=1.                                                                                              |
| Set Label...          | _(unassigned)_ | Modifies an existing label. You must give it the label number.                                                                                                                                                                                                             |
| Set Project...        | _(unassigned)_ | Sets the project window to a particular location and size. Can also change the caption - but that is cosmetic and may be overwritten again later by Audacity.                                                                                                              |

#### Extra: Scriptables II

Like Scriptables I, but these ones are less commonly used from the menu.

| Action                       | Shortcut       | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Select...                    | _(unassigned)_ | Selects audio. Start and End are time. First and Last are track numbers. High and Low are for spectral selection. FromEnd allows selection from the end, which is handy to fade in and fade out a track. The Mode parameter allows complex selections, e.g adding or removing tracks from the current selection.                                                                                                                                                                  |
| Set Track...                 | _(unassigned)_ | Sets properties for a track or channel (or both). Setting one channel of a stereo track can lead to interesting results. That's most used when setting relative sizing of the two channels. SpectralPrefs=1 sets the track to use general preferences, SpectralPrefs=1 per track prefs. When using general preferences, SetPreferences can be used to change a preference and so affect display of the track. Name is used to set the name. It is not used in choosing the track. |
| Get Info...                  | _(unassigned)_ | Gets information in a list in one of three formats.                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Message...                   | _(unassigned)_ | Used in testing. Sends the Text string back to you.                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Help...                      | _(unassigned)_ | This is an extract from GetInfo Commands, with just one command.                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Import...                    | _(unassigned)_ | Imports from a file. The automation command uses a text box to get the file name rather than a normal file-open dialog.                                                                                                                                                                                                                                                                                                                                                           |
| Export...                    | _(unassigned)_ | Exports to a named file. This version of export has the full set of export options. However, a current limitation is that the detailed option settings are always stored to and taken from saved preferences. The net effect is that for a given format, the most recently used options for that format will be used.                                                                                                                                                             |
| Open Project...              | _(unassigned)_ | Opens a project.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Save Project...              | _(unassigned)_ | Saves a project.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Move Mouse...                | _(unassigned)_ | Experimental command (called Drag in scripting) that moves the mouse. An Id can be used to move the mouse into a button to get the hover effect. Window names can be used instead. If To is specified, the command does a drag, otherwise just a hover.                                                                                                                                                                                                                           |
| Compare Audio...             | _(unassigned)_ | Compares selected range on two tracks. Reports on the differences and similarities.                                                                                                                                                                                                                                                                                                                                                                                               |
| Screenshot (short format)... | _(unassigned)_ | A version of Tools -> Screenshot with a more minimal GUI. One of the most useful options is All\_Tracks. The \_Plus suffix includes the timeline.                                                                                                                                                                                                                                                                                                                                 |

### Help Menu

The Help Menu lets you find out more about the Audacity application and how to use it. It also includes some diagnostic tools.

| Action               | Shortcut       | Description                                                                                                                  |
| -------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Quick Help...        | _(unassigned)_ | A brief version of help with some of the most essential information.                                                         |
| Manual...            | _(unassigned)_ | Opens the manual in the default browser.                                                                                     |
| Diagnostics          | _(unassigned)_ | A set of diagnostic tools                                                                                                    |
| Check for Updates... | _(unassigned)_ | Checks online to see if this is the latest version of Audacity.                                                              |
| About Audacity...    | _(unassigned)_ | Brings a dialog with information about Audacity, such as who wrote it, what features are enabled and the GNU GPL v2 license. |

#### Help: Diagnostics

A set of diagnostic tools

| Action                   | Shortcut       | Description                                                                                                                                        |
| ------------------------ | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Audio Device Info...     | _(unassigned)_ | Shows technical information about your detected audio device(s).                                                                                   |
| MIDI Device Info...      | _(unassigned)_ | Shows technical information about your detected MIDI device(s).                                                                                    |
| Show Log...              | _(unassigned)_ | Launches the "Audacity Log" window, the log is largely a debugging aid, having timestamps for each entry                                           |
| Generate Support Data... | _(unassigned)_ | Selecting this will generate a Debug report which could be useful in aiding the developers to identify bugs in Audacity or in third-party plugins |
| Check Dependencies...    | _(unassigned)_ | Lists any WAV or AIFF audio files that your project depends on, and allows you to copy these files into the project                                |

### No Menu

These are commands which do not appear in any menu.

| Action          | Shortcut               | Description                     |
| --------------- | ---------------------- | ------------------------------- |
| Previous Window | Alt+Shift+F6   _Extra_ | Moves focus to previous window. |
| Next Window     | Alt+F6   _Extra_       | Moves focus to next window.     |
