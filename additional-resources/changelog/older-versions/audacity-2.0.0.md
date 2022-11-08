# Audacity 2.0.0

**Audacity 2.0.0 was available from 13 March 2012 until 28 June 2012** for Windows, Mac OS X and GNU/Linux. These **Release Notes** describe:

* **Changes** in 2.0.0 as compared with 1.3.14
* **Summary of bug fixes and new features between 1.2.6 and 2.0.0**
* **Issues** with 2.0.0 which were known at time of release.

|   | **Tip:** You can use CTRL + F to search this page for different words to do with the issue you are looking for. Use Command - F on Mac. |
| - | --------------------------------------------------------------------------------------------------------------------------------------- |

### Contents

* [1 Changes between 1.3.14 and 2.0.0](broken-reference)
  * [1.1 Bug fixes](broken-reference)
    * [1.1.1 Interface](broken-reference)
    * [1.1.2 Imports and Exports](broken-reference)
    * [1.1.3 Effects and Analysis](broken-reference)
    * [1.1.4 Other miscellaneous bug fixes](broken-reference)
  * [1.2 Changes and Improvements](broken-reference)
* [2 Summary of bug fixes and new features between 1.2.6 and 2.0.0](broken-reference)
  * [2.1 Bug Fixes](broken-reference)
  * [2.2 New features](broken-reference)
* [3 Known Issues at Release](broken-reference)
  * [3.1 Headline issues](broken-reference)
    * [3.1.1 Large Projects](broken-reference)
    * [3.1.2 Problems reopening, saving or crashing in projects](broken-reference)
  * [3.2 Changes and Improvements](broken-reference)
  * [3.3 Program Launch](broken-reference)
  * [3.4 Installation](broken-reference)
  * [3.5 Imports and Exports](broken-reference)
  * [3.6 Interface](broken-reference)
  * [3.7 Playback and Recording](broken-reference)
  * [3.8 Effects and Analysis](broken-reference)
  * [3.9 Projects](broken-reference)
  * [3.10 Accessibility](broken-reference)
  * [3.11 Chains](broken-reference)
  * [3.12 Clips](broken-reference)
  * [3.13 Compiling](broken-reference)
  * [3.14 Label Tracks](broken-reference)
  * [3.15 Mixer Board](broken-reference)
  * [3.16 Preferences](broken-reference)
  * [3.17 Toolbars](broken-reference)
  * [3.18 Miscellaneous platform-specific issues](broken-reference)
  * [3.19 Bugs requiring more investigation](broken-reference)

|   | <p><strong>Notes for Windows:</strong></p><ul><li>Users upgrading to 2.0.0 from 1.3.6 or earlier must download the <a href="https://manual.audacityteam.org/help/manual/man/faq_installation_and_plug_ins.html#lame">latest version</a> of the LAME MP3 encoder.</li><li>The Windows installer for 2.0.0 will replace 1.2.x installations, but install alongside 1.3.x Beta versions. As 2.0.0 also replaces the 1.3.x series, it is strongly recommended to uninstall previous Beta versions.</li><li><p>You may see the error <strong>Application configuration incorrect</strong> when launching Audacity after installation. This mainly affects some Windows XP or 2000 machines. This can be fixed by downloading and installing the appropriate Microsoft "Redistributable Package" as follows:</p><ul><li><a href="https://www.microsoft.com/en-us/download/details.aspx?id=5582">Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)</a> for 32-bit Windows</li><li><a href="https://www.microsoft.com/en-us/download/details.aspx?id=2092">Microsoft Visual C++ 2008 SP1 Redistributable Package (x64)</a> for 64-bit Windows.</li></ul></li></ul><ul><li>Be sure to get the correct package according to whether you have 32-bit or 64-bit Windows. To check, right-click over and choose . If 64-bit is not mentioned, you have 32-bit.</li></ul> |
| - | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

### Changes between 1.3.14 and 2.0.0

#### Bug fixes

**Interface**

* Fixed playback speed and synchronization problems when dragging clips or tracks between tracks having different sample rates.
* (Windows) Removed a crash risk where shortcuts could be used to record or import in one project while importing or exporting in another.

**Imports and Exports**

* Fixed crashes when changing the sample format of read-directly WAV or AIFF files using the Track Dropdown Menu.
* Fixed a crash importing MP3 files that had duplicate metadata tags (this is a bug in current libsndfile which has been patched in Audacity; MP3 files mislabeled as WAV which have duplicate tags will still crash Audacity on Linux if Audacity has been compiled against an affected version of system libsndfile).
* Fixed an issue where excessively high or corrupted sample values in the audio could corrupt exports from the start of the problem for the rest of the file, and could corrupt the rest of the project.
* (Linux) Fixed Audacity could not be compiled against FFmpeg 0.7.x and 0.8.x.

**Effects and Analysis**

* Fixed crash on launch when using "Ambisonic Decoders (PC)" VST plug-ins and other plug-ins that enable additional floating point exceptions.
* Fixed Plot Spectrum background could be transparent on some machines.
* Bug fixes for Click Track, High Pass, Low Pass and Vocal Remover.
* Chirp, Tone and Silence generators now remember their settings.

**Other miscellaneous bug fixes**

#### Changes and Improvements

* New Interface preference to show the track name in the display (this is off by default).
* Longer default Playback preference for effects preview and preview before cut.
* Restored use of Page Up and Page Down to scroll horizontally.

### Summary of bug fixes and new features between 1.2.6 and 2.0.0

#### Bug Fixes

* Labels now accept lower case "z".
* (Windows Vista/7) Pressing Stop after recording could cause a crash.
* (Mac OS X) Fixed shortcut keys activating when typing in file open or save windows.
* (Mac OS X) Audacity 2.0.0 fully supports Unicode, which fixes an issue where Audacity could not work with folders having non-English characters in their name.
* (Linux) Playing existing tracks while recording in mono could cause recordings to be distorted or low-pitched.

#### New features

These are some of the dozens of [new features in 2.0.0](https://web.audacityteam.org/about/features).

* Many effects significantly improved, especially Equalization, Noise Removal and Normalize. Vocal Remover now included plus GVerb on Windows and Mac. VAMP analysis plug-ins now supported.
* Improved label tracks with Sync-Lock Tracks feature in the Tracks Menu.
* Multiple clips per track. Tracks and selections can be fully manipulated using the keyboard. Many more keyboard shortcuts.
* New Device Toolbar to manage inputs and outputs. Timer Record feature. New Mixer Board view with per-track VU meters.
* Automatic Crash Recovery in the event of abnormal program termination.
* Fast "On-Demand" import of WAV/AIFF files if read directly from source.
* FLAC now fully supported. Added support for optional FFmpeg library for import/export of AC3/M4A/WMA and import of audio from video files.

### Known Issues at Release

#### Headline issues

**Large Projects**

Projects with more than 2^31 samples (just over 13.5 hours at 44100 Hz) will not re-open correctly. Higher sample rates mean proportionally shorter times - so just over 6 hours at 96,000 Hz. We know the cause, and do intend to address this bug. **Workaround:** Before saving or closing the project, export to audio files of appropriate size, or cut and paste sections of audio containing less than 2^31 samples to new Audacity projects and save those.

**Problems reopening, saving or crashing in projects**

The following problems are very rare, but have the potential for losing data. The developers have not yet been able to reproduce these problems so please write to our [feedback address](https://web.audacityteam.org/contact/#feedback) if you encounter any of these symptoms.

* **When attempting to reopen the project normally**:
  * The .aup project file was not saved (or incompletely saved, giving a "line number" error).
  * Audio that was there previously is silenced.
  * **"Missing Audio Data Block File(s)"**, **"Problems Reading Sequence Tags"** or **"Orphan Block File(s)"** errors are reported. If you see these errors, please choose the options to "Treat missing audio as silence" or "Continue without deleting" the orphans.

To avoid any problems, export a WAV or AIFF file from your project before closing it, then you can import the WAV again if the project becomes damaged.

* **When working in the project:**
  * Errors occur when saving the project or when Audacity autosaves, perhaps wrongly suggesting the disk is full or not writable (if this happens, try exporting the audio as WAV).
  * Unwanted renaming or moving of .au files within the project.
  * Multiple or duplicated .aup files or project folders appear within the same project.
  * Unexplained crashes or corrupted audio occurs (note this can happen if the computer is low on memory or disk space).

**Please tell us all the actions you recall both the last time you had the project open and what happened this time, including error messages.** We believe having multiple projects open at once, having projects open in file manager programs or long projects with many tracks are among the possible causes.

|   | <p>As many as possible of the following will help us enormously if you can attach them to your report:</p><ul><li>A copy of the saved .aup project file</li><li>A copy of the "autosave" (temporary project) file. The "autosave" file is stored inside the "AutoSave" folder in Audacity's <a href="https://manual.audacityteam.org/man/Preferences#stored">application data folder</a>.</li><li>For problems that occur when reopening or working in a project, the log file at Help > Show Log....</li></ul> |
| - | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

#### Changes and Improvements

* CleanSpeech Mode (a customized interface with reduced menus and stored effects presets) is no longer officially supported. We may reintroduce a new system of alternative presets and simplified menus in a later Audacity. However any users who had CleanSpeech enabled in 1.3.13 or earlier 1.3 versions will still have it enabled without any way to turn it off in the program. **Workaround:** To turn off CleanSpeech, either turn it off in the Interface Preferences of a previous 1.3 version, or exit Audacity, open [audacity.cfg](https://manual.audacityteam.org/man/Preferences#stored) in a text editor and remove the line "CleanSpeechMode=1". Alternatively, change the value 1 to 0 to turn CleanSpeech off, and set it back to 1 to re-enable CleanSpeech.==

#### Program Launch

* (Linux) If a Bluetooth audio device is in use on a PulseAudio system, Audacity may hang on launch on initial attempts, then after eventual launch Bluetooth will no longer work on the system. **Workarounds:**
  * Remove and reconnect the external Bluetooth adaptor, then launch bluetooth-applet from the command line.
  * To prevent Audacity affecting Bluetooth support, move /usr/share/alsa/bluetooth.conf to another location then reboot, or create a symbolic link from /var/lib/alsa/asound.state to /dev/null and reboot.
* (Windows and OS X) **VST/Audio Units Plug-ins:** On first use and otherwise when requested, Audacity scans for and loads VST effects before the main interface appears. On OS X, Audio Unit effects are always loaded, which can lead to a very slow launch if there are multiple plug-ins. Occasionally, an incompatible or badly written plug-in may lead to a crash or freeze on launch. Known plug-ins affected:
  * **Waves Version 7 Audio Units on OS X**
  * **Native Instruments Guitar Rig v3 and v4 on OS X** (v5 does not have this issue).
* In a future version of Audacity we aim to defer loading of plug-ins until they are requested in the Effect menu. **Workaround:** If VST/AudioUnit effects are not needed in Audacity, force quit Audacity, open "audacity.cfg" inside Audacity's [folder for application data](https://manual.audacityteam.org/man/Preferences#stored) then add or edit the following as required:
*
  * \[AudioUnits]\
    Enable=0\
    \[VST]\
    Enable=0\
    Rescan=0
* If plug-ins were the problem, Audacity should now launch.

#### Installation

* (OS X 10.6 or later) Administrative (and occasionally, root) permissions may be needed on some machines to read the optional LAME and FFmpeg libraries at /usr/local/lib/audacity. In case of difficulty, please download the zip versions "Lame Library v3.98.2 for Audacity on OSX.zip" and "FFmpeg v0.6.2 for Audacity on OSX.zip" from the [download site](http://lame1.buanzo.com.ar/) and extract the files to your own preferred location.

#### Imports and Exports

* **By default, the importer used depends on the import method.** For example, to be able to use [FFmpeg](https://manual.audacityteam.org/man/FAQ:Installation\_and\_Plug-Ins#installffmpeg) to import native Audacity formats like WAV and MP3, you must choose the "FFmpeg-compatible files" filter in File > Open or File > Import > Audio and **always use one of those import methods**. To force FFmpeg to import native Audacity formats when using File > Recent Files or dragging in, add rules for those formats in [Extended Import Preferences](https://manual.audacityteam.org/man/Extended\_Import\_Preferences). To force FFmpeg import irrespective of the filter when using File > Open or File > Import > Audio, uncheck "Attempt to use filter in OpenFile dialog first" in Extended Import Preferences as well as adding the rule for the format.
* (Linux) **AAC exports** produce a zero bytes file if the Audacity project rate is below 22050 Hz. Additionally, the "Quality" slider in AAC export Options has no effect on the exported bitrate. "**Workaround:** Export as WAV and convert to AAC using FFmpeg at the terminal.
* (Linux) Exports using "M4A (AAC) Files" are very slow irrespective of the AAC encoder FFmpeg is configured to use. Workaround: choose (external program) when exporting, entering an appropriate path and command (for example, /usr/bin/ffmpeg -i - "%f") to run FFmpeg using Audacity's command-line encoder.
* (Linux) Files exported using the **FFmpeg native AAC encoder** included with many system versions of FFmpeg are of very poor quality. This is an issue with the library itself. **Workaround:** When compiling FFmpeg, configure with the libfaac encoder thus: --disable-encoder=aac --enable-libfaac. Note that libfaac has an issue not present in the native FFmpeg encoder that saved files are short at the end by about 3000 samples.
* (Linux) Mono AAC files import as stereo if FFmpeg uses the libfaad decoder. This is again an issue with the library itself.
* (OS X and Linux) Entering a backslash "\\" in a file name when saving a project gives a "Could not save project. Path not found." error.
* Album art and lyrics in imported metadata are lost when exporting.
* Exported "Comments" ID3 tags are not recognized by Windows Media Player or Explorer.
* Genre WAV info tag (IGNR) not supported due to limitation in libsndfile.
* Other metadata import/export may not always be consistent. This may depend on the program that created the imported tags and the program used to read the exported tags.
* Audacity may freeze if using the Nero AAC encoder to export via (external program). It is reported this only occurs when using multiple CPU cores. **Workaround:** Export to AAC directly by adding [FFmpeg](https://manual.audacityteam.org/index.php?title=FAQ:Installation\_and\_Plug-Ins#ffdown) to your computer, or set Audacity to use only one CPU core.
* Custom FFmpeg Export: many combinations of formats and codecs are incompatible, as are some combinations of general options and codecs. Some files may be exported as zero kb files.
* Muting specific time-shifted mono tracks when exporting produces audio at wrong point on timeline in exported file if muted tracks are to left of unmuted.
* WAVEX (Microsoft) headers: GSM 6.10 files cannot be exported, and U-Law/A-Law files may not be playable.
* WMA: no metadata is exported if using the older FFmpeg 0.5 library due to a bug in FFmpeg. Metadata is supported in FFmpeg 0.6 but applications other than Audacity may not see all the tags.
* Dither noise is incorrectly applied by default if exporting to most formats where the bit depth is the same as (or higher than) the project. For example, this occurs if exporting to 16-bit WAV, 16-bit FLAC or MP3 from a 16-bit project. OGG is unaffected. **Workarounds:** Set "High Quality" dither to "None" in the Quality Preferences. To fix any files that have already been affected, see [this Forum topic](https://forum.audacityteam.org/viewtopic.php?f=28\&t=38756).
* (OS X) Files imported from iTunes could create invalid characters in the .aup project file in previous Beta versions of Audacity. If you re-open such a project in the current release, an error "reference to invalid character number" may occur. **Workaround:** Save and open a back-up copy of the .aup file in a text editor, turn off word wrap, then in the line indicated in the error message, remove the string of characters that starts with \&# and ends with a semi-colon (;).
* On-Demand WAV/AIFF import not available if using the optional FFmpeg importer (that is, if "FFmpeg-compatible files" set in the import dialog).
* **Export Multiple can export invalid files (despite reporting that export was successful)** if the track is muted or empty (it is intentional that muted tracks are not exported).
* **Exports using Audacity's default "shaped" dither may be corrupted with near-silent audio** flatlined at -1 if the project contains invalid data (such as a click at an excessive level). All further exports in that Audacity session will then be corrupted (even from different, valid data). **Workaround:** Go to the Quality Preferences and change "Dither" under "High-quality Conversion" to "Rectangle" or "Triangle" dither, or to "None".
* (OS X and Linux) When using Export Multiple, asterisks (\*) or question marks (?) in labels are wrongly rejected as illegal characters, and forward slashes (/) cause a false "cannot export audio" warning. **Workaround:** To force use of \* or ? (and / on OS X), export each region with File > Export Selection instead (/ is illegal in a file or folder name on Linux).
* WAV or AIFF exports may either generate a "Libsndfile says" error or be low volume, distorted or unplayable if you import a file having metadata following the data, or there are other issues with the metadata content. **Workaround:** Click File > Open Metadata Editor, press "Clear" to empty the metadata, then export. If you are on Linux and see "Libsndfile says", you could try updating to libsndfile 1.0.25 then recompile Audacity against that.
* When importing a MIDI track, the channel selection buttons to left of the track are not currently available.
* (Linux) After opening a sufficiently long audio file, opening a second file of any size leads to locked GUI/console messages until first file completes play.
* (Linux) Custom FFmpeg Export dialog does not respond to ENTER after clicking in the Formats or Codec selector.
* If WAV/AIFF files are imported into a project using "Read Directly" import but then become unavailable, warnings are given when playing, recording, applying effects and exporting, but not all editing and project save actions are warned.
* (Windows Vista, 7) Audacity will crash if attempting to open WAV files while they are still being rendered by the open source Psycle tracker program.

#### Interface

* Dragging a clip or track up or down with Time Shift Tool does not scroll the project window when tracks exist out of view above or below the scroll. **Workaround:** Choose View > Fit Vertically before drag, or click and hold the piece to be dragged, use up or down arrow on the keyboard to scroll to the target track, then drag and release the clip or track.
* **Selections locked to/only possible to click at whole seconds:** We know that it is easy to check the "Snap To" box in [Selection Toolbar](https://manual.audacityteam.org/man/Selection\_Toolbar) by mistake, which means you can't then select less than a whole second or click other than at a whole second. We will look for a solution that keeps Snap To discoverable but makes it harder to enable by accident.==
* (OS X) Set Rate > Other... in the Track Dropdown Menu does not display the current track rate unless that rate is in the list of set rates.
* (Linux) If Audacity is configured with the option to use libsamplerate, an action involving resampling outside libsamplerate's limits of 1/256 to 256x will cause the progress dialog to hang, or possibly a crash.
* (Linux) Tracks that were selected on project save are deselected when re-opening the project.
* (OS X and Linux) In some locales, Preferences text may be truncated or overlapped, or dropdown boxes truncated.
* (OS X) The "Cmd - Wheel - Rotate" mouse binding does not zoom in unless you uncheck "Zoom using scroll ball while holding Command" at "Mouse and Keyboard" in the Mac System Preferences.
* (Windows) The "Files Missing" warning always restores maximised windows to smaller size.
* (Windows) There may be substantial delays drawing the waveform in some circumstances. These include fitting longer zoomed-in projects to the window, or when zooming in on fitted projects, also after importing files or running effects.
* After changing language in Preferences, a few parts of the interface don't change until Audacity is restarted.
* Audacity has several weaknesses in preserving the context of the audio being worked with:
  * If playback scrolls, pressing Stop leaves the waveform where it stopped and the cursor invisible. Pressing Play to resume then scrolls the waveform to start at the left edge, hiding the previously visible context before the cursor position
  * Current scrolling behaviour makes it too hard to watch the waveform progress, with a single shift of cursor and waveform position when cursor reaches the right edge
  * Zoom to Selection shows none of the surrounding context
* By default, all audio in the project is selected if an action requiring a selection is requested when there is no selection (this behavior can be turned off in the Tracks Preferences). If enabled:
  * You can always apply effects to the whole project in one step, but you can also delete audio in all tracks if you press Delete when there is no selection. That is easy to Undo, but we aim to tweak this behavior and make it more customizable in a future Audacity.
  * A few items in Edit menu are incorrectly grayed out if no track is selected.
* If Sync-Lock Tracks is enabled, there is no indication of the cursor in the Sync-Locked tracks.
* If you save a region with Edit > Save Region then click OK in Preferences, the saved region cannot be restored.
* Mouse Bindings are not currently configurable by the user.
* Snap To state and Selection Format when Snap To is on are global. Therefore changing these in one project will make them show incorrectly in any other projects.
* Snap-To does not move the cursor when first enabled or when the selection format is changed.
* We're aware that some error messages in Audacity are not as helpful as we would like them to be. If you see a cryptic error message from Audacity, try a search (or ask) on [https://forum.audacityteam.org/](https://forum.audacityteam.org/)
* A track or clip whose whole length is selected cannot be dragged up or down into an adjacent track. **Workaround:** Before dragging, click in the waveform to remove the selection, hit ENTER to deselect the track, or hover over an unselected part of the track or clip.
* (Linux) If Audacity is left open but without focus, its CPU use will rise slowly until all available system CPU is consumed. This is a bug in wxGTK 2.8.10 (not previous versions) - see [http://trac.wxwidgets.org/ticket/11315](http://trac.wxwidgets.org/ticket/11315) . This issue can be fixed by updating to wxGTK 2.8.11 or 2.8.12.

For Package Maintainers / Distributors / anyone building against 2.8.10: The upstream change in wxGTK is simple and can easily be patched into wxGTK 2.8.10 if desired: Grab [http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397](http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397), run it through dos2unix (as it seems to come with dos line-endings), and apply it to the wxGTK 2.8.10 sources (with -p3 to get the paths right if you patch from the top level of the tarball distribution).

* (Linux) The OK button has focus on opening effects and other dialogs, instead of fields for changing values. This is a bug in wxGTK. To change values or settings in the dialog it is necessary to deliver a mouse click.
* (Linux) Using a file manager (for example, context menu) or the command line to open further files gives an error. Even if Audacity is closed, only one file can be opened from the file manager. **Workaround:** Use File > Open, or (for audio files) File > New then drag the files in.
* (Windows) It is not yet possible to drag .lnk shortcuts to audio files or projects into Audacity, or to drag them to the Audacity executable's icon. **Workaround:** Use File > Open or File > Import > Audio, or double-click the shortcut to the .aup from Windows Explorer.
* (Linux) If the warning for importing uncompressed audio files appears before importing a WAV or AIFF, the Play/Stop shortcut may not play the file after import. **Workaround:** Click the Play button, or click in the waveform or background before using the Play/Stop shortcut. Alternatively, disable the warning in Warnings Preferences.
* (Windows) The Audacity executable cannot be added to the Explorer "Open with" context menu if you have another version of Audacity on the system which is also called "audacity.exe". **Workaround:** either use the "Open with" dialog to browse to the executable each time, or rename the executable to some other unique name.
* In projects containing an hour or more of total audio, there may be a delay compared to previous versions of Audacity when:
  * Creating a label or label track
  * Dragging selections with the keyboard (**Workaround:** Hold SHIFT then press left or right arrow a few times per second instead of holding the arrow key)
  * Dragging sample points with Draw Tool
  * Using Cut, Copy, Paste, Delete or Silence Audio.
* The delay may be more evident on slower computers. In addition, label text may not be recovered if there is a crash.

#### Playback and Recording

* (Windows Vista, 7) If you change the explicit output and/or input device selected in Device Toolbar or Devices Preferences and then change "Host", the selected devices will change back to those originally selected.
* (Windows XP and earlier) Changing the default playback or recording devices in the Windows Control Panel while Audacity is open may cause all the playback or recording choices in Device Toolbar to produce silence (or to fail with "Error opening sound device"). This problem may also occur when connecting or disconnecting a USB device while Audacity is open. **Workaround:** Click Transport > Rescan Audio Devices then you can play or record.
* (OS X and Linux) Audacity now works very well with [JACK](http://jackaudio.org/), with the following bugs and limitations:
  * Clicking in the input meter to start monitoring will crash Audacity if it has not yet used JACK for playback or recording in that session. **Workaround:** Before recording the first track in a session, click "Pause" then "Record" to enable the recording meter.
  * The best way to connect to available JACK inputs and outputs is directly from Device Toolbar. Use Transport > Rescan Audio Devices when necessary, for example to make new JACK applications ports available to Audacity. See here for details.
  * On Mac, Audacity may freeze if JACK is launched by QjackCtl then Audacity is launched. **Workaround:** Use JackPilot to launch JACK, or launch QJackCtrl after Audacity and JACK are running.
* (OS X and Linux) PortAudio's default latency values which are used when recording with software playthrough are much lower than Audacity's default "Audio to buffer" setting. This may cause playthrough or recording glitches when recording with software playthrough enabled, especially when using pulse on Linux. Workaround for Linux: record from an (hw) device instead if software playthrough is required.
* (OS X) Playback to Bluetooth headsets gives an error. Workaround: Revert to Audacity 1.3.3 (this may only work with stereo headsets), or use [Soundflower](http://www.cycling74.com/products/soundflower) to send the Audacity output to an audio application that works with the headset.
* (Windows) **When a USB device is connected, the Mixer Toolbar input slider for that device (and sometimes for any device) may wrongly appear active** even though it has no control over the device's input level. Sometimes the Audacity slider will apply a software gain to the level (which is dangerous as it will only make the same clipped input quieter rather than stopping the clipping). Sometimes the Audacity slider will not affect the input volume at all. **Workaround:** use the slider in the Windows Control Panel where available, or any gain control on the device, or reduce the output being sent to the device.
* (Windows) Recording at 24-bit quality or higher isn't possible even with devices that support it due to current limitations in PortAudio.
* (Windows) SHIFT + A (Play/Stop and Set Cursor) and custom unmodified shortcuts for playback or recording write a label at the cursor position if the label track has the yellow focus border. Workaround: use up or down arrow to move focus out of the label track before using the shortcut.
* Adding or removing an external audio device while Audacity is open will not be automatically reflected in Device Toolbar or Devices Preferences. **Workaround:** Use Transport > Rescan Audio Devices.
* Calculation of "disk space remains for recording (time)" incorrect when recording in 24 bit quality.
* Play-at-Speed slider: Change of playback speed is no longer automatic after you move the play-at-speed slider. To change speed, move the slider, then click the green button to left of the slider to play at the new speed.
* Timer Record cannot maintain scheduled duration if system clock changes
* The Transport menu lacks the combined "Play/Stop" command, but it has a shortcut which is set to "Space" by default. To change this shortcut, or to add a shortcut for the separate "Play" and "Stop" commands shown in the Transport Menu, go to the Keyboard Preferences.
* (OS X) The "Hardware Playthrough" option in Recording Preferences is currently unsupported on all known Mac hardware. Try the "Software Playthrough" preference instead. If that does not work, the third-party [LineIn](http://www.rogueamoeba.com/freebies/) application also provides software playthrough.
* (Windows) Audacity is incompatible (or not fully compatible) with some professional soundcards or audio devices, and may crash or have limited or faulty functionality. Occasionally, this may be true of some AC97 devices built into the motherboard. **Workaround:** make a different soundcard your default when using Audacity, but please e-mail us the following details to [our feedback address](https://web.audacityteam.org/contact/#feedback):
  * Your version of Windows and Service Pack
  *   Name, model number and driver version number of the soundcard or device.

      **Note:** Multichannel Recording in Audacity is often not possible with professional devices unless you compile Audacity with ASIO support.

#### Effects and Analysis

* Cut Preview only plays the upper track of multiple selected or Sync-Locked tracks.
* LADSPA Multiband EQ may not be visible in Effect menu (occurs on Windows XP), and crashes soon after opening
* Nyquist effects render the space between clips as silence. **Workarounds:** Edit > Clip Boundaries > Detach at Silences (this could reduce the length of clips that have silent fades) or double-click each clip and apply the effect separately to it.
* Nyquist effects add spurious split lines if applied over clip boundaries.
* Nyquist effects: in locales where comma acts as the decimal separator, entering a comma in a text box to left of a slider only produces the whole number before the comma. Workaround: use a dot (period) as the decimal separator
* The following effects remove envelope control points: Change Speed/Pitch/Tempo; Equalization; Noise Removal; Sliding Time Scale/Pitch Shift; any Nyquist effect in the Effect menu. Workaround: Use Tracks > Mix and Render to apply the envelope to the waveform before applying the effect. Reverse retains the control points, but does not move them.
* Truncate Silence does not adjust clip boundaries inside the selection being truncated.
* Truncate Silence doesn't work intuitively if run on multiple tracks. It may be preferable to run it on each track at a time.
* Truncate Silence: The resultant silence after the effect is 1 ms less than that expected, unless the result was expected to be 1 ms.
* Truncate Silence may not truncate a silence that is exactly the same length as the specified "min silence duration".
* (Windows 64-bit) There is no HKEY\_LOCAL\_MACHINE\SOFTWARE\ registry key where Audacity detects VST plug-ins. The HKEY\_CURRENT\_USER key searched is HKEY\_CURRENT\_USER\Software\VST\VSTPluginsPath instead of the expected HKEY\_CURRENT\_USER\SOFTWARE\Wow6432Node\VST .
* **Nyquist effects may crash Audacity if used on extremely long selections** containing more than 2^31 samples (just over 13.5 hours at 44100 Hz). **Workaround** Apply the effect to multiple shorter regions (you can drag the selection back on itself to create a region contiguous with the previous one). Also note that projects containing more than 2^31 samples of total audio cannot be correctly saved.

#### Projects

* **Projects containing more than 2^31 samples (just over 13.5 hours of audio at 44100 Hz) will re-open empty** with the entire data being seen as "orphaned files" (although the data "appears" to be in the correct location expected by the .aup file). **Workaround:** Before saving or closing the project, export to audio files of appropriate size, or cut and paste sections of audio containing less than 2^31 samples to new Audacity projects and save those.
* It is no longer possible to use Save Project or Save Project As to overwrite another pre-existing project, even if that project is not in use. Functionality to overwrite a project not in use will be restored in a future version of Audacity when we are sure it will always be safe.
* (OS X) **Crash closing project window immediately after saving project:** After saving a project, if you close the project window immediately the "Saving project data files" dialog completes, there will be an unexpected "Save changes?" prompt and then a crash when you choose "Yes" or "No". As long as you say "Yes", the project will be saved correctly and can be reopened normally after you restart Audacity. To be sure there is no crash, wait after "Saving project data files" completes for any "Inspecting Project Data" dialog to appear and disappear before closing the project window.
* Projects created by Audacity 1.1.x or earlier are no longer supported. Workaround: Export each project track as WAV using the appropriate legacy version of Audacity, then import the WAV files into current Audacity.
* Projects created by Audacity 1.2.x are partially supported - there is a possibility Audacity could corrupt them. Please make a backup copy of the project's .aup file and \_data folder to a new folder before opening the project in this version of Audacity. Once you save the project in this version, it cannot be opened in 1.2.
* Projects created by previous versions of Audacity may contain audio "block files" longer than the project format allows. Reopening such projects in previous versions might or might not result in deletion of the overlong audio. Audacity has been provisionally fixed so that it can no longer create or delete overlong files, but it cannot read any such files it encounters. If overlong files are found, a "Problems Reading Sequence Tags" message will display .
* If you continue with the offered repair then choose "Continue without deleting" in the Orphan Block File(s) dialog, the overlong files will be retained as "orphans" in the project's \_data folder but will appear as silence in the track(s).
* As long as you choose "Close project immediately" in the Orphan Block File(s) dialog, the project will quit and will not be changed in any way.
  * If you encounter the "Problems Reading Sequence Tags" message, please write to our [feedback address](https://web.audacityteam.org/contact/#feedback) with a copy of the .aup file and the log as found at Help > Show Log.
* **There are currently no message box warnings when projects run out of disk space.** If you run out of disk space when editing or recording, patches of silent or corrupted audio will appear, which will also be present if you save and reopen the project. Be aware that every edit on a track takes as much in disk space as if you were recording that track, due to the ability to undo and redo. You can go to View > History and discard Undo levels to free up space.==

#### Accessibility

* (Linux) If you TAB into "Snap To" in Selection Toolbar, the selection and focus will become trapped. A mouse click elsewhere will be required to free the focus. **Workaround:** Access the required part of Selection Toolbar with TAB or SHIFT + TAB so as to avoid Snap To. Snap To can be set on or off by exiting Audacity, show hidden files and folders then add or edit the line "SnapTo=1" or "SnapTo=0" (without quotes, for on or off respectively) in \~/.audacity-data/audacity.cfg.
* Many, but not all parts of the Audacity interface are accessible on Windows to those who can't use a mouse, and/or use a screen reader. It may be possible to make more of Audacity accessible in the longer term. For details, see [https://manual.audacityteam.org/man/Accessibility](https://manual.audacityteam.org/man/Accessibility) .

There are some accessibility bugs in the parts of Audacity that are accessible.

* Toolbar buttons cannot be operated by pressing either ENTER or Space: ENTER incorrectly moves to the next control and Space starts/stops playback. However the buttons can be operated either by using their shortcut keys, or for users of screen readers by using the Jaws cursor or equivalent. Note: it will be necessary to go to the Keyboard Preferences to set a shortcut for the Play-at-speed button.
* For users of JAWS and Window-eyes. when the Silence Generator dialog opens, the duration control is incorrectly read as 0 seconds. However, if you tab round to the control again, the correct value is read.
* For users of all screen readers, "and" is read out before the access key character in some controls in Preferences.
* Some interface text or markings remain in black when using High Contrast light-on-dark themes, so cannot be read properly
* The yellow track focus border remains "on" even when toolbars or dialogs have focus.

#### Chains

* (Linux) When configuring effect parameters in "Edit Chains", the "Preview" button is not intended to be functional. Pressing it may cause a crash.

#### Clips

* Left-clicking in a stereo track to merge a clip at a split line may cause other clips to move. It is believed this only happens after having used the Track Dropdown Menu to make two mono tracks into stereo. **Workaround:** Select over the split line and Edit > Clip Boundaries > Join.

#### Compiling

* (Windows) Compilation with Visual Studio 2010 is not supported or recommended. See the Wiki page [Developing on Windows](https://wiki.audacityteam.org/wiki/Developing\_On\_Windows#What\_about\_Visual\_Studio\_2010.3F\_\_Or\_64-bit.3F) for information.
* (Windows) LADSPA effects cannot be categorized even when Audacity is compiled with USE\_LIBLRDF defined.

#### Label Tracks

* (Linux) In projects containing several hundred labels or more, Audacity will freeze on 100% CPU when opening the "Audacity Karaoke" window, and will freeze again while that window is open when editing a label or performing other actions on the project. Workaround: Open or place an empty label track above the one you want to use.
* Typing "j", "J", "k" or"K" in a label track may activate the "move cursor" or "select to/from cursor" shortcut instead. **Workaround:** click Edit > Preferences: Keyboard, choose the "Edit" category then change the shortcuts for "Move Cursor to Track Start", "Move Cursor to Track End", "Select Track Start to Cursor" and "Select Cursor to Track End" to something else (or clear them).
* Unless Tracks > Sync-Lock Tracks is on, pasting or inserting audio does not affect labels even if the label track is included in the selection.

#### Mixer Board

* (Linux) Meters may not respond immediately to playback which could cause them to report incorrect peak level or not display clipping.
* Meter range does not reflect a change in the dB range meter preferences until restart

#### Preferences

(Linux) **Extended Import:** Clicking "Move rule up" when there are no rules or filters causes a crash.==

#### Toolbars

* **When using Selection Toolbar in a selection format in less than whole seconds, an inaccurate value for length or cursor position may display when zoomed in.** The displayed value will be the nearest whole second below the true value (for example, 59.000 seconds where the true value is 59.999 seconds). This can occur when clicking on or moving the cursor across a boundary for whole seconds, in which case you can use right arrow to show the correct value. It can also occur when generating a few samples less than a whole second or when expanding or contracting a selection.==

#### Miscellaneous platform-specific issues

* (Mac OS X) If using Audacity when the "Hear" audio plug-in is running (or has been since boot), there will be excessive memory usage which could cause a crash: this appears to be due to buggy memory allocation in "Hear"
* (Mac OS X) Very occasionally, users may find that after running Audacity, other media players don't produce any sound, or crash: to resolve this, set up your sound device in Apple Audio MIDI Setup to work in stereo, 16-bit, with a sample rate of 44100 Hz or 48000 Hz, and set the sample format and rate identically in Audacity. More help at: [http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064](http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064)
* (Linux) If pulseaudio is used as the audio device, repeatedly starting and stopping playback or recording in quick succession (or holding down the Play or Record button) may lead to a freeze. Workaround: bypass pulseaudio by setting the playback and recording device to an ALSA/hw choice in Device Toolbar.

#### Bugs requiring more investigation

* (Windows Vista, 7) When a USB device is connected, the listing of inputs for the built-in sound device in Device Toolbar or Devices Preferences may become corrupt, indicating single inputs as multiple inputs. It may only be possible to record from the built-in input which is currently set as default at "Sound" in the Windows Control Panel, irrespective of the input selected in Audacity. **Workaround:** Try Transport > Rescan Audio Devices, or a computer reboot.
  * Please report make and model number of devices that exhibit the issue, along with description of symptoms and any steps you have noticed that create the issue.
* (Windows) There may be substantial delays drawing the waveform in some circumstances. These include fitting longer zoomed-in projects to the window, or when zooming in on fitted projects, also after importing files or running effects.
* (Linux) If Audacity is compiled with the option to use libsamplerate and the default "Best Sinc Interpolator" for high-quality conversion is used, Tracks > Resample may lead to truncation of the waveform. Workaround: change the project rate to the desired rate, export the track and re-import it.
* (Windows Vista) If you change the input volume in Audacity and then record, the volume is reset to its original level. This appears to occur mostly with a few specific USB devices, and sometimes only on Vista SP1, so it is currently hard for us to fix. **Workaround:** Check if the manufacturer supplies their own drivers for the device and try those. See if upgrading to Vista SP2 or Windows 7 helps.
  * Please report make and model number of devices that exhibit the issue, also the drivers and exact version of Vista and Service Pack in use (for example, Vista 32-bit, SP1)
* (Windows and OS X) Some USB or Firewire recording devices only record silence, or only offer mono recording for a stereo device, or only mono or stereo for a device that previously supported multi-channel recording. **Workaround:** You can try 1.3.10 Beta or earlier (including 1.2.5/6), but these versions may have other bugs or limitations.
  * Please report make and model number of devices that exhibit the issue.
* Importing WAV or AIFF files (possibly those created by Audacity) may cause a freeze or a crash. After this occurs, Audacity may become destabilized and crash again even without importing further files. It is believed to mostly affect Intel Mac machines and to be caused by memory corruption. **Workaround:** Reboot the computer.
* (OS X and Linux) After using Tracks > Mix and Render or File > Save Project, some keyboard shortcuts such as Play/Stop or opening a new project window have no effect.
* (Windows, Linux) Timer Record may carry on recording past the scheduled end time resulting in Audacity having to be force quit.
* (Windows Vista,7) On upgrading to the current Beta from 1.3.12 or earlier, "error opening sound device" occurs when recording from the inbuilt sound device where there was no error in the previous Audacity with the same device configuration and operating system. **Workaround:** Use Transport > Rescan Audio Devices, or go to "Sound" in the Windows Control Panel and click OK. Note that if devices listed in Device Toolbar are disabled in "Sound" then the error is legitimate - you will need to enable those devices.
  * Please report make and model number of sound devices that exhibit the issue, along with driver version number. Please first ensure your sound device drivers are up-to-date and not generic Microsoft drivers - help available here.
