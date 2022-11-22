# Audacity 2.0.6

**Audacity 2.0.6 was available from 29 September 2014 until 28 March 2015.**

**Tip:** You can use CTRL + F to search this page for different words to do with the issue you are looking for. Use Command - F on Mac.

{% hint style="warning" %}
**FFmpeg updated for 2.0.6:**

* Users upgrading to Audacity 2.0.6 who had FFmpeg installed previously will see a notice that FFmpeg needs to be reconfigured. Please visit [https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) for a link to the recommended 2.2.2 updated version of FFmpeg for Windows and Mac OS X, and for information for Linux.
{% endhint %}

{% hint style="warning" %}
**OS X 10.10 Yosemite:** Audacity 2.0.6 will not officially support OS X 10.10 Yosemite when released (in particular, Apple Audio Units may not open in Audacity).
{% endhint %}

{% hint style="warning" %}
**Extra notes for Windows:**

* The Windows installer for 2.0.x versions will replace 1.2.x or any previous 2.0.x installation, but install alongside legacy 1.3.x Beta versions. It is strongly recommended to uninstall previous Beta versions.
* **The language choice in the Windows EXE Audacity installer only selects the language for the installer.** The language Audacity runs in is determined by the "Format" for date and time in the "Region and Language" section of the Windows Control Panel. To change the Audacity language, please see these [instructions](https://manual.audacityteam.org/o/man/faq\_about\_audacity.html#language).
* You may see the error **Application configuration incorrect** when launching Audacity after installation. This mainly affects some Windows XP or 2000 machines. This can be fixed by downloading and installing the appropriate Microsoft "Redistributable Package" as follows:
  * [Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)](https://www.microsoft.com/en-us/download/details.aspx?id=5582) for 32-bit Windows
  * [Microsoft Visual C++ 2008 SP1 Redistributable Package (x64)](https://www.microsoft.com/en-us/download/details.aspx?id=2092) for 64-bit Windows.
* Be sure to get the correct package according to whether you have 32-bit or 64-bit Windows. To check, right-click over and choose . If 64-bit is not mentioned, you have 32-bit.
* On first use of Audacity you need to confirm the new [Install VST Effects](broken-reference) dialog for detected effects before you can start the Audacity program.
* Users upgrading to 2.0.x versions from 1.3.6 or earlier must download the [latest version](https://manual.audacityteam.org/help/manual/man/faq\_installation\_and\_plug\_ins.html#lame) of the LAME MP3 encoder.
{% endhint %}

## Changes since previous version

### Improvements

* **Interface:**
  * Redesigned, searchable Keyboard Preferences with Tree, Name and Key views.
  * Edit Menu: "Cut" and "Delete" are now in the top level of the menu.
  * Transport Menu now includes "Play/Stop" and "Play/Stop and Set Cursor" (use Keyboard Preferences to create shortcuts for "Play" and "Stop").
  * Tracks Menu now includes "Mix and Render to New Track".
  * Track Dropdown Menu now has Move Track To Top and Move Track To Bottom.
  * New right-click menu choice "Delete Label" to remove single labels.
  * "Snap To" now offers choice of snap to the "closest" or "prior" position. Note: the previous "Snap To On" keyboard shortcut will no longer work.
  * "Snap To" settings are now independent for each project.
* **Effects:**
  * Truncate Silence: redesigned with simpler option "Truncate Detected Silence" to shorten to the specified length without compressing silence.
  * VST effects: New "Settings" dialog lets you specify buffer size (for faster processing) and enable buffer delay compensation (to prevent inserted silence). Compensation may cause a crash in a few plug-ins.
  * VST effects now support standard FXP presets.
  * LV2 effects are now supported on all platforms (textual interface only).
* Import or export using FFmpeg now requires FFmpeg 1.2 or later (or libav 0.8 or later). For recommended downloads of recent FFmpeg please visit [https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown).
* New Tamil translation (largely complete).
* (Windows) FLAC exports can now exceed 2 GB in size.
* (OS X) Easier Audacity installation using the DMG: drag the Audacity folder to the /Applications shortcut.
* (Linux) Self-compiled builds of Audacity now search for system LADSPA effects in /usr/lib/ladspa.

### Bug Fixes

* **Interface:**
  * Region Restore did not restore the region after using Preferences.
  * Dragging selections with the keyboard or Selection Toolbar digits was very slow.
  * (Windows) Help > About Audacity crashed when run in Magyar language.
  * (OS X) Some full and reduced Menu Bar items were not translated.
  * (OS X and Linux) Fixed various interface crashes.
* **Effects:**
  * Reverb and Paulstretch were missing from Chains.
  * Analyze > Contrast could report very inaccurate RMS levels.
  * Noise Removal: Attack and decay times were half as long as set.
  * (OS X and Linux) Nyquist effects ran much more slowly than on Windows.
* Click or drag on the Timeline after Loop Play continued to loop.
* Transcription Toolbar did not play slower than 0.1x speed.
* (Linux) Audacity did not build if python 2 was not available.

## Known Issues at Release

### Accessibility

* Many, but not all parts of the Audacity interface are accessible on Windows and Mac to those who can't use a mouse, and/or use a screen reader. It may be possible to make more of Audacity accessible in the longer term. For details, see [https://manual.audacityteam.org/o/man/accessibility.html](https://manual.audacityteam.org/o/man/accessibility.html)

There are some accessibility bugs in the parts of Audacity that are accessible (or behavior may vary according to the specific screen reader).

* Some interface text or markings remain in black when using High Contrast light-on-dark themes, so cannot be read properly.
* Install VST Effects dialog: The list view of plug-ins is a check box list view, and all the plug-ins are checked initially. Unfortunately Jaws and Window-Eyes do not read whether or not a check box is checked, but you can still press SPACE to change this.
* Keyboard Preferences: Window-Eyes doesn't read the key bindings when View by Tree is selected, and may not always read the bindings in other views.
* (OS X) It is not possible to TAB through Keyboard Preferences.
* (OS X) Issues with VoiceOver:
  * (reported on OS X 10.9.x) After exporting, the black accessibility area is trapped in the Tooldock area, so there is no way to read the tracks. **Workaround:** Save as a project, close the project then reopen it. You can then navigate the tracks with VoiceOver.
  * If you use arrow keys to navigate the Timetext controls in Selection Toolbar, VoiceOver stops reading. **Workaround:** Use Control-Option-W
  * When you TAB forwards from "Audio Position" in Selection Toolbar, the "Selection End" or "Selection Length" radio button is read as "Selection Start". When you use COMMAND + F6 or COMMAND + SHIFT + F6 to move directly into "Selection End" from another toolbar, the button is read as "Selection Start".
  * Mixer Toolbar input/output sliders are not read, but just described as "multiple indicators". The "Graphic EQ" and vertical sliders in Equalization \*are\* read.
  * Metadata Editor table not read.
  * Edit Labels dialog not read.
  * In the "Edit Chains" window, only the first command in the "Chain" list is read, and it is only read when first accessed. In the "Select Command" window for inserting a new command in a Chain, commands in the table are not read.
  * "Manage Curves" table in Equalization not read.
* (Linux) Using the Unity shell, most or all keyboard shortcuts are not listed in the Audacity menus. Gnome Fallback is not affected. **Workaround:** You can view shortcuts at or online at [https://manual.audacityteam.org/o/man/keyboard\_shortcut\_reference.html](https://manual.audacityteam.org/o/man/keyboard\_shortcut\_reference.html).
* (Linux) SPACE cannot be used to change context menu items that have a checkbox (such as Selection Format in the context menu of TimeText digits, or Mono/Left/Right and Set Rate and Set Sample Format in the Track Dropdown Menu). Using SPACE in these menus could crash Audacity. **Workaround:** Use ENTER instead of SPACE to select the new choice.
* (Linux) Issues with Orca:
  * Audacity tracks are not read.
  * Not all toolbar controls are read, examples being Timetext controls, Project Rate and controls in Device Toolbar.
  * Not all controls in Preferences are read.

### Chains

* **Chains do not currently support export as AIFF, Other uncompressed files or any formats supported by FFmpeg.**
* **You cannot set export format options or export sample rate in the Chain.** If you need to specify export options other than the current default, import or generate some audio, File > Export, select the audio type, click "Options..." then choose and save the option and cancel the export.

### Compiling

* (Linux) **New libsoxr resampling library:** Default ./configure will enable a new library [libsoxr](https://sourceforge.net/p/soxr/wiki/Home/) for resampling and disable libresample and libsamplerate (the previous resampling libraries). [Cmake](http://www.cmake.org/) is required to build libsoxr. We strongly recommend libsoxr for its combination of high quality and high speed.
  * **Only one resampling library is permitted.** If you enable either libresample or libsamplerate in configure, libsoxr will not be enabled. Any configure of resampling libraries other than libsoxr only will enable one only of libresample, libsamplerate or libsoxr in that order of precedence; however the intermediate configure output may suggest that other libraries will be favored.
  * **To enable libresample**, your configure must include --without-libsoxr as well as --with-libresample.
* (Windows) Compilation with Visual Studio 2010 is not supported or recommended. See the Wiki page [Developing on Windows](https://wiki.audacityteam.org/wiki/Developing\_On\_Windows#What\_about\_Visual\_Studio\_2010.3F\_\_Or\_64-bit.3F) for information.
* (Windows) LADSPA effects cannot be categorized even when Audacity is compiled with USE\_LIBLRDF defined.
* (Linux) Audacity may not always compile against supported versions of libav or FFmpeg. Audacity 2.0.6 supports FFmpeg 1.2 or higher (FFmpeg 2.2.3 is known to work) or libav 0.8 or higher.
  * Dynamic loading (as in default Audacity ./configure) requires building against the FFmpeg project - it will not build against the libav\* headers from the libav project. **Workarounds:** Configure Audacity with --disable-dynamic-loading. If dynamic loading is required, build against FFmpeg instead of libav, or you can build against libav if you remove the "#define IS\_FFMPEG\_PROJECT 1" line in src/FFmpeg.h.
  * Audacity may still build against no-longer-supported FFmpeg versions (such as FFmpeg 0.8 which is system-installed on Debian Wheezy), but configuring with --disable-dynamic-loading will be necessary. FFmpeg 0.8 has at least one known issue in Audacity 2.0.6 or later: mono WMA files export with no audio data. This issue will not be fixed given FFmpeg 0.8 is no longer supported by Audacity 2.0.6.
  * Building against self-compiled FFmpeg 2.2.2 with --disable-dynamic-loading the only argument fails on Ubuntu 13.10 with "undefined reference to 'av\_codec\_is\_encoder'". **Workaround:** Configuring with --disable-dynamic-loading and --with-lib-preference="local" (or at least --with-ffmpeg="local") may build successfully, but may not disable Libraries Preferences. The best solution may be not to disable dynamic loading.

### Effects (VST and Audio Units)

* (Windows and Mac OS X) **When running VST effects in** [**graphical mode**](https://manual.audacityteam.org/o/man/effects\_preferences.html#vst) **the controls of many plug-ins do not visibly respond when loading a preset file from the "Load" button**. The new settings are however loaded internally, will apply when running the effect and will be visible if you reopen the effect after running it. Controls do respond to loading a preset file if you turn off graphical mode.
* (OS X) **When saving presets, the FXP or XML file extension is not automatically offered in the file name, and not added by Audacity if you omit it.** Make sure the extension you add is the same as that shown in the "File Format" dropdown menu, otherwise the preset will not be loadable.
* (OS X) The following plug-ins may cause Audacity to crash if they are used after starting Audacity.
  * **AURoundTripAAC** from "Apple audio mastering tools" (this requires OS X 10.6 or later so may crash on 10.4 or 10.5).
  * [**Blue Cat FreqAnalyst (real time)**](http://www.bluecataudio.com/Products/Product\_FreqAnalyst/)
  * [**Endless Series**](http://www.olilarkin.co.uk/index.php?p=eseries) **AU**
  * **Digitech RP250** (effects pedal)
  * **MNoiseGenerator** AU and others in [MFreeEffectsBundle](http://www.meldaproduction.com/plugins/product.php?id=MFreeEffectsBundle) crash if you preview them
  * **Native Instruments B4** and **Native Instruments Guitar Rig v3 and v4** (v5 does not have this issue)
  * **PredatorFX**
  * **Waves Version 7, 8 and 9 AU**
* **Workaround:** If Audio Units are not needed in Audacity, restart Audacity then open Audacity > Preferences and choose "Effect". Under "Enable Effects", uncheck "Audio Unit", press OK and restart Audacity. Alternatively, look in the Mac Crash Report for the AU plug-in that crashed, move it from \<Your Home>/Library/Audio/Plug-Ins/Components or /Library/Audio/Plug-Ins/Components then restart Audacity. See this page for more help.
* (Windows)
  * DISTRHO Mini Series VST's from [http://distrho.sourceforge.net/plugins.php](http://distrho.sourceforge.net/plugins.php) crash Audacity in graphic mode but will run in text mode (open the Effects Preferences and uncheck "Display VST effects in graphical mode").
  * Waves v5 may cause Audacity to hang if you select it in the "Install VST Effects" dialog then click OK.
* (OS X) **Some VST plug-ins no longer allow text input in the presets dropdown, either by typing or pasting.** Examples are Sound Hack "Delay Trio / Freesound Bundle" and Blue Cat.
* (OS X) **Blue Cat plug-ins:** Opening the dialog to save a preset will hide the plug-in interface and lock out the main Audacity window. **Workaround:** Right-click or CONTROL-click over Audacity's Dock icon, choose "Quit" then choose to save changes or not. Other plug-ins that use JUCE (such as GRM Tools) are also likely to be affected.

### Effects and Analysis

* **LADSPA generate plug-ins may fail to generate into an empty track** or into white space separating audio clips. **Workaround:** Before using the LADSPA generator, generate audio using any of the Audacity Generators above the divider in the Generate Menu, then generate into that audio selection.
* **Nyquist plug-ins:** In locales where comma is the decimal separator, entering a comma in a text input box that has no associated slider will produce an error message, or only result in the whole number before the comma (for example, in Regular Interval Labels). **Workaround:** Use a dot (period) as the decimal separator.
* (Linux) **Sliding Time Scale / Pitch Shift may crash randomly in Audacity built with pre-2.0.2 versions of libsbsms.** This may occur for example in the Ubuntu package of Audacity 2.0.5 on Ubuntu 14.04. **Workaround:** Build Audacity configured --with-sbsms="local", or use the Audacity package in Ubuntu 14.10 which uses libsbsms 2.0.2-1.
* (Windows 64-bit) There is no HKEY\_LOCAL\_MACHINE\SOFTWARE\ registry key where Audacity detects VST plug-ins. The HKEY\_CURRENT\_USER key searched is HKEY\_CURRENT\_USER\Software\VST\VSTPluginsPath instead of the expected HKEY\_CURRENT\_USER\SOFTWARE\Wow6432Node\VST .
* (Windows and Linux) Some LADSPA "Blop" plug-ins ( [http://blop.sourceforge.net/index.html](http://blop.sourceforge.net/index.html) ) are reported to crash in Audacity on Linux Debian. On Windows, the Blop plug-ins included in [http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html](http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html) can also crash, but this can be avoided if you ensure the "blop\_files" folder contains the necessary "\_data.dll" files for the plug-ins and that this folder is present in the Audacity "Plug-Ins" folder.
* (Windows) LADSPA Multiband EQ may not be visible in Effect menu (occurs on Windows XP), and crashes soon after opening
* Cut Preview only plays the upper track of multiple selected or Sync-Locked tracks.
* Nyquist effects render the space between clips as silence. **Workarounds:** Edit > Clip Boundaries > Detach at Silences (this could reduce the length of clips that have silent fades) or double-click each clip and apply the effect separately to it.
* Nyquist effects add spurious split lines if applied over clip boundaries.
* Preview is not supported in Nyquist plug-ins. "Play" or "Preview" features that are included in a few Nyquist plug-ins do not work on Mac OS X and may cause Audacity to freeze or crash on Linux.
* The following effects remove envelope control points: Change Speed/Pitch/Tempo; Equalization; Noise Removal; Sliding Time Scale/Pitch Shift; any Nyquist effect in the Effect menu. Workaround: Use Tracks > Mix and Render to apply the envelope to the waveform before applying the effect.
* The Reverse effect retains the control points, but does not move them.
* Truncate Silence doesn't work intuitively if run on multiple tracks. It may be preferable to run it on each track at a time.
* **Nyquist effects may crash Audacity if used on extremely long selections** containing more than 2^31 samples (just over 13.5 hours at 44100 Hz). **Workaround** Apply the effect to multiple shorter regions (you can drag the selection back on itself to create a region contiguous with the previous one). Also note that projects containing more than 2^31 samples of total audio cannot be correctly saved.

### Envelopes and Clips

* **A clip may now be vertically dragged from inside a selection region, but if that region extends over the edge of the clip into space or into an adjoining clip there may be unexpected behavior**:
  * one channel of a stereo clip may jump sideways
  * a mono clip may fail to horizontal-drag in its new track
  * faint, specious clip lines could occur if the clip is dragged back to its original track.
* **Workaround:** Edit > Undo if necessary then drag from outside the selection region or single-click in the clip to remove the selection.
* **Undo may fail silently after applying an effect or edit** across one or more split lines. **Workaround:** Effect > Repeat the effect from the top of the Effect Menu then undo both applications of the effect, or open View > History... and click on the step above the currently indicated line.
* Left-clicking in a stereo track to merge a clip at a split line may cause other clips to move. It is believed this only happens after having used the Track Dropdown Menu to make two mono tracks into stereo. **Workaround:** Select over the split line and Edit > Clip Boundaries > Join.
* When pasting audio into tracks with envelope points, the envelope points may move in unexpected ways, so causing unwanted amplitude adjustments.

### Imports and Exports

* (Linux) Exports using "M4A (AAC) Files" are very slow irrespective of the AAC encoder FFmpeg is configured to use. Workaround: choose (external program) when exporting, entering an appropriate path and command (for example, /usr/bin/ffmpeg -i - "%f") to run FFmpeg using Audacity's command-line encoder.
* (Linux) Files exported using the **FFmpeg native AAC encoder** included with many system versions of FFmpeg may be of poor quality. This is an issue with the library itself. **Workaround:** When compiling FFmpeg, configure with the libfaac encoder thus: --disable-encoder=aac --enable-libfaac --enable-nonfree. Note that libfaac has an issue not present in the native FFmpeg encoder that saved files are short at the end by about 3000 samples. Alternatively build the VisualOn AAC encoder library and configure FFmpeg with --disable-encoder=aac --disable-encoder=libfaac --enable-libvo-aacenc.
* (Linux) Mono AAC files import as stereo if FFmpeg uses the libfaad decoder. This is again an issue with the library itself.
* Audacity may freeze if using the Nero AAC encoder to export via (external program). It is reported this only occurs when using multiple CPU cores. **Workaround:** Export to AAC directly by adding [FFmpeg](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) to your computer, or set Audacity to use only one CPU core.
* WAVEX (Microsoft) headers: GSM 6.10 files cannot be exported, and U-Law/A-Law files may not be playable.
* **Files containing PCM audio but misnamed as MP3 cause a freeze or crash** if an Extended Import rule is set in Preferences to force import of MP3 files using the MP3 importer.
* **ID3 metadata tags in imported MP3 or MP2 files may display incorrectly if the metadata is UTF-16 encoded.** The tags will seem to have Chinese characters and these incorrect tags will also be present if the files are re-exported. **Workaround:"' Before importing the file into Audacity, open it in a tag editor or an audio application that can edit tags. If the tags are seen correctly, save the file in that application. On Windows you can use** [**Foobar2000**](http://www.foobar2000.org/download) **for this purpose.**
* (Linux) After opening a sufficiently long audio file, opening a second file of any size leads to locked GUI/console messages until first file completes play.
* (Linux) Custom FFmpeg Export dialog does not respond to ENTER after clicking in the Formats or Codec selector.
* (Mac OS X) Dragging audio files to Audacity's icon in the Dock will only import the file for WAV, AIFF, AU, MP2, MP3, OGG, FLAC and M4A. **Workaround:** Rename MP4 files (audio or video) to M4A extension. Alternatively the files may be dragged to the Audacity icon in the folder where you have Audacity installed, dragged into the open Audacity window or imported using the Audacity menus.
* (Mac OS X) Exporting using (external program) will crash using the built-in commands or if the absolute path is entered incorrectly or its accompanying command syntax is incorrect. See [https://manual.audacityteam.org/o/man/exporting\_to\_an\_external\_program.html](https://manual.audacityteam.org/o/man/exporting\_to\_an\_external\_program.html) for how to browse to the correct path and enter the correct syntax.
* (OS X and Linux) When using Export Multiple, asterisks (\*) or question marks (?) in labels are wrongly rejected as illegal characters, and forward slashes (/) cause a false "cannot export audio" warning. **Workaround:** To force use of \* or ? (and / on OS X), export each region with File > Export Selection instead (/ is illegal in a file or folder name on Linux).
* (OS X) Files imported from iTunes could create invalid characters in the .aup project file in previous Beta versions of Audacity. If you re-open such a project in the current release, an error "reference to invalid character number" may occur. **Workaround:** Save and open a back-up copy of the .aup file in a text editor, turn off word wrap, then in the line indicated in the error message, remove the string of characters that starts with \&# and ends with a semi-colon (;). There is more help with fixing this [here](https://manual.audacityteam.org/o/man/faq\_errors.html#nwf).
* (Windows Vista, 7) Audacity will crash if attempting to open WAV files while they are still being rendered by the open source Psycle tracker program.
* If WAV/AIFF files are imported into a project using "Read Directly" import but then become unavailable, warnings are given when playing, recording, applying effects and exporting, but not all editing and project save actions are warned.
* If you import an audio file from a folder other than the one you last exported to, you cannot export over that file without changing the export directory manually.
* Metadata:
  * Album art and lyrics in imported metadata are lost when exporting. **Workaround:** Copy the lyrics (or search for them online) then add them back to the exported file in your favorite media player. Extract the album art using a tag editor such as [IDTE](http://sourceforge.net/projects/idteid3tagedito/) (or use [Windows Media Player](http://windows.microsoft.com/en-us/windows/add-change-media-player-album-art#1TC=windows-7) or iTunes to search online for the art) then add the art back to the exported file using your media player.
  * Tags other than the seven default [Metadata Editor](https://manual.audacityteam.org/o/man/metadata\_editor.html) tags will be rewritten as custom ID3 TXXX tags, which will cause them not to be seen in applications like Windows Media Player and iTunes. Common tag examples include "Album Artist", "BPM" and "Composer".
  * ID3 v2.4 tags in imported MP3 files are not seen and will be removed on export.
  * Audacity writes both ID3 v2.3 (TYER) and v2.4 (TDRC) tags for "Year", but any applications that require the older TYER on its own (without TDRC) will not see "Year" in Audacity-exported files. The id3 command-line application on Linux is one example.
  * Other metadata import/export may not always be consistent. This may depend on the program that created the imported tags and the program used to read the exported tags.
* "Background on-demand loading" for FFmpeg (in the Libraries Preferences) does not currently allow changing the focus of waveform computation by clicking in the track. You can apply an effect to a selection wherever the normal waveform has appeared, but if you do so before the normal waveform has appeared, the audio will be silenced.
* **(Linux):** When exporting to MIDI over an existing file, no overwrite warning is given.
* **By default, the importer used depends on the import method.** For example, to be able to use [FFmpeg](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) to import native Audacity formats like WAV and MP3, you must choose the "FFmpeg-compatible files" filter in File > Open or File > Import > Audio and **always use one of those import methods**. To force FFmpeg to import native Audacity formats when using File > Recent Files or dragging in, add rules for those formats in [Extended Import Preferences](https://manual.audacityteam.org/o/man/extended\_import\_preferences.html). To force FFmpeg import irrespective of the filter when using File > Open or File > Import > Audio, uncheck "Attempt to use filter in OpenFile dialog first" in Extended Import Preferences as well as adding the rule for the format.
* **Export Multiple does not pass metadata common to all tracks to the Metadata Editor windows for each track.** **Workaround:** Export by unchecking "Show Metadata Editor before export step" in Import / Export Preferences, then enter any tags common to all tracks at File > Open Metadata Editor... before exporting. Audacity will then silently add the common and automatically generated Track Title and Track Number tags for each exported file.
* **Import > Raw Data... imports files as noise** if the Quality Preferences are set to 24-bit Default Sample Format. Set this to 16-bit or 32-bit float instead.
* **WAV and AIFF exports will fail without warning** if you import a WAV or AIFF by [reading it directly](https://manual.audacityteam.org/o/man/import\_export\_preferences.html), delete the file and its track then export new audio to the same file name and location as the deleted file. **Workaround:** Set the Preference in the above link to "Make a copy" of uncompressed files when importing.
* (OS X) Audio files containing a backslash (\\) in the name will fail "Could not open file" if you import them using File > Open... , File > Import > Audio... or File > Open Recent. This is a bug in wxWidgets. **Workaround:** Drag the file into the Audacity window instead.
* **Dither (corrective soft noise) is applied by default when it should not be applied** when exporting to most formats having the same or higher bit depth than the project. For example, this occurs if exporting to 16-bit WAV, 16-bit FLAC or MP3 from a 16-bit project. OGG is unaffected. **Workarounds:** Set "High Quality" dither to "None" in the [Quality Preferences](https://manual.audacityteam.org/o/man/quality\_preferences.html). To fix any files that have already been affected, see [this Forum topic](https://forum.audacityteam.org/viewtopic.php?f=28\&t=38756).
* On a fresh installation of Audacity or [initialized Preferences](https://manual.audacityteam.org/help/manual/man/preferences.html#stored), the optional FFmpeg library cannot be used for import of native Audacity formats such as WAV, AIFF or MP3. **Workaround:** Open Preferences and click "OK".
* When importing a MIDI track, the channel selection buttons to left of the track are not currently available.

### Imports and Exports (FFmpeg)

* **In the "Custom FFmpeg Export" dialog, deleting a preset crashes Audacity.** Importing a preset crashes Audacity unless the "ffmpeg\_presets" file in Audacity's folder for application data is empty or does not exist.
* M4A (AAC) exports: The Quality Slider in "Specify AAC Options" has no effect if the FFmpeg library is built with the libvo-aac encoder, as are recommended builds of FFmpeg for Windows and Mac OS X. **Workaround:** Given the alternative AAC encoders for FFmpeg have other problems as described in these notes, you can instead export as WAV and convert to AAC in iTunes on Windows and Mac.
* **AAC exports using "M4A (AAC) Files (FFmpeg)" with project rate below 22050 Hz produce a zero bytes file if the linked to FFmpeg is configured with the default AAC encoder or libfaac.** This will not affect the recommended builds of FFmpeg for Windows and Mac OS X which are built with libvo-aacenc. **Workaround:** You can export AAC below 22050 Hz using default-configured FFmpeg by choosing (external program) export instead.
* AAC: Artist and Year metadata is not exported or imported due to a bug in FFmpeg 2.2.2.
* WMA and APE (Monkeys Audio): "Artist Name" is not seen on importing the file (Audacity bug)
* Custom FFmpeg Export: many combinations of formats and codecs are incompatible, as are some combinations of general options and codecs. Some files may be exported as zero kb files.

### Installation

* (OS X 10.6 or later) Administrative (and occasionally, root) permissions may be needed on some machines to read the optional LAME libraries at /usr/local/lib/audacity. In case of difficulty, please download the zip version "Lame Library v3.98.2 for Audacity on OSX.zip" from the [download site](https://lame.buanzo.org/) and extract the files to your own preferred location.

### Interface

* In projects containing an hour or more of total audio, there may be a delay compared to previous versions of Audacity when:
  * Dragging sample points with Draw Tool
  * Using Cut, Copy, Paste, Delete or Silence Audio.
* The delay may be more evident on slower computers. In addition, label text may not be recovered if there is a crash.
* (Linux) If Audacity is configured with the option to use libsamplerate, an action involving resampling outside libsamplerate's limits of 1/256 to 256x will cause the progress dialog to hang, or possibly a crash.
* (Linux) Using a file manager (for example, context menu) or the command line to open further files gives an error. Even if Audacity is closed, only one file can be opened from the file manager. **Workaround:** Use File > Open, or (for audio files) File > New then drag the files in.
* (OS X and Linux) In some locales, Preferences text may be truncated or overlapped, or dropdown boxes truncated.
* (OS X) Images captured with Help > Screenshot Tools are completely black.
* (OS X) The "Cmd - Wheel - Rotate" mouse binding does not zoom in unless you modify the default System Preferences. \*\* On OS X 10.6 or later, go to Universal Access / Seeing / Zoom / Options and uncheck "Use scroll wheel with modifier keys to zoom".
  * Prior to OS X 10.6, go to "Mouse and Keyboard" and uncheck "Zoom using scroll ball while holding Command".
* (Windows) The "Files Missing" warning always restores maximised windows to smaller size.
* (Windows) There may be substantial delays drawing the waveform in some circumstances. These include fitting longer zoomed-in projects to the window, or when zooming in on fitted projects, also after importing files or running effects.
* After changing language in Preferences, a few parts of the interface don't change until Audacity is restarted.
* Audacity has several weaknesses in preserving the context of the audio being worked with:
  * If playback scrolls, pressing Stop leaves the waveform where it stopped and the cursor invisible. Pressing Play to resume then scrolls the waveform to start at the left edge, hiding the previously visible context before the cursor position. **Workaround:** If you had a selection and a special playback command like Cut Preview or Quick-Play caused the waveform to scroll, use **View > Go to Selection Start** or **View > Go to Selection End** to move the selection back into view.
  * Current scrolling behaviour makes it too hard to watch the waveform progress, with a single shift of cursor and waveform position when cursor reaches the right edge
  * Zoom to Selection shows none of the surrounding context
* By default, all audio in the project is selected if an action requiring a selection is requested when there is no selection (this behavior can be turned off in the Tracks Preferences). If enabled:
  * You can always apply effects to the whole project in one step, but you can also delete audio in all tracks if you press Delete when there is no selection. That is easy to Undo, but we aim to tweak this behavior and make it more customizable in a future Audacity.
  * A few items in Edit menu are incorrectly grayed out if no track is selected.
* If Sync-Lock Tracks is enabled, there is no indication of the cursor in the Sync-Locked tracks.
* Mouse Bindings are not currently configurable by the user.
* Snap-To does not move the cursor when first enabled or when the selection format is changed.
* We're aware that some error messages in Audacity are not as helpful as we would like them to be. If you see a cryptic error message from Audacity, try a search (or ask) on [https://forum.audacityteam.org/](https://forum.audacityteam.org/)
* (Linux) If Audacity is left open but without focus, its CPU use will rise slowly until all available system CPU is consumed. This is a bug in wxGTK 2.8.10 (not previous versions) - see [http://trac.wxwidgets.org/ticket/11315](http://trac.wxwidgets.org/ticket/11315) . This issue can be fixed by updating to wxGTK 2.8.11 or 2.8.12.

For Package Maintainers / Distributors / anyone building against 2.8.10: The upstream change in wxGTK is simple and can easily be patched into wxGTK 2.8.10 if desired: Grab [http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397](http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397), run it through dos2unix (as it seems to come with dos line-endings), and apply it to the wxGTK 2.8.10 sources (with -p3 to get the paths right if you patch from the top level of the tarball distribution).

* (OS X 10.5.8 PPC) **"The How to Get Help" window that appears by default on launch of Audacity cannot be moved or closed.** The Audacity Log window may also be affected. **Workaround:** To stop the Welcome Screen appearing, open Audacity > Preferences: Interface and uncheck "Show How to Get Help". You can also quit Audacity, open Finder, Go > Go to Folder and type \~/Library/Application Support/audacity/ . Open audacity.cfg,select all the text and delete it. Then type the following at the top of the file:

`NewPrefsInitialized=1`\
`[GUI]`\
`ShowSplashScreen=0`

* Save the changes to audacity.cfg then restart Audacity.
* (Windows) It is not yet possible to drag .lnk shortcuts to audio files or projects into Audacity, or to drag them to the Audacity executable's icon. **Workaround:** Use File > Open or File > Import > Audio, or double-click the shortcut to the .aup from Windows Explorer.
* (Windows) The Audacity executable cannot be added to the Explorer "Open with" context menu if you have another version of Audacity on the system which is also called "audacity.exe". **Workaround:** either use the "Open with" dialog to browse to the executable each time, or rename the executable to or some other unique name.
* Dragging a clip or track up or down with Time Shift Tool does not scroll the project window when tracks exist out of view above or below the scroll. **Workaround:** Choose View > Fit Vertically before drag, or click and hold the piece to be dragged, use up or down arrow on the keyboard to scroll to the target track, then drag and release the clip or track.

### Keyboard Shortcuts

* (Windows) SHIFT + A (Play/Stop and Set Cursor) and custom unmodified shortcuts for playback or recording write a label at the cursor position if the label track has the yellow focus border. **Workaround:** use up or down arrow to move focus out of the label track before using the shortcut.

### Label Tracks

* **Typing "j", "J", "k", "K" or other shortcuts in a label track may activate the shortcut** instead of typing in the label. **Workaround:** In many cases, Edit > Undo then Edit > Redo will allow you to type in the label. Otherwise, click Edit > Preferences: Keyboard, choose the correct category, then clear the affected shortcuts or change them to include a CTRL + SHIFT modifier or other modifier than SHIFT.
* (Linux) In projects containing several hundred labels or more, Audacity will freeze on 100% CPU when opening the "Audacity Karaoke" window, and will freeze again while that window is open when editing a label or performing other actions on the project. Workaround: Open or place an empty label track above the one you want to use.
* Unless Tracks > Sync-Lock Tracks is on, pasting or inserting audio does not affect labels even if the label track is included in the selection.
* **Yellow "snap" guidelines do not appear in re-opened projects or imported label tracks** when dragging a selection to a label edge if "Snap To" is checked and a high resolution Selection Format chosen. Formats affected include "hh:mm:ss + CDDA frames (75 fps)", "hh:mm:ss + milliseconds" and "hh:mm:ss + samples".

### Miscellaneous platform-specific issues

*   (Linux) **A playback or recording freeze with pulseaudio may occur** if repeatedly starting and stopping playback or recording in quick succession (or holding down the Play or Record button). **Workarounds:** Try launching Audacity from the terminal with the pulse latency set in an environment variable, for example:

    `env PULSE_LATENCY_MSEC=30 audacity`

    Alternatively, bypass pulseaudio by setting the playback and recording device to an ALSA (hw) choice in Device Toolbar.
* (Mac OS X) If using Audacity when the "Hear" audio plug-in is running (or has been since boot), there will be excessive memory usage which could cause a crash: this appears to be due to buggy memory allocation in "Hear"
* (Mac OS X) Very occasionally, users may find that after running Audacity, other media players don't produce any sound, or crash: to resolve this, set up your sound device in Apple Audio MIDI Setup to work in stereo, 16-bit, with a sample rate of 44100 Hz or 48000 Hz, and set the sample format and rate identically in Audacity. More help at: [http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064](http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064)

### Mixer Board

* **Soloing or unsoloing a track in Mixer Board when in "Standard" Solo button mode** may not immediately update the Solo button or waveform greyed/ungreyed state in the project window. **Workaround:** Click anywhere in (or task switch back to) the project window to refresh it (on Mac, you must click in the waveform or Track Control Panel or wait for the tracks to scroll when playing).
* (Windows and Linux) If Mixer Board is open and more tracks are added so that the horizontal scrollbar must be used, newly added tracks may not be visible or newly deleted tracks may show as empty space. **Workaround:** To see all the tracks without redundant space, close and reopen the project then reopen Mixer Board.
* If you change the meter range in Preferences this is not reflected in the Mixer Board meters until restart.
* (Linux) Meters may not respond immediately to playback which could cause them to report incorrect peak level or not display clipping.

### Playback and Recording

* **Append Record with Transport > Overdub (on/off) enabled may cause periodic playthrough** of previously recorded audio. If you use the Stop button or SPACE to stop the previous recording instead of SHIFT + A (Stop and Set Cursor), this may reduce occurrences of the issue.
* (OS X and Linux) Audacity now works very well with [JACK](http://jackaudio.org/), with the following bugs and limitations:
  * Clicking in the input meter to start monitoring will crash Audacity if it has not yet used JACK for playback or recording in that session. **Workaround:** Before recording the first track in a session, click "Pause" then "Record" to enable the recording meter.
  * The best way to connect to available JACK inputs and outputs is directly from Device Toolbar. Use Transport > Rescan Audio Devices when necessary, for example to make new JACK applications ports available to Audacity. See here for details.
  * On Mac, Audacity may freeze if JACK is launched by QjackCtl then Audacity is launched. **Workaround:** Use JackPilot to launch JACK, or launch QJackCtrl after Audacity and JACK are running.
* (OS X and Linux) PortAudio's default latency values which are used when recording with software playthrough are much lower than Audacity's default "Audio to buffer" setting. This may cause playthrough or recording glitches when recording with software playthrough enabled, especially when using pulse on Linux. Workaround for Linux: record from an (hw) device instead if software playthrough is required.
* (OS X) Playback to Bluetooth headsets gives an error. Workaround: Revert to Audacity 1.3.3 (this may only work with stereo headsets), or use [Soundflower](http://www.cycling74.com/products/soundflower) to send the Audacity output to an audio application that works with the headset.
* (OS X) The "Hardware Playthrough" option in Recording Preferences is currently unsupported on all known Mac hardware. Try the "Software Playthrough" preference instead. If that does not work, the third-party [LineIn](http://www.rogueamoeba.com/freebies/) application also provides software playthrough.
* (Windows) The input slider in [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) is disabled for all or most inputs. Please use the Windows system input slider instead.
* (Windows) Recording from the stereo mix input may not produce an adequate input level unless you turn the system audio output up very high. On Windows Vista and later you can choose the "Windows WASAPI" host and a "loopback" input instead for recording computer playback.
* (Windows) **When a USB device is connected, the Mixer Toolbar input slider for that device (and sometimes for any device) may wrongly appear active** even though it has no control over the device's input level. Sometimes the Audacity slider will apply a software gain to the level (which is dangerous as it will only make the same clipped input quieter rather than stopping the clipping). Sometimes the Audacity slider will not affect the input volume at all. **Workaround:** use the slider in the Windows Control Panel where available, or any gain control on the device, or reduce the output being sent to the device.
* (Windows) **When you install Audacity for the first time or launch it after resetting Preferences** Audacity will choose a specific output and input device rather than the Sound Mapper devices that are the current Windows default devices. **Workaround:** If you lose playback audio or only record silence for this reason, use [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) to change the devices as needed, then Audacity will remember them.
* (Windows) Audacity is incompatible (or not fully compatible) with some professional soundcards or audio devices, and may crash or have limited or faulty functionality. Occasionally, this may be true of some AC97 devices built into the motherboard. **Workaround:** make a different soundcard your default when using Audacity, but please email the following details to our [feedback address](https://web.audacityteam.org/contact/#feedback):
  * Your version of Windows and Service Pack
  *   Name, model number and driver version number of the soundcard or device.

      **Note:** Multichannel Recording in Audacity is often not possible with professional devices unless you compile Audacity with ASIO support.
* (Windows) The "Windows WASAPI" host currently has the following limitations:
  * The only available inputs are "loopback" inputs for [recording computer playback](https://manual.audacityteam.org/o/man/tutorial\_recording\_computer\_playback\_on\_windows.html).
  * The input slider in [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) is disabled.
  * The Audacity output slider may also be grayed out, or if not, will not affect the system output level or the achieved recording level. \*\* If you adjust the system _output_ level and/or the output level of the application playing the audio this will also adjust the recording level.
  * Loopback recordings should only be made with the Audacity [Project Rate](https://manual.audacityteam.org/o/man/selection\_toolbar.html) set to 44100 Hz . Setting other project rates will cause Audacity to resample the input to the project rate any may cause glitches in the recorded audio.
  * "Audio to buffer" in Recording Preferences cannot be used to adjust recording latency.
* Adding or removing an external audio device while Audacity is open will not be automatically reflected in the list in Device Toolbar or Devices Preferences. On Mac, unplugging then replugging an external device will give "error while opening sound device" (on Linux, pressing "Record" a second time will remove the error). **Workaround:** Use Transport > Rescan Audio Devices.
* Calculation of "disk space remains for recording (time)" incorrect when recording in 24 bit quality.
* Play-at-Speed slider: Change of playback speed is no longer automatic after you move the play-at-speed slider. To change speed, move the slider, then click the green button to left of the slider to play at the new speed.
* Timer Record cannot maintain scheduled duration if system clock changes
* (Windows Vista, 7) If you change the explicit output and/or input device selected in Device Toolbar or Devices Preferences and then change "Host", the selected devices will change back to those originally selected.
* (Windows XP and earlier) Changing the default playback or recording devices in the Windows Control Panel while Audacity is open may cause all the playback or recording choices in Device Toolbar to produce silence (or to fail with "Error opening sound device"). This problem may also occur when connecting or disconnecting a USB device while Audacity is open. **Workaround:** Click Transport > Rescan Audio Devices then you can play or record.

### Program Launch

* (Linux) If a Bluetooth audio device is in use on a PulseAudio system, Audacity may hang on launch on initial attempts, then after eventual launch Bluetooth will no longer work on the system. **Workarounds:**
  * Remove and reconnect the external Bluetooth adaptor, then launch bluetooth-applet from the command line.
  * To prevent Audacity affecting Bluetooth support, move /usr/share/alsa/bluetooth.conf to another location then reboot, or create a symbolic link from /var/lib/alsa/asound.state to /dev/null and reboot.
* (Windows and OS X) **"Install VST Effects" dialog:**
  * **The dialog lists more than VST effects:** On first use, Audacity scans for [VST effects](https://manual.audacityteam.org/o/man/effect\_menu.html#VST\_Effects) then (before launching Audacity) presents a dialog where you can choose which VST effects to load into the Audacity Effect menu. Remove the checkmark from any VST effects you do not want to load then click OK to load the checkmarked effects. If you click Cancel the dialog will reappear on next Audacity launch.
  * **VST instruments will appear in the list but are not supported**, so will **not** load even if checkmarked.
  * **On Windows the dialog will appear even if you have no VST effects**, because Audacity detects the two shipped LADPSA plug-ins (hard\_limiter\_1413.dll and sc4\_1882.dll) and also any optional LADSPA DLL plug-ins you may have installed. These LADSPA plug-ins will load whether you enable them in the dialog or not. **Therefore you should just click OK on the dialog if you have no VST effects**.
  * The dialog is on top of other windows, so could hide any prompts that VST effects show when effects are loaded after pressing OK. This would be evident by the "loading progress" arrow in the check boxes coming to a halt and the VST dialog losing focus. To continue loading the effects in this case, press ENTER on your keyboard to OK the hidden prompt, or drag the VST dialog away to reveal the prompt then click OK on the prompt.

### Projects

* **There are currently no message box warnings when projects run out of disk space.** If you run out of disk space when editing or recording, patches of silent or corrupted audio will appear, which will also be present if you save and reopen the project. Be aware that every edit on a track takes as much in disk space as if you were recording that track, due to the ability to undo and redo. You can go to View > History and discard Undo levels to free up space.
* (OS X and Linux) Entering a backslash "\\" in a file name when saving a project gives a "Could not save project. Path not found." error.
* (OS X) **Crash closing project window immediately after saving project:** After saving a project, if you close the project window immediately the "Saving project data files" dialog completes, there will be an unexpected "Save changes?" prompt and then a crash when you choose "Yes" or "No". As long as you say "Yes", the project will be saved correctly and can be reopened normally after you restart Audacity. To be sure there is no crash, wait after "Saving project data files" completes for any "Inspecting Project Data" dialog to appear and disappear before closing the project window.
* It is no longer possible to use Save Project or Save Project As to overwrite another pre-existing project, even if that project is not in use. Functionality to overwrite a project not in use will be restored in a future version of Audacity when we are sure it will always be safe.
* Projects created by Audacity 1.1.x or earlier are no longer supported. Workaround: Export each project track as WAV using the appropriate legacy version of Audacity, then import the WAV files into current Audacity.
* Projects created by Audacity 1.2.x are partially supported - there is a possibility Audacity could corrupt them. Please make a backup copy of the project's .aup file and \_data folder to a new folder before opening the project in this version of Audacity. Once you save the project in this version, it cannot be opened in 1.2.
* Projects created by previous versions of Audacity may contain audio "block files" longer than the project format allows. Reopening such projects in previous versions might or might not result in deletion of the overlong audio. Audacity has been provisionally fixed so that it can no longer create or delete overlong files, but it cannot read any such files it encounters. If overlong files are found, a "Problems Reading Sequence Tags" message will display .
  * If you continue with the offered repair then choose "Continue without deleting" in the Orphan Block File(s) dialog, the overlong files will be retained as "orphans" in the project's \_data folder but will appear as silence in the track(s).
  * As long as you choose "Close project immediately" in the Orphan Block File(s) dialog, the project will quit and will not be changed in any way.
* If you encounter the "Problems Reading Sequence Tags" message, please write to our [feedback address](https://web.audacityteam.org/contact/#feedback) with a copy of the .aup file and the log as found at Help > Show Log.
* Time Track warp points saved in a 2.0.3 or later project will be preserved if opened in previous Audacity versions, but playback and display will be incorrect.

### Time Tracks

* The lower and upper speed limits are not stored in the project, so will be restored to their default values of 90 and 110 respectively when reopening or recovering a project, or if removing a Time Track then undoing removal. Please make a note of the correct values before closing the project or the Time Track.

### Toolbars

* (OS X and Linux) Using keyboard Undo while dragging envelope points or sample points will crash Audacity (this affects Envelope Tool, Draw Tool and Multi-Tool).
* **Meter Toolbar vertical orientation** is not remembered across sessions, and resizing the meters reverts from vertical to horizontal.
* (Windows XP) **Transport and Tools Toolbar buttons all display as Pause buttons.** The buttons may redraw correctly if you hover over them. **Workaround:** You can use [keyboard shortcut alternatives](https://manual.audacityteam.org/o/man/keyboard\_shortcut\_reference.html) for the buttons instead.

## Bugs requiring more investigation

{% hint style="info" %}
* Very occasionally, Audacity projects may reopen with missing block files, orphan block files and/or silenced audio data. There may be unwanted renaming or moving of AU files within the project. We believe having multiple projects open at once or having projects open in file manager programs are among the possible causes. See Bug:137 for more background to this.
* The AUP file may be saved with references to only a few of the AU files, again leading to "orphan block file" warnings. Sometimes the AUP file may not be found after saving and closing the project.
* Sometimes errors occur when saving the project or when Audacity autosaves, perhaps wrongly suggesting the disk is full or not writable (if this happens, try exporting the audio as WAV).

Please write to our [feedback address](https://web.audacityteam.org/contact/#feedback) if you encounter any of the above symptoms. As many as possible of the following will help us enormously if you can attach them to your report:

* A copy of the saved AUP project file
* A copy of the AUTOSAVE (temporary project) file. This file is stored inside the "AutoSave" folder in Audacity's [application data folder](https://manual.audacityteam.org/o/man/preferences.html#stored).
* For problems that occur when reopening or working in a project, the log file at Help > Show Log....
{% endhint %}

* (Linux) If Audacity is compiled with the option to use libsamplerate and the default "Best Sinc Interpolator" for high-quality conversion is used, Tracks > Resample may lead to truncation of the waveform. Workaround: change the project rate to the desired rate, export the track and re-import it.
* (Windows Vista) If you change the input volume in Audacity and then record, the volume is reset to its original level. This appears to occur mostly with a few specific USB devices, and sometimes only on Vista SP1, so it is currently hard for us to fix. **Workaround:** Check if the manufacturer supplies their own drivers for the device and try those. See if upgrading to Vista SP2 or Windows 7 helps.
  * Please report make and model number of devices that exhibit the issue, also the drivers and exact version of Vista and Service Pack in use (for example, Vista 32-bit, SP1)
* (Windows Vista, 7) When a USB device is connected, the listing of inputs for the built-in sound device in Device Toolbar or Devices Preferences may become corrupt, indicating single inputs as multiple inputs. It may only be possible to record from the built-in input which is currently set as default at "Sound" in the Windows Control Panel, irrespective of the input selected in Audacity. **Workaround:** Try Transport > Rescan Audio Devices, or a computer reboot.
  * Please report make and model number of devices that exhibit the issue, along with description of symptoms and any steps you have noticed that create the issue.
* (Windows Vista,7) On upgrading to the current Beta from 1.3.12 or earlier, "error opening sound device" occurs when recording from the inbuilt sound device where there was no error in the previous Audacity with the same device configuration and operating system. **Workaround:** Use Transport > Rescan Audio Devices, or go to "Sound" in the Windows Control Panel and click OK. Note that if devices listed in Device Toolbar are disabled in "Sound" then the error is legitimate - you will need to enable those devices.
  * Please report make and model number of sound devices that exhibit the issue, along with driver version number. Please first ensure your sound device drivers are up-to-date and not generic Microsoft drivers - help available here.
* (Windows and OS X) Some USB or Firewire recording devices only record silence, or only offer mono recording for a stereo device, or only mono or stereo for a device that previously supported multi-channel recording. **Workaround:** You can try 1.3.10 Beta or earlier (including 1.2.5/6), but these versions may have other bugs or limitations.
  * Please report make and model number of devices that exhibit the issue, and your operating system details (for example, Windows 7 Service Pack 1).
* (Windows) There may be substantial delays drawing the waveform in longer projects. These include:
  * opening saved projects that were fitted to the window
  * fitting an already zoomed in project to the window or zooming in on a fitted project
  * progress dialog remains white for a long time after the progress bars complete for a file import or effect.
