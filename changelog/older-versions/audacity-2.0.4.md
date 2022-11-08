# Audacity 2.0.4

**Audacity 2.0.4 was available from 06 September 2013 to 20 October 2013. These Release Notes describe:**

* Changes in this version relative to previous.
* The most significant issues with this version known at time of release.

**Tip:** You can use CTRL + F to search this page for different words to do with the issue you are looking for. Use Command - F on Mac.

### Contents

* [1 Changes Since Previous Version](broken-reference)
  * [1.1 Bug fixes](broken-reference)
  * [1.2 Changes and Improvements](broken-reference)
* [2 Known Issues at Release](broken-reference)
  * [2.1 Headline issues](broken-reference)
    * [2.1.1 Large Projects](broken-reference)
    * [2.1.2 Problems reopening, saving or crashing in projects](broken-reference)
  * [2.2 Preferred behaviours - please vote](broken-reference)
  * [2.3 Accessibility](broken-reference)
  * [2.4 Chains](broken-reference)
  * [2.5 Compiling](broken-reference)
  * [2.6 Effects and Analysis](broken-reference)
  * [2.7 Envelopes and Clips](broken-reference)
  * [2.8 Imports and Exports](broken-reference)
  * [2.9 Installation](broken-reference)
  * [2.10 Interface](broken-reference)
  * [2.11 Keyboard Shortcuts](broken-reference)
  * [2.12 Label Tracks](broken-reference)
  * [2.13 Miscellaneous platform-specific issues](broken-reference)
  * [2.14 Mixer Board](broken-reference)
  * [2.15 Playback and Recording](broken-reference)
  * [2.16 Preferences](broken-reference)
  * [2.17 Program Launch](broken-reference)
  * [2.18 Projects](broken-reference)
  * [2.19 Time Tracks](broken-reference)
  * [2.20 Toolbars](broken-reference)
  * [2.21 Undo, Redo and History](broken-reference)
* [3 Bugs requiring more investigation](broken-reference)

|   | <p><strong>Notes for Windows:</strong></p><ul><li>Users upgrading to 2.0.x versions from 1.3.6 or earlier must download the <a href="https://manual.audacityteam.org/help/manual/man/faq_installation_and_plug_ins.html#lame">latest version</a> of the LAME MP3 encoder.</li><li>The Windows installer for 2.0.x versions will replace 1.2.x or any previous 2.0.x installation, but install alongside legacy 1.3.x Beta versions. It is strongly recommended to uninstall previous Beta versions.</li><li>On first use of Audacity you need to confirm the new <a href="broken-reference">Install VST Effects</a> dialog for detected effects before you can start the Audacity program.</li><li><p>You may see the error <strong>Application configuration incorrect</strong> when launching Audacity after installation. This mainly affects some Windows XP or 2000 machines. This can be fixed by downloading and installing the appropriate Microsoft "Redistributable Package" as follows:</p><ul><li><a href="https://www.microsoft.com/en-us/download/details.aspx?id=5582">Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)</a> for 32-bit Windows</li><li><a href="https://www.microsoft.com/en-us/download/details.aspx?id=2092">Microsoft Visual C++ 2008 SP1 Redistributable Package (x64)</a> for 64-bit Windows.</li></ul></li></ul><ul><li>Be sure to get the correct package according to whether you have 32-bit or 64-bit Windows. To check, right-click over and choose . If 64-bit is not mentioned, you have 32-bit.</li></ul> |
| - | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

### Changes Since Previous Version

#### Bug fixes

* Keyboard Preferences: Shortcuts for Generators, Effects and Analyzers were not exported. All imported shortcut changes were discarded.
* Equalization curves were corrupted in Graphic EQ mode after switching to/from Draw Curves or after running the effect then reopening it.
* Change Pitch displayed corrupted values when reducing pitch or editing "from" Frequency. Detection was very inaccurate at high sample rates.
* Bass Boost no longer clips if the track contains 32-bit audio.
* Auto Duck was excessively slow on older machines.
* (Windows) Exported MP3 comments tags were not seen by Windows programs.
* (Windows and OS X) Audacity crashed if you used system quit before file import was complete.
* (Linux) Equalization crashed Audacity if the XML file was corrupted.
* (Linux) When configuring effect parameters in "Edit Chains", "Preview" (not intended to be functional) caused a crash.
* (Linux) LICENSE.txt and README.txt were wrongly installed in /usr/local/share/doc instead of /usr/local/share/doc/audacity/ .
* Accessibility: ENTER did not toggle selectedness of a label track unless a label was selected.
* Numerous other interface fixes.

#### Changes and Improvements

* New "Reverb" effect to replace GVerb, based on the original "Freeverb".
* New View > Go to Selection Start and Go to Selection End commands.
* New Tracks > Align End to End command to append existing tracks to each other.
* Change Tempo now supports fractional BPM.
* Plot Spectrum now supports FFT sizes up to 65536.
* WAV files now support "Album Title", "Track Number" and "Genre" LIST INFO tags and also support ID3 tags.
* Handle a bug in older iPods or some OS X applications that cause them to refuse AIFF files whose metadata contains an uneven number of characters,
* (Windows) Added support for "Windows WDM-KS" host which can provide very low latencies if you reduce "Audio to Buffer" in Recording Preferences.
* (Windows Vista and later) You can now record computer playback by choosing the new "Windows WASAPI" host in Device Toolbar then a "loopback" input.
* (Windows and Mac OS X): VST scanning dialog now replaced with a dialog for choosing which VST effects to load.
* (Linux) CTRL + ALT can now be used to smooth samples in Draw Tool.
* Modules Preferences replaced with a dialog on launch of Audacity enabling you to choose which modules to load.

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

|   | <p>As many as possible of the following will help us enormously if you can attach them to your report:</p><ul><li>A copy of the saved .aup project file</li><li>A copy of the "autosave" (temporary project) file. The "autosave" file is stored inside the "AutoSave" folder in Audacity's <a href="https://manual.audacityteam.org/o/man/preferences.html#stored">application data folder</a>.</li><li>For problems that occur when reopening or working in a project, the log file at Help > Show Log....</li></ul> |
| - | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

#### Preferred behaviours - please vote

* **Snap-To in Selection Toolbar causes clicks to snap to the nearest unit.** So, clicking in-between a CDDA or other frame may jump to the next or previous frame, depending where you click. We know some users of frames require to always snap to the previous frame. _We'd like to hear your views on which behaviour is best. Please let us know at our_ [_feedback address_](https://web.audacityteam.org/contact/#feedback)_._

#### Accessibility

* (Linux) If you TAB into "Snap To" in Selection Toolbar, the selection and focus will become trapped. A mouse click elsewhere will be required to free the focus. **Workaround:** Access the required part of Selection Toolbar with TAB or SHIFT + TAB so as to avoid Snap To. Snap To can be set on or off by exiting Audacity, show hidden files and folders then add or edit the line "SnapTo=1" or "SnapTo=0" (without quotes, for on or off respectively) in \~/.audacity-data/audacity.cfg.
* Many, but not all parts of the Audacity interface are accessible on Windows and Mac to those who can't use a mouse, and/or use a screen reader. It may be possible to make more of Audacity accessible in the longer term. For details, see [https://manual.audacityteam.org/o/man/accessibility.html](https://manual.audacityteam.org/o/man/accessibility.html)
* There are some accessibility bugs in the parts of Audacity that are accessible:
  * In projects having more than one track, using ENTER to change which track is selected, applying an edit then undoing it will change the track focus or selectedness. **Workaround:** Change track selectedness with the mouse if possible, or modify the selected range with keyboard or mouse _after_ changing the track selectedness.
  * Some interface text or markings remain in black when using High Contrast light-on-dark themes, so cannot be read properly
  * Install VST Effects dialog. To install all the plug-ins, TAB to the OK button and press it. The list view of plug-ins is a check box list view, and all the plug-ins are checked initially, despite what screen readers say. Pressing SPACEBAR changes whether or not an item is checked, even though screen readers do not read this information. In addition, the focused item is not selected, which is not standard practice in a check box list view, and screen readers correctly read this information. These accessibility problems are due to the Audacity software, and not screen readers.
  * (OS X) Issues with VoiceOver:
    * If you use arrow keys to navigate the Timetext controls in Selection Toolbar, VoiceOver stops reading. **Workaround:** Use Control-Option-W
      * When you TAB forwards from "Audio Position" in Selection Toolbar, the "Selection End" or "Selection Length" radio button is read as "Selection Start". When you use COMMAND + F6 or COMMAND + SHIFT + F6 to move directly into "Selection End" from another toolbar, the button is read as "Selection Start".
    * Mixer Toolbar input/output sliders are not read, just described as "multiple indicators". The "Graphic EQ" sliders in Equalization \*are\* read.
    * Metadata Editor table not read.
    * Edit Labels dialog not read.

#### Chains

* **Chains do not currently support export as AIFF, Other uncompressed files or any formats supported by FFmpeg.**
* **You cannot set export format options or export sample rate in the Chain.** If you need to specify export options other than the current default, import or generate some audio, File > Export, select the audio type, click "Options..." then choose and save the option and cancel the export.

#### Compiling

* (Linux) **New libsoxr resampling library:** Default ./configure will enable a new library [libsoxr](https://sourceforge.net/p/soxr/wiki/Home/) for resampling and disable libresample and libsamplerate (the previous resampling libraries). [Cmake](http://www.cmake.org/) is required to build libsoxr. We strongly recommend libsoxr for its combination of high quality and high speed.
  * **Only one resampling library is permitted.** If you enable either libresample or libsamplerate in configure, libsoxr will not be enabled. Any configure of resampling libraries other than libsoxr only will enable one only of libresample, libsamplerate or libsoxr in that order of precedence; however the intermediate configure output may suggest that other libraries will be favored.
  * **To enable libresample**, your configure must include --without-libsoxr as well as --with-libresample.
* (Windows) Compilation with Visual Studio 2010 is not supported or recommended. See the Wiki page [Developing on Windows](https://wiki.audacityteam.org/wiki/Developing\_On\_Windows#What\_about\_Visual\_Studio\_2010.3F\_\_Or\_64-bit.3F) for information.
* (Windows) LADSPA effects cannot be categorized even when Audacity is compiled with USE\_LIBLRDF defined.
* (Linux) Audacity does not currently compile against very recent FFmpeg (0.10 or later are known to be affected)

#### Effects and Analysis

* **LADSPA generate plug-ins may fail to generate into an empty track** or into white space separating audio clips. **Workaround:** Before using the LADSPA generator, generate audio using any of the Audacity Generators above the divider in the Generate Menu, then generate into that audio selection.
* **Truncate Silence may not truncate a silence that appears from Selection Toolbar to be the same as the specified "min silence duration".** Sometimes the length displayed in Selection Toolbar is not exactly the same as the actual selection, due to the sampling of the audio. It won't be off by more than a sample though, which is a very tiny error.
* (Windows 64-bit) There is no HKEY\_LOCAL\_MACHINE\SOFTWARE\ registry key where Audacity detects VST plug-ins. The HKEY\_CURRENT\_USER key searched is HKEY\_CURRENT\_USER\Software\VST\VSTPluginsPath instead of the expected HKEY\_CURRENT\_USER\SOFTWARE\Wow6432Node\VST .
* (Windows and Linux) Some LADSPA "Blop" plug-ins ( [http://blop.sourceforge.net/index.html](http://blop.sourceforge.net/index.html) ) are reported to crash in Audacity on Linux Debian. On Windows, the Blop plug-ins included in [http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html](http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html) can also crash, but this can be avoided if you ensure the "blop\_files" folder contains the necessary "\_data.dll" files for the plug-ins and that this folder is present in the Audacity "Plug-Ins" folder.
* (Windows and Linux, where system locale uses comma as decimal separator) [**Built-in tone and noise generators**](https://manual.audacityteam.org/o/man/generate\_menu.html#generators) **may produce silence** if used on audio that has had a [Nyquist](https://manual.audacityteam.org/o/man/effect\_menu.html#Nyquist\_Effects) effect applied to it. **Workaround:** Run Audacity in English [language](https://manual.audacityteam.org/o/man/faq\_about\_audacity.html#language), or change the system locale to English and run Audacity in the local language.
* (Windows) LADSPA Multiband EQ may not be visible in Effect menu (occurs on Windows XP), and crashes soon after opening
* Cut Preview only plays the upper track of multiple selected or Sync-Locked tracks.
* Nyquist effects render the space between clips as silence. **Workarounds:** Edit > Clip Boundaries > Detach at Silences (this could reduce the length of clips that have silent fades) or double-click each clip and apply the effect separately to it.
* Nyquist effects add spurious split lines if applied over clip boundaries.
* Nyquist effects: in locales where comma acts as the decimal separator, entering a comma in a text box to left of a slider only produces the whole number before the comma. Workaround: use a dot (period) as the decimal separator
* Preview is not supported in Nyquist plug-ins. "Play" or "Preview" features that are included in a few Nyquist plug-ins do not work on Mac OS X and may cause Audacity to freeze or crash on Linux.
* The following effects remove envelope control points: Change Speed/Pitch/Tempo; Equalization; Noise Removal; Sliding Time Scale/Pitch Shift; any Nyquist effect in the Effect menu. Workaround: Use Tracks > Mix and Render to apply the envelope to the waveform before applying the effect. Reverse retains the control points, but does not move them.
* Truncate Silence does not adjust clip boundaries inside the selection being truncated.
* Truncate Silence doesn't work intuitively if run on multiple tracks. It may be preferable to run it on each track at a time.
* **Nyquist effects may crash Audacity if used on extremely long selections** containing more than 2^31 samples (just over 13.5 hours at 44100 Hz). **Workaround** Apply the effect to multiple shorter regions (you can drag the selection back on itself to create a region contiguous with the previous one). Also note that projects containing more than 2^31 samples of total audio cannot be correctly saved.

#### Envelopes and Clips

* **A clip may now be vertically dragged from inside a selection region, but if that region extends over the edge of the clip into space or into an adjoining clip there may be unexpected behavior**:
  * one channel of a stereo clip may jump sideways
  * a mono clip may fail to horizontal-drag in its new track
  * faint, specious clip lines could occur if the clip is dragged back to its original track.
* **Workaround:** Edit > Undo if necessary then drag from outside the selection region or single-click in the clip to remove the selection.
* Left-clicking in a stereo track to merge a clip at a split line may cause other clips to move. It is believed this only happens after having used the Track Dropdown Menu to make two mono tracks into stereo. **Workaround:** Select over the split line and Edit > Clip Boundaries > Join.
* When pasting audio into tracks with envelope points, the envelope points may move in unexpected ways, so causing unwanted amplitude adjustments.

#### Imports and Exports

* (OS X) Audacity can crash when importing files that have Unicode names or folder paths, or when manipulating any files or folders in Finder that have Unicode names or paths then importing any audio files into Audacity. **Workaround:** Not working with Unicode names or folder paths is the best solution. Otherwise, reboot the computer until the problem stops happening. There is some evidence that importing into a project window that already contains audio _may_ reduce the tendency to crash.
* **Dither (corrective soft noise) is applied by default when it should not be applied** when exporting to most formats having the same or higher bit depth than the project. For example, this occurs if exporting to 16-bit WAV, 16-bit FLAC or MP3 from a 16-bit project. OGG is unaffected. **Workarounds:** Set "High Quality" dither to "None" in the [Quality Preferences](https://manual.audacityteam.org/o/man/quality\_preferences.html). To fix any files that have already been affected, see [this Forum topic](https://forum.audacityteam.org/viewtopic.php?f=28\&t=38756).
* **"Shaped dither" (the default type ) is more audible than intended when exporting a stereo file** unless exporting to FLAC (or to OGG which does not apply dither). **Workaround:** Dither is recommended if you export from a 32-bit or 24-bit project to a 16-bit file. You can set dither to "None" in the "High-quality Conversion" section of .[Quality Preferences](https://manual.audacityteam.org/o/man/quality\_preferences.html), but it is recommended instead to choose "Triangle" dither which will be less audible than the current "Shaped" dither.
* **Exports using Audacity's default "shaped" dither may be corrupted with near-silent audio** flatlined at -1 if the project contains invalid data (such as a click at an excessive level). All further exports in that Audacity session will then be corrupted (even from different, valid data). **Workaround:** Go to the Quality Preferences and change "Dither" under "High-quality Conversion" to "Rectangle" or "Triangle" dither, or to "None".
* **Files containing PCM audio but misnamed as MP3 cause a freeze or crash** if an Extended Import rule is set in Preferences to force import of MP3 files using the MP3 importer.
* **ID3 metadata tags in imported MP3 or MP2 files may display incorrectly if the metadata is UTF-16 encoded.** The tags will seem to have Chinese characters and these incorrect tags will also be present if the files are re-exported. **Workaround:** Before importing the file into Audacity, open it in a tag editor or an audio application that can edit tags. If the tags are seen correctly, save the file in that application. On Windows you can use [Foobar2000](http://www.foobar2000.org/download) for this purpose.
* Audacity may freeze if using the Nero AAC encoder to export via (external program). It is reported this only occurs when using multiple CPU cores. **Workaround:** Export to AAC directly by adding [FFmpeg](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) to your computer, or set Audacity to use only one CPU core.
* Custom FFmpeg Export: many combinations of formats and codecs are incompatible, as are some combinations of general options and codecs. Some files may be exported as zero kb files.
* WAVEX (Microsoft) headers: GSM 6.10 files cannot be exported, and U-Law/A-Law files may not be playable.
* WMA: no metadata is exported if using the older FFmpeg 0.5 library due to a bug in FFmpeg. Metadata is supported in FFmpeg 0.6 but applications other than Audacity may not see all the tags.
* (Linux) After opening a sufficiently long audio file, opening a second file of any size leads to locked GUI/console messages until first file completes play.
* (Linux) Custom FFmpeg Export dialog does not respond to ENTER after clicking in the Formats or Codec selector.
* (Linux) Exports using "M4A (AAC) Files" are very slow irrespective of the AAC encoder FFmpeg is configured to use. Workaround: choose (external program) when exporting, entering an appropriate path and command (for example, /usr/bin/ffmpeg -i - "%f") to run FFmpeg using Audacity's command-line encoder.
* (Linux) Files exported using the **FFmpeg native AAC encoder** included with many system versions of FFmpeg are of very poor quality. This is an issue with the library itself. **Workaround:** When compiling FFmpeg, configure with the libfaac encoder thus: --disable-encoder=aac --enable-libfaac. Note that libfaac has an issue not present in the native FFmpeg encoder that saved files are short at the end by about 3000 samples.
* (Linux) Mono AAC files import as stereo if FFmpeg uses the libfaad decoder. This is again an issue with the library itself.
* (OS X and Linux) Entering a backslash "\\" in a file name when saving a project gives a "Could not save project. Path not found." error.
* (OS X and Linux) When using Export Multiple, asterisks (\*) or question marks (?) in labels are wrongly rejected as illegal characters, and forward slashes (/) cause a false "cannot export audio" warning. **Workaround:** To force use of \* or ? (and / on OS X), export each region with File > Export Selection instead (/ is illegal in a file or folder name on Linux).
* (OS X) Files imported from iTunes could create invalid characters in the .aup project file in previous Beta versions of Audacity. If you re-open such a project in the current release, an error "reference to invalid character number" may occur. **Workaround:** Save and open a back-up copy of the .aup file in a text editor, turn off word wrap, then in the line indicated in the error message, remove the string of characters that starts with \&# and ends with a semi-colon (;). There is more help with fixing this [here](https://manual.audacityteam.org/o/man/faq\_errors.html#nwf).
* (Windows Vista, 7) Audacity will crash if attempting to open WAV files while they are still being rendered by the open source Psycle tracker program.
* If WAV/AIFF files are imported into a project using "Read Directly" import but then become unavailable, warnings are given when playing, recording, applying effects and exporting, but not all editing and project save actions are warned.
* If you import an audio file from a folder other than the one you last exported to, you cannot export over that file without changing the export directory manually.
* Metadata:
  * Album art and lyrics in imported metadata are lost when exporting.
  * Tags other than the seven default [Metadata Editor](https://manual.audacityteam.org/o/man/metadata\_editor.html) tags will be rewritten as custom TXXX tags, which will cause them not to be seen in applications like Windows Media Player and iTunes. Common tag examples include "Album Artist", "BPM" and "Composer".
  * ID3 v2.4 tags in imported MP3 files are not seen and will be removed on export.
  * Audacity writes both ID3 v2.3 (TYER) and v2.4 (TDRC) tags for "Year", but any applications that require the older TYER on its own (without TDRC) will not see "Year" in Audacity-exported files. The id3 command-line application on Linux is one example.
  * Other metadata import/export may not always be consistent. This may depend on the program that created the imported tags and the program used to read the exported tags.
* "Background on-demand loading" for FFmpeg (in the Libraries Preferences) does not currently allow changing the focus of waveform computation by clicking in the track. You can apply an effect to a selection wherever the normal waveform has appeared, but if you do so before the normal waveform has appeared, the audio will be silenced.
* **By default, the importer used depends on the import method.** For example, to be able to use [FFmpeg](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) to import native Audacity formats like WAV and MP3, you must choose the "FFmpeg-compatible files" filter in File > Open or File > Import > Audio and **always use one of those import methods**. To force FFmpeg to import native Audacity formats when using File > Recent Files or dragging in, add rules for those formats in [Extended Import Preferences](https://manual.audacityteam.org/o/man/extended\_import\_preferences.html). To force FFmpeg import irrespective of the filter when using File > Open or File > Import > Audio, uncheck "Attempt to use filter in OpenFile dialog first" in Extended Import Preferences as well as adding the rule for the format.
* **Export Multiple does not pass metadata common to all tracks to the Metadata Editor windows for each track.** **Workaround:** Export by unchecking "Show Metadata Editor before export step" in Import / Export Preferences, then enter any tags common to all tracks at File > Open Metadata Editor... before exporting. Audacity will then silently add the common and automatically generated Track Title and Track Number tags for each exported file.
* **Import > Raw Data... imports files as noise** if the Quality Preferences are set to 24-bit.
* **WAV and AIFF exports will fail without warning** if you import a WAV or AIFF by [reading it directly](https://manual.audacityteam.org/o/man/import\_export\_preferences.html), delete the file and its track then export new audio to the same file name and location as the deleted file. **Workaround:** Set the Preference in the above link to "Make a copy" of uncompressed files when importing.
* (Linux) **AAC exports** produce a zero bytes file if the Audacity project rate is below 22050 Hz. Additionally, the "Quality" slider in AAC export Options has no effect on the exported bitrate. "**Workaround:** Export as WAV and convert to AAC using FFmpeg at the terminal.
* On a fresh installation of Audacity or [initialized Preferences](https://manual.audacityteam.org/help/manual/man/preferences.html#stored), the optional FFmpeg library cannot be used for import of native Audacity formats such as WAV, AIFF or MP3. **Workaround:** Open Preferences and click "OK".
* When importing a MIDI track, the channel selection buttons to left of the track are not currently available.

#### Installation

* (OS X 10.6 or later) Administrative (and occasionally, root) permissions may be needed on some machines to read the optional LAME and FFmpeg libraries at /usr/local/lib/audacity. In case of difficulty, please download the zip versions "Lame Library v3.98.2 for Audacity on OSX.zip" and "FFmpeg v0.6.2 for Audacity on OSX.zip" from the [download site](http://lame1.buanzo.com.ar/) and extract the files to your own preferred location.

#### Interface

* (Linux) If Audacity is configured with the option to use libsamplerate, an action involving resampling outside libsamplerate's limits of 1/256 to 256x will cause the progress dialog to hang, or possibly a crash.
* (Linux) If the warning for importing uncompressed audio files appears before import of a WAV, AIFF or FLAC file and you choose the "Read the files directly"... radio button, the Play/Stop shortcut may not play the file after import. **Workaround:** Click the Play button, or click in the waveform or background before using the Play/Stop shortcut. Alternatively, disable the warning in Warnings Preferences.
* (Linux) It is not possible to open an effect or other dialog then navigate through the dialog using TAB. It is only possible to use ENTER to accept the defaults. This is a bug in wxGTK. To change values or settings in the dialog, it is necessary to deliver a mouse click.
* (Linux) Using a file manager (for example, context menu) or the command line to open further files gives an error. Even if Audacity is closed, only one file can be opened from the file manager. **Workaround:** Use File > Open, or (for audio files) File > New then drag the files in.
* (OS X and Linux) In some locales, Preferences text may be truncated or overlapped, or dropdown boxes truncated.
* (OS X) Images captured with Help > Screenshot Tools are completely black.
* (OS X) The "Cmd - Wheel - Rotate" mouse binding does not zoom in unless you modify the default System Preferences. \*\* On OS X 10.6 or later, go to Universal Access / Seeing / Zoom / Options and uncheck "Use scroll wheel with modifier keys to zoom".
  * Prior to OS X 10.6, go to "Mouse and Keyboard" and uncheck "Zoom using scroll ball while holding Command".
* (Windows) The "Files Missing" warning always restores maximised windows to smaller size.
* (Windows) There may be substantial delays drawing the waveform in some circumstances. These include fitting longer zoomed-in projects to the window, or when zooming in on fitted projects, also after importing files or running effects.
* After changing language in Preferences, a few parts of the interface don't change until Audacity is restarted.
* Audacity has several weaknesses in preserving the context of the audio being worked with:
  * If playback scrolls, pressing Stop leaves the waveform where it stopped and the cursor invisible. Pressing Play to resume then scrolls the waveform to start at the left edge, hiding the previously visible context before the cursor position. **Workaround:** If you had a selection and a special playback command like Cut Preview or Quick-Play caused the waveform to scroll, use or to move the selection back into view.
  * Current scrolling behaviour makes it too hard to watch the waveform progress, with a single shift of cursor and waveform position when cursor reaches the right edge
  * Zoom to Selection shows none of the surrounding context
* By default, all audio in the project is selected if an action requiring a selection is requested when there is no selection (this behavior can be turned off in the Tracks Preferences). If enabled:
  * You can always apply effects to the whole project in one step, but you can also delete audio in all tracks if you press Delete when there is no selection. That is easy to Undo, but we aim to tweak this behavior and make it more customizable in a future Audacity.
  * A few items in Edit menu are incorrectly grayed out if no track is selected.
* If Sync-Lock Tracks is enabled, there is no indication of the cursor in the Sync-Locked tracks.
* If you save a region with Edit > Save Region then click OK in Preferences, the saved region cannot be restored.
* In projects containing an hour or more of total audio, there may be a delay compared to previous versions of Audacity when:
  * Creating a label or label track
  * Dragging selections with the keyboard (**Workaround:** Hold SHIFT then press left or right arrow a few times per second instead of holding the arrow key)
  * Dragging sample points with Draw Tool
  * Using Cut, Copy, Paste, Delete or Silence Audio.
* The delay may be more evident on slower computers. In addition, label text may not be recovered if there is a crash.
* Mouse Bindings are not currently configurable by the user.
* Snap To state and Selection Format when Snap To is on are global. Therefore changing these in one project will make them show incorrectly in any other projects.
* Snap-To does not move the cursor when first enabled or when the selection format is changed.
* We're aware that some error messages in Audacity are not as helpful as we would like them to be. If you see a cryptic error message from Audacity, try a search (or ask) on [https://forum.audacityteam.org/](https://forum.audacityteam.org/)
* (Linux) If Audacity is left open but without focus, its CPU use will rise slowly until all available system CPU is consumed. This is a bug in wxGTK 2.8.10 (not previous versions) - see [http://trac.wxwidgets.org/ticket/11315](http://trac.wxwidgets.org/ticket/11315) . This issue can be fixed by updating to wxGTK 2.8.11 or 2.8.12.

For Package Maintainers / Distributors / anyone building against 2.8.10: The upstream change in wxGTK is simple and can easily be patched into wxGTK 2.8.10 if desired: Grab [http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397](http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397), run it through dos2unix (as it seems to come with dos line-endings), and apply it to the wxGTK 2.8.10 sources (with -p3 to get the paths right if you patch from the top level of the tarball distribution).

* (OS X) Set Rate > Other... in the Track Dropdown Menu does not display the current track rate unless that rate is in the list of set rates.
* (Windows) It is not yet possible to drag .lnk shortcuts to audio files or projects into Audacity, or to drag them to the Audacity executable's icon. **Workaround:** Use File > Open or File > Import > Audio, or double-click the shortcut to the .aup from Windows Explorer.
* (Windows) The Audacity executable cannot be added to the Explorer "Open with" context menu if you have another version of Audacity on the system which is also called "audacity.exe". **Workaround:** either use the "Open with" dialog to browse to the executable each time, or rename the executable to or some other unique name.
*   (Linux) **Complete or partial loss of Audacity menu bar**

    * **32-bit systems using wxGTK 2.8.12:** If not using the Unity shell, closing Preferences may lead to loss of the Audacity Menu Bar (only "Fi" from "Files" will be visible). If using Unity, a small black square will appear, but the Audacity menu in the Global Menu is unaffected. **Workaround for one session:** Resize (or maximize/unmaximize) the Audacity window after closing Preferences.
    * **64-bit systems using wx GTK 2.8.12 without Unity:** Audacity may launch with no menu bar. **Workaround for one session:** Open and OK Preferences or open a new Audacity window.

    **Solution:** This is a wxGTK bug, as reported here ([http://trac.wxwidgets.org/ticket/13280](http://trac.wxwidgets.org/ticket/13280)) and fixed in changeset 67929 ([http://trac.wxwidgets.org/changeset/67929](http://trac.wxwidgets.org/changeset/67929)). To resolve this problem, wxGTK 2.8.12 needs to be patched on the target system, ideally by updating the distribution package. This fix will be included in wxGTK 2.8.13.
* Dragging a clip or track up or down with Time Shift Tool does not scroll the project window when tracks exist out of view above or below the scroll. **Workaround:** Choose View > Fit Vertically before drag, or click and hold the piece to be dragged, use up or down arrow on the keyboard to scroll to the target track, then drag and release the clip or track.

#### Keyboard Shortcuts

* (Windows) SHIFT + A (Play/Stop and Set Cursor) and custom unmodified shortcuts for playback or recording write a label at the cursor position if the label track has the yellow focus border. **Workaround:** use up or down arrow to move focus out of the label track before using the shortcut.
* A few commands with identical names in different sub-menus are not distinguishable by name in [Keyboard Preferences](https://manual.audacityteam.org/o/man/keyboard\_preferences.html).
  * In the "Edit" category of Keyboard Preferences, shortcuts for "Remove Audio or Labels" are listed above the same commands for "Labeled Audio".
  * In the "Tracks" category, shortcuts for "Align Tracks" are listed above those for "Align and Move Cursor".

#### Label Tracks

* **Typing "j", "J", "k", "K" or other shortcuts in a label track may activate the shortcut** instead of typing in the label. **Workaround:** In many cases, Edit > Undo then Edit > Redo will allow you to type in the label. Otherwise, click Edit > Preferences: Keyboard, choose the correct category, then clear the affected shortcuts or change them to include a CTRL + SHIFT modifier or other modifier than SHIFT.
* (Linux) In projects containing several hundred labels or more, Audacity will freeze on 100% CPU when opening the "Audacity Karaoke" window, and will freeze again while that window is open when editing a label or performing other actions on the project. Workaround: Open or place an empty label track above the one you want to use.
* Unless Tracks > Sync-Lock Tracks is on, pasting or inserting audio does not affect labels even if the label track is included in the selection.
* **Yellow "snap" guidelines do not appear in re-opened projects or imported label tracks** when dragging a selection to a label edge if "Snap To" is checked and a high resolution Selection Format chosen. Formats affected include "hh:mm:ss + CDDA frames (75 fps)", "hh:mm:ss + milliseconds" and "hh:mm:ss + samples".

#### Miscellaneous platform-specific issues

* (Linux) **A playback or recording freeze with pulseaudio may occur** if repeatedly starting and stopping playback or recording in quick succession (or holding down the Play or Record button). **Workaround:** Bypass pulseaudio by setting the playback and recording device to an ALSA (hw) choice in Device Toolbar.
* (Mac OS X) If using Audacity when the "Hear" audio plug-in is running (or has been since boot), there will be excessive memory usage which could cause a crash: this appears to be due to buggy memory allocation in "Hear"
* (Mac OS X) Very occasionally, users may find that after running Audacity, other media players don't produce any sound, or crash: to resolve this, set up your sound device in Apple Audio MIDI Setup to work in stereo, 16-bit, with a sample rate of 44100 Hz or 48000 Hz, and set the sample format and rate identically in Audacity. More help at: [http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064](http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064)

#### Mixer Board

* **Soloing or unsoloing a track in Mixer Board when in "Standard" Solo button mode** may not immediately update the Solo button or waveform greyed/ungreyed state in the project window. **Workaround:** Click anywhere in (or task switch back to) the project window to refresh it (on Mac, you must click in the waveform or Track Control Panel or wait for the tracks to scroll when playing).
* If you change the meter range in Preferences this is not reflected in the Mixer Board meters until restart.
* (Linux) Meters may not respond immediately to playback which could cause them to report incorrect peak level or not display clipping.

#### Playback and Recording

* (Windows) The "Windows WASAPI" host currently has the following limitations:
  * The only available inputs are "loopback" inputs for [recording computer playback](https://manual.audacityteam.org/o/man/tutorial\_recording\_computer\_playback\_on\_windows.html).
  * The input slider in [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) is disabled (but appears to be enabled on switching to Windows WASAPI host until you select or change the loopback input).
  * The Audacity output slider may also be grayed out, or may affect the system output level but not the achieved recording level.
  * If you adjust the system _output_ level and/or the output level of the application playing the audio this will also adjust the recording level.
  * Loopback recordings should only be made with the Audacity [Project Rate](https://manual.audacityteam.org/o/man/selection\_toolbar.html) set to 44100 Hz . Setting other project rates will cause Audacity to resample the input to the project rate and may cause glitches in the recorded audio.
  * "Audio to buffer" in Recording Preferences cannot be used to adjust recording latency.
* (Windows) "Windows WDM-KS" host is currently the least compatible of the four hosts, and may produce "error opening sound device" on some machines or have other quirks (such as some inputs not being available under this host). Please report detailed problems to [our feedback address](https://web.audacityteam.org/contact/#feedback) and state your exact version of Windows.
  * The input slider in [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) is disabled for all or most inputs (but appears to be enabled on switching to WDM-KS host until you switch to a different WDM-KS input). Please use the Windows system input slider instead.
  * Recording from the stereo mix input may not produce an adequate input level unless you turn the system audio output up very high. On Windows Vista and later you can choose the "Windows WASAPI" host and a "loopback" input instead for recording computer playback.
* Adding or removing an external audio device while Audacity is open will not be automatically reflected in the list in Device Toolbar or Devices Preferences. On Mac, unplugging then replugging an external device will give "error while opening sound device" (on Linux, pressing "Record" a second time will remove the error). **Workaround:** Use Transport > Rescan Audio Devices.
* **Append Record with Transport > Overdub (on/off) enabled may cause periodic playthrough** of previously recorded audio. If you use the Stop button or SPACE to stop the previous recording instead of SHIFT + A (Stop and Set Cursor), this may reduce occurrences of the issue.
* **Recordings stopped with the "Stop and Set Cursor" shortcut** (by default, SHIFT + A) cannot be removed by Undo.
* (OS X and Linux) Audacity now works very well with [JACK](http://jackaudio.org/), with the following bugs and limitations:
  * Clicking in the input meter to start monitoring will crash Audacity if it has not yet used JACK for playback or recording in that session. **Workaround:** Before recording the first track in a session, click "Pause" then "Record" to enable the recording meter.
  * The best way to connect to available JACK inputs and outputs is directly from Device Toolbar. Use Transport > Rescan Audio Devices when necessary, for example to make new JACK applications ports available to Audacity. See here for details.
  * On Mac, Audacity may freeze if JACK is launched by QjackCtl then Audacity is launched. **Workaround:** Use JackPilot to launch JACK, or launch QJackCtrl after Audacity and JACK are running.
* (OS X and Linux) PortAudio's default latency values which are used when recording with software playthrough are much lower than Audacity's default "Audio to buffer" setting. This may cause playthrough or recording glitches when recording with software playthrough enabled, especially when using pulse on Linux. Workaround for Linux: record from an (hw) device instead if software playthrough is required.
* (OS X) Playback to Bluetooth headsets gives an error. Workaround: Revert to Audacity 1.3.3 (this may only work with stereo headsets), or use [Soundflower](http://www.cycling74.com/products/soundflower) to send the Audacity output to an audio application that works with the headset.
* (OS X) The "Hardware Playthrough" option in Recording Preferences is currently unsupported on all known Mac hardware. Try the "Software Playthrough" preference instead. If that does not work, the third-party [LineIn](http://www.rogueamoeba.com/freebies/) application also provides software playthrough.
* (Windows) **When a USB device is connected, the Mixer Toolbar input slider for that device (and sometimes for any device) may wrongly appear active** even though it has no control over the device's input level. Sometimes the Audacity slider will apply a software gain to the level (which is dangerous as it will only make the same clipped input quieter rather than stopping the clipping). Sometimes the Audacity slider will not affect the input volume at all. **Workaround:** use the slider in the Windows Control Panel where available, or any gain control on the device, or reduce the output being sent to the device.
* (Windows) **When you install Audacity for the first time or launch it after resetting Preferences** Audacity will choose a specific output and input device rather than the Sound Mapper devices that are the current Windows default devices. **Workaround:** If you lose playback audio or only record silence for this reason, use [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) to change the devices as needed, then Audacity will remember them.
* (Windows) Audacity is incompatible (or not fully compatible) with some professional soundcards or audio devices, and may crash or have limited or faulty functionality. Occasionally, this may be true of some AC97 devices built into the motherboard. **Workaround:** make a different soundcard your default when using Audacity, but please e-mail the following details to our [feedback address](https://web.audacityteam.org/contact/#feedback):
  * Your version of Windows and Service Pack
  *   Name, model number and driver version number of the soundcard or device.

      **Note:** Multichannel Recording in Audacity is often not possible with professional devices unless you compile Audacity with ASIO support.
* Calculation of "disk space remains for recording (time)" incorrect when recording in 24 bit quality.
* Play-at-Speed slider: Change of playback speed is no longer automatic after you move the play-at-speed slider. To change speed, move the slider, then click the green button to left of the slider to play at the new speed.
* The Transport menu lacks Audacity's two combined "Play/Stop" commands, but these have shortcuts which can be used instead.
  * "Play/Stop": Use SPACE. This starts or stops playback, returning the cursor to the start position when stopped.
  * "Play/Stop and Set Cursor": Use SHIFT + A. This also starts or stops playback, but when stopped, sets the cursor to the stop position.
* To change these shortcuts, or to add a shortcut for the separate "Play" and "Stop" commands shown in the Transport Menu, go to the Keyboard Preferences.
* Timer Record cannot maintain scheduled duration if system clock changes
* (Windows Vista, 7) If you change the explicit output and/or input device selected in Device Toolbar or Devices Preferences and then change "Host", the selected devices will change back to those originally selected.
* (Windows XP and earlier) Changing the default playback or recording devices in the Windows Control Panel while Audacity is open may cause all the playback or recording choices in Device Toolbar to produce silence (or to fail with "Error opening sound device"). This problem may also occur when connecting or disconnecting a USB device while Audacity is open. **Workaround:** Click Transport > Rescan Audio Devices then you can play or record.

#### Preferences

* (Linux) **Extended Import:** Clicking "Move rule up" when there are no rules or filters causes a crash.

#### Program Launch

* (Linux) If a Bluetooth audio device is in use on a PulseAudio system, Audacity may hang on launch on initial attempts, then after eventual launch Bluetooth will no longer work on the system. **Workarounds:**
  * Remove and reconnect the external Bluetooth adaptor, then launch bluetooth-applet from the command line.
  * To prevent Audacity affecting Bluetooth support, move /usr/share/alsa/bluetooth.conf to another location then reboot, or create a symbolic link from /var/lib/alsa/asound.state to /dev/null and reboot.
* (OS X) **Audio Units Plug-ins:** Audacity scans for and loads Audio Unit (AU) effects on each launch before the main interface appears. This can lead to a very slow launch if there are many plug-ins. Occasionally, an incompatible or badly written plug-in may lead to a crash or freeze on launch. Known plug-ins affected are listed below.
  * **Mac OS X:**
    * **AURoundTripAAC** from "Apple audio mastering tools".
    * [**Blue Cat FreqAnalyst (real time)**](http://www.bluecataudio.com/Products/Product\_FreqAnalyst/)
    * [**Endless Series**](http://www.olilarkin.co.uk/index.php?p=eseries) **AU**
    * **MNoiseGenerator** AU in [MFreeEffectsBundle](http://www.meldaproduction.com/plugins/product.php?id=MFreeEffectsBundle)
    * **Native Instruments B4**
    * **Native Instruments Guitar Rig v3 and v4** (v5 does not have this issue)
    * **PredatorFX**
    * **Waves Version 7, 8 and 9 AU**
* In a future version of Audacity we aim to defer loading of AU plug-ins until they are requested in the Effect menu, as we already do for [VST effects](https://manual.audacityteam.org/o/man/effect\_menu.html#VST\_Effects). **Workaround:** If AudioUnit effects are not needed in Audacity, force quit Audacity, then open Audacity's [folder for application data](https://manual.audacityteam.org/o/man/preferences.html#stored). Open audacity.cfg in a text editor (or create audacity.cfg if it does not exist) then in the editor, make the audacity.cfg content to be only the following:
*
  * NewPrefsInitialized=1\
    \[AudioUnits]\
    Enable=0\

* If AU plug-ins were the problem, Audacity should now launch.
* For more detailed help with editing audacity.cfg or with identifying or moving AU plug-ins, please follow the Audio Unit instructions on this page.
* (Windows and OS X) **"Install VST Effects" dialog lists more than VST effects:** On first use, Audacity scans for [VST effects](https://manual.audacityteam.org/o/man/effect\_menu.html#VST\_Effects) then (before launching Audacity) presents a dialog where you can choose which VST effects to load into the Audacity Effect menu. Remove the checkmark from any VST effects you do not want to load then click OK to load the checkmarked effects. If you click Cancel the dialog will reappear on next Audacity launch.
  * Note that VST instruments will appear in the list but are not supported, so will **not** load even if checkmarked.
  * On Windows the dialog will appear even if you have no VST effects, because Audacity detects the two shipped LADPSA plug-ins (hard\_limiter\_1413.dll and sc4\_1882.dll) and also any optional LADSPA DLL plug-ins you may have installed. These LADSPA plug-ins will load whether you enable them in the dialog or not. **Therefore you should just click OK on the dialog if you have no VST effects**.

#### Projects

* **There are currently no message box warnings when projects run out of disk space.** If you run out of disk space when editing or recording, patches of silent or corrupted audio will appear, which will also be present if you save and reopen the project. Be aware that every edit on a track takes as much in disk space as if you were recording that track, due to the ability to undo and redo. You can go to View > History and discard Undo levels to free up space.
* (OS X) **Crash closing project window immediately after saving project:** After saving a project, if you close the project window immediately the "Saving project data files" dialog completes, there will be an unexpected "Save changes?" prompt and then a crash when you choose "Yes" or "No". As long as you say "Yes", the project will be saved correctly and can be reopened normally after you restart Audacity. To be sure there is no crash, wait after "Saving project data files" completes for any "Inspecting Project Data" dialog to appear and disappear before closing the project window.
* It is no longer possible to use Save Project or Save Project As to overwrite another pre-existing project, even if that project is not in use. Functionality to overwrite a project not in use will be restored in a future version of Audacity when we are sure it will always be safe.
* Projects created by Audacity 1.1.x or earlier are no longer supported. Workaround: Export each project track as WAV using the appropriate legacy version of Audacity, then import the WAV files into current Audacity.
* Projects created by Audacity 1.2.x are partially supported - there is a possibility Audacity could corrupt them. Please make a backup copy of the project's .aup file and \_data folder to a new folder before opening the project in this version of Audacity. Once you save the project in this version, it cannot be opened in 1.2.
* Projects created by previous versions of Audacity may contain audio "block files" longer than the project format allows. Reopening such projects in previous versions might or might not result in deletion of the overlong audio. Audacity has been provisionally fixed so that it can no longer create or delete overlong files, but it cannot read any such files it encounters. If overlong files are found, a "Problems Reading Sequence Tags" message will display .
  * If you continue with the offered repair then choose "Continue without deleting" in the Orphan Block File(s) dialog, the overlong files will be retained as "orphans" in the project's \_data folder but will appear as silence in the track(s).
  * As long as you choose "Close project immediately" in the Orphan Block File(s) dialog, the project will quit and will not be changed in any way.
* If you encounter the "Problems Reading Sequence Tags" message, please write to our [feedback address](https://web.audacityteam.org/contact/#feedback) with a copy of the .aup file and the log as found at Help > Show Log.
* Time Track warp points saved in a 2.0.3 or later project will be preserved if opened in previous Audacity versions, but playback and display will be incorrect.
* **Projects containing more than 2^31 samples (just over 13.5 hours of audio at 44100 Hz) will re-open empty** with the entire data being seen as "orphaned files" (although the data "appears" to be in the correct location expected by the .aup file). **Workaround:** Before saving or closing the project, export to audio files of appropriate size, or cut and paste sections of audio containing less than 2^31 samples to new Audacity projects and save those.

#### Time Tracks

* The lower and upper speed limits are not stored in the project, so will be restored to their default values of 90 and 110 respectively when reopening or recovering a project, or if removing a Time Track then undoing removal. Please make a note of the correct values before closing the project or the Time Track.

#### Toolbars

* (OS X and Linux) Using keyboard Undo while dragging envelope points or sample points will crash Audacity (this affects Envelope Tool, Draw Tool and Multi-Tool).
* Transcription Toolbar does not play slower than 0.1x speed although the slider range goes down to 0.01x. **Workaround:** Use Effect > Change Speed instead to modify the audio, specifying your required negative Percent Change.
* **Meter Toolbar vertical orientation** is not remembered across sessions, and resizing the meters reverts from vertical to horizontal.
* (Windows XP) **Transport and Tools Toolbar buttons all display as Pause buttons.** The buttons may redraw correctly if you hover over them. **Workaround:** You can use [keyboard shortcut alternatives](https://manual.audacityteam.org/o/man/keyboard\_shortcut\_reference.html) for the buttons instead.

#### Undo, Redo and History

* If you change the Mute/Solo button state on any track(s) before applying an effect or edit, Undo also undoes the Mute/Solo changes. **Workaround:** Select the audio to be edited _after_ changing the Mute/Solo state (other than by using ENTER to select the focused track).

### Bugs requiring more investigation

* (Linux) If Audacity is compiled with the option to use libsamplerate and the default "Best Sinc Interpolator" for high-quality conversion is used, Tracks > Resample may lead to truncation of the waveform. Workaround: change the project rate to the desired rate, export the track and re-import it.
* (OS X and Linux) After using Tracks > Mix and Render or File > Save Project, some keyboard shortcuts such as Play/Stop or opening a new project window have no effect.
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
