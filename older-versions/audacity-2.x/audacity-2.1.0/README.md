# Audacity 2.1.0

**Audacity 2.1.0 was available from 29 March 2015 to 15th July 2015.**

**Tip:** You can use CTRL + F to search this page for different words to do with the issue you are looking for. Use Command - F on Mac.

{% hint style="info" %}
* **Users upgrading to this release from Audacity 2.0.5 or earlier who had FFmpeg installed** will see a notice that FFmpeg needs to be reconfigured. Please visit [https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown](https://manual.audacityteam.org/o/man/faq_installation_and_plug_ins.html#ffdown) for a link to the recommended 2.2.2 version of FFmpeg for Windows and Mac OS X, and for information for Linux.
* **Shortcuts created in previous Audacity versions for the Generate, Effect and Analyze menus will not be recognized by 2.1.0** and cannot be imported from an XML file. However the shortcuts can be recreated and will then be respected. The previous bindings can still be viewed in the \[NewKeys] section of the [audacity.cfg settings file](https://manual.audacityteam.org/o/man/preferences.html#stored).
{% endhint %}

{% hint style="info" %}
**Extra notes for Mac OS X:**

*   **Audacity 2.1.0 cannot import MP4, M4A, MOV or ALAC files unless you install the** [**FFmpeg**](https://manual.audacityteam.org/o/man/faq_installation_and_plug_ins.html#macff) **library.** After installing FFmpeg, use File > Import > Audio... or File > Open... and choose the "FFmpeg-compatible files" file type before selecting the file(s) to import.

    This problem is already fixed in our source code, so will be fixed in the next 2.1.1 release.
{% endhint %}

{% hint style="info" %}
**Extra notes for GNU/Linux:**

* **Some Linux distributions are supplying Audacity builds that are unstable because built with wxWidgets 3.x which** [**Audacity does not yet support**](https://bugzilla.audacityteam.org/buglist.cgi?keywords=wx3\&resolution=---)**.** This applies for example to Ubuntu "Daily Builds", [Ubuntu Vivid](https://wiki.ubuntu.com/VividVervet/) and Debian Jessie (Testing). Please check then the "Build Information" tab to check the version of wxWidgets that Audacity is built with. To avoid issues you can build wxWidgets 2.8.12 then compile Audacity against wxWidgets 2.8.12.
{% endhint %}

{% hint style="info" %}
**Extra notes for Windows:**

* **The Windows installer for 2.0.x versions will replace legacy 1.2.x or any previous 2.0.x installation, but install alongside legacy 1.3.x Beta versions.** It is strongly recommended to uninstall previous Beta versions before installing current Audacity.
* **The language choice in the Windows EXE Audacity installer only selects the language for the installer.** The language Audacity runs in is determined by the "Format" for date and time in the "Region and Language" section of the Windows Control Panel. To change the Audacity language, please see these [instructions](https://manual.audacityteam.org/o/man/faq_about_audacity.html#language).
* **On first use of Audacity you need to confirm or cancel the** [**Register Effects**](https://manual.audacityteam.org/o/man/effects_preferences.html#register) **dialog** for detected effects before you can launch Audacity.
* **MP3 Encoding:** Users upgrading to Audacity 2.0.x versions from 1.3.6 or earlier must download the [latest version of the LAME MP3 encoder](https://manual.audacityteam.org/help/manual/man/faq_installation_and_plug_ins.html#lame).
* **Audacity 2.1.0 requires the CPU to support the** [**SSE2** ](http://en.wikipedia.org/wiki/SSE2)**instruction set** which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003. To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html) .
* **Users on Windows XP:** You may see "Entry Point Not Found" when first launching Audacity after installation. This error occurs if you are running less than the latest "Service Pack" of updates for your Windows XP system. Please see [https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#entry\_point](https://manual.audacityteam.org/o/man/faq_installation_and_plug_ins.html#entry_point) for how to install the latest Service Pack and for advice about the potential security risks of running XP now that Microsoft no longer supports it.
{% endhint %}

## Changes since previous version

### Improvements

* **Effects:**
  * LADSPA, VST and Audio Unit (OS X) effects now support real-time preview, save/load of user presets and saving effect settings across sessions. **Note:** Real-time preview does not yet support latency compensation.
  * VST effects now support import/export of FXB preset banks.
  * Shell VST effects that host multiple plug-ins are now supported.
  * All Effect Menu items (built-in or plug-in) can now be used in a Chain.
  * Items in the Effect, Generate or Analyze Menus can be sorted or grouped by name, publisher or class of effect.
  * Noise Removal is improved and renamed to "Noise Reduction".
  * Change Speed has new time controls for current and new length. You can now enter the speed change as a multiplier e.g. "2" is twice as fast.
  * New "Crossfade Tracks" effect can be used for crossfading two tracks. This replaces Cross Fade In and Cross Fade Out.
  * Nyquist Prompt and most shipped Nyquist effects now have Preview button.
* **Interface:**
  * Redesigned Meter Toolbars: The default shows separate Record and Playback Meters, half-height so they can be wider while docked, in gradient style.
  * A frequency selection can now be made (and spectral edit effects applied to those frequencies) when in a spectrogram view. You can also create or adjust frequency selections in a new "Spectral Selection Toolbar" (available at View > Toolbars).
  * Transcription Toolbar (Play-at-speed) can now loop play and cut-preview.
  * Timer Record now saves recordings automatically into an existing project.
  * New Armenian translation.
* **Operating system and sound device support:**
  * (Windows) Audacity 2.1.0 requires Windows XP SP3 (32-bit) or XP SP2 (64-bit), Vista, Windows 7, Windows 8 or 8.1.
  * (Windows) Audacity is now compiled using Visual Studio 2013.
  * (Windows) Recording with WASAPI host now includes experimental support for physical inputs (up to 24-bit depth) as well as loopback recording.
  * (OS X) 10.10 (Yosemite) is now supported including Apple Audio Units.
    * Please report any issues with WASAPI recording/playback or Yosemite to [our feedback address](https://web.audacityteam.org/contact/#feedback).
  * (Linux Ubuntu) Under Unity, keyboard shortcuts are not visible in the Audacity menus. Keyboard shortcuts are visible if you install the classic GNOME Flashback interface or under Unity if you open Audacity with the UBUNTU\_MENUPROXY=0 environment variable. Audacity compiled from source will ship with src/audacity.desktop.in set to UBUNTU\_MENUPROXY=0 but it will remain up to distributions to use this desktop file.

### Bug Fixes

* **Interface:**
  * Typing "j" or "k" in a label track activated the "move cursor" shortcut.
  * Spectrogram log (f) view displayed incorrectly until vertically zoomed.
  * Fixed crash after zooming out on vertical scale beyond +/-1.0.
  * Selections made with Selection Toolbar were not restored after Undo.
  * Undo could fail silently if a selection included/touched a clip boundary.
* **Imports and Exports:**
  * If there were invalid FFmpeg libs in system PATH this prevented Audacity recognising the installed FFmpeg or the FFmpeg specified in audacity.cfg.
* **Mac OS X:**
  * Fix uninitialized buffer - this should correct playback buzz or crackle where the upper of multiple tracks started with or contained white space.
  * Device names were corrupted when using system language other than English.
  * Fixed crashes using (external program).
  * Waves v9 Audio Units should now work correctly.
* **GNU/Linux:**
  * Fix "Audacity already running" error when using the command-line or context menu to open multiple or further files.
  * Fix segfault exporting an FFmpeg format to an unwritable folder.
  * Fix silent failure exporting FFmpeg, MP2 or OGG to an unwritable folder.
  * Fix ENTER activated an effect when OK button was greyed out.

**Addendum:**

* The previous Audacity 2.0.6 version fixed an issue that projects did not reopen correctly if they contained tracks having 2^31 samples or greater of audio (just over 13.5 hours at 44100 Hz).

## Known Issues at Release

### Accessibility

* Many, but not all parts of the Audacity interface are accessible on Windows and Mac to those who can't use a mouse, and/or use a screen reader. It may be possible to make more of Audacity accessible in the longer term. For details, see [https://manual.audacityteam.org/o/man/accessibility.html](https://manual.audacityteam.org/o/man/accessibility.html)
* **There are some accessibility bugs in the parts of Audacity that are accessible (or behavior may vary according to the specific screen reader).**
  * If you place the cursor or select a region using Selection Toolbar, apply an edit that moves the cursor/region then Undo, the cursor/region does not revert to its position before making the edit but reverts to its position before using Selection Toolbar. **Workaround:** Use the mouse or the [\[ and ](https://manual.audacityteam.org/o/man/audacity_selection.html#kbrd_exact)shortcuts] to place the cursor or select the region.
  * Some interface text or markings remain in black when using High Contrast light-on-dark themes, so cannot be read properly.
  * Spectral Selection Toolbar: Typing a 0 (zero) in the High Frequency box when its digits are dashed (undefined) resets existing Low Frequency values to zero. Typing or incrementing digits in either box may require the wanted digit to be typed or incremented twice and may increment digits in the other box. It is usually best to enter the high frequency first and then TAB through both Low and High Frequency boxes to ensure that they contain correct values.
  * Analyze > Contrast: Once you use ALT + F6 or ALT + SHIFT + F6 to switch focus from this dialog, you can't return to it using the keyboard. You can switch to and from Contrast on Mac OS X by using the Window Menu.
  * (Windows only) Plot Spectrum: Changing the values loses focus on the dialog. Use ALT + F6 to return focus to Plot Spectrum.
  * Register Effects dialog: The list view of plug-ins is a check box list view, and all the plug-ins are checked initially. Unfortunately Jaws and Window-Eyes do not read whether or not a check box is checked, but you can still press SPACE to change this.
  * Keyboard Preferences: Window-Eyes doesn't read the key bindings when View by Tree is selected, and may not always read the bindings in other views.
  * (OS X) It is not possible to TAB through Keyboard Preferences.
  * (OS X) It is not possible to move through docked toolbars using the ALT + F6 or ALT + SHIFT + F6 shortcuts.
  * (OS X) It is not possible to move between the main Audacity window and some VST and Audio Unit effects using the ALT + F6 or ALT + SHIFT + F6 shortcuts when the effect is in Graphical Mode. You can use the "Manage" menu then Options... to change the effect to textual mode.
  * **(OS X) Issues with VoiceOver:**
    * (reported on OS X 10.9.x) After exporting, the black accessibility area is trapped in the Tooldock area, so there is no way to read the tracks. **Workaround:** Save as a project, close the project then reopen it. You can then navigate the tracks with VoiceOver.
    * If you use arrow keys to navigate the Timetext controls in Selection Toolbar, VoiceOver stops reading. **Workaround:** Use Control-Option-W
    * When you TAB forwards from "Audio Position" in Selection Toolbar, the "Selection End" or "Selection Length" radio button is read as "Selection Start". When you use COMMAND + F6 or COMMAND + SHIFT + F6 to move directly into "Selection End" from another toolbar, the button is read as "Selection Start".
    * Mixer Toolbar input/output sliders are not read, but just described as "multiple indicators". The "Graphic EQ" and vertical sliders in Equalization \*are\* read.
    * Metadata Editor table not read.
    * Edit Labels dialog not read.
    * In the "Edit Chains" window, only the first command in the "Chain" list is read, and it is only read when first accessed. In the "Select Command" window for inserting a new command in a Chain, commands in the table are not read.
    * "Manage Curves" table in Equalization not read.
*   (Linux Ubuntu) Under Unity, keyboard shortcuts are not visible in the Audacity menus. Keyboard shortcuts are visible if you install the classic [GNOME Flashback](http://ubuntuhandbook.org/index.php/2014/04/install-gnome-classic-desktop-in-ubuntu-14-04/) interface or under Unity if you open Audacity from the termimal with

    `env UBUNTU_MENUPROXY=0 audacity`

    Audacity will now ship with src/audacity.desktop.in set to UBUNTU\_MENUPROXY=0 so Audacity compiled from source will show shortcuts in the menus and will have its own menu bar in the application. It will remain up to Ubuntu whether they use this desktop file in packaged versions of Audacity.
* (Linux) SPACE cannot be used to change context menu items (such as Selection Format in the context menu of TimeText digits, or Mono/Left/Right and Set Rate and Set Sample Format in the Audio Track DropDown Menu). **Workaround:** Use ENTER instead of SPACE.
* **(Linux) Issues with Orca:**
  * Audacity tracks are not read.
  * Not all toolbar controls are read, examples being Timetext controls, Project Rate and controls in Device Toolbar.
  * Not all controls in Preferences are read.
  * Control labels for VAMP and VST plug-ins are not read.
  * Control labels for Nyquist plug-ins are read inconsistently in older version 3 or earlier plug-ins (Version 4 seems to read more consistently).

### Chains

* **Audacity's built-in generators don't yet work with Chains.** Plug-in generators should work.
* **Chains do not currently support export as AIFF, Other uncompressed files or any formats supported by FFmpeg.**
* **Noise Reduction" does not yet support storing its parameters in a Chain.** Noise Reduction will run at its current settings if used in a Chain.
* **LV2 effects cannot yet store their parameters in Chains** so if non-default parameters are required in a Chain these must be set for each Audacity session in File > Edit Chains before running the Chain.
* **You cannot set export format options or export sample rate in the Chain.** If you need to specify export options other than the current default, import or generate some audio, File > Export, select the audio type, click "Options..." then choose and save the option and cancel the export.

### Compiling

* (Linux) **New libsoxr resampling library:** Default ./configure will enable a new library [libsoxr](https://sourceforge.net/p/soxr/wiki/Home/) for resampling and disable libresample and libsamplerate (the previous resampling libraries). [Cmake](http://www.cmake.org/) is required to build libsoxr. We strongly recommend libsoxr for its combination of high quality and high speed.
  * **Only one resampling library is permitted.** If you enable either libresample or libsamplerate in configure, libsoxr will not be enabled. Any configure of resampling libraries other than libsoxr only will enable one only of libresample, libsamplerate or libsoxr in that order of precedence; however the intermediate configure output may suggest that other libraries will be favored.
  * **To enable libresample**, your configure must include --without-libsoxr as well as --with-libresample.
* (Windows) LADSPA effects cannot be categorized even when Audacity is compiled with USE\_LIBLRDF defined.
* (Linux) Audacity may not always compile against supported versions of libav or FFmpeg. Audacity 2.0.6 supports FFmpeg 1.2 or higher (FFmpeg 2.2.3 is known to work) or libav 0.8 or higher.
  * Dynamic loading (as in default Audacity ./configure) requires building against the FFmpeg project - it will not build against the libav\* headers from the libav project. **Workarounds:** Configure Audacity with --disable-dynamic-loading. If dynamic loading is required, build against FFmpeg instead of libav, or you can build against libav if you remove the "#define IS\_FFMPEG\_PROJECT 1" line in src/FFmpeg.h.
  * Audacity may still build against no-longer-supported FFmpeg versions (such as FFmpeg 0.8 which is system-installed on Debian Wheezy), but configuring with --disable-dynamic-loading will be necessary. FFmpeg 0.8 has at least one known issue in Audacity 2.0.6 or later: mono WMA files export with no audio data. This issue will not be fixed given FFmpeg 0.8 is no longer supported by Audacity 2.0.6.
  * Building against self-compiled FFmpeg 2.2.2 with --disable-dynamic-loading the only argument fails on Ubuntu 13.10 with "undefined reference to 'av\_codec\_is\_encoder'". **Workaround:** Configuring with --disable-dynamic-loading and --with-lib-preference="local" (or at least --with-ffmpeg="local") may build successfully, but may not disable Libraries Preferences. The best solution may be not to disable dynamic loading.

### Effects (Audio Units) (OS X)

* **All User Presets you select in the export dialog are exported at the same current settings you see in the effect**, not at the preset's currently saved setting. This means that:
  * To export a preset as saved you must first load it from User Presets before selecting it in the export dialog
  * You cannot export more than one preset at a time at different settings.
* **When you import a preset into an Apple Audio Unit, that preset's settings are applied by the effect without the effect controls updating to the new settings.** Other AU effects may ignore presets when you import them. To be sure the imported preset you want to use is loaded into the effect, select it from "User Presets".

### Effects (VST and Audio Units)

* (OS X and GNU/Linux): **When saving VST effect presets, the FXP or XML file extension is not automatically offered in the file name, and not added by Audacity if you omit it.** Make sure the extension you add is the same as that shown in the "File Format" drop-down menu, otherwise the preset will not be loadable.
* (OS X) The following plug-ins may cause Audacity to crash if they are used after starting Audacity.
  * **AURoundTripAAC** from "Apple audio mastering tools" (this requires OS X 10.6 or later so may crash on 10.4 or 10.5).
  * [**Blue Cat FreqAnalyst (real time)**](http://www.bluecataudio.com/Products/Product_FreqAnalyst/)
  * [**Endless Series**](http://www.olilarkin.co.uk/index.php?p=eseries) **AU**
  * **Digitech RP250** (effects pedal)
  * **MNoiseGenerator** AU and others in [MFreeEffectsBundle](http://www.meldaproduction.com/plugins/product.php?id=MFreeEffectsBundle) crash if you preview them
  * **Native Instruments B4** and **Native Instruments Guitar Rig v3 and v4** (v5 does not have this issue)
  * **PredatorFX**
  * **Waves Version 7 and 8 AU:** These effects may crash Audacity on quit, after project data has been saved. Waves Version 9 AU should now work correctly.
* **Workaround:** If Audio Units are not needed in Audacity, restart Audacity then open Audacity > Preferences and choose "Effect". Under "Enable Effects", uncheck "Audio Unit", press OK and restart Audacity. Alternatively, look in the Mac Crash Report for the AU plug-in that crashed, move it from \<Your Home>/Library/Audio/Plug-Ins/Components or /Library/Audio/Plug-Ins/Components then restart Audacity. See this page for more help.
* (Windows)
  * DISTRHO Mini Series VST's from [http://distrho.sourceforge.net/plugins.php](http://distrho.sourceforge.net/plugins.php) crash Audacity in graphic mode but will run in text mode (open the Effects Preferences and uncheck "Display VST effects in graphical mode").
  * Waves v5 may cause Audacity to hang if you select it in the "Register Effects" dialog then click OK.
  * iZotope Vinyl that has not yet been registered cannot be used in Audacity 2.1.0 because it causes the "Register Effects" dialog to freeze. You can register it in a previous version of Audacity.
* (Linux)
  * If a TAL VST is open when a built-in effect is previewed, Audacity will crash.
* (Windows and Mac OS X) **When running VST effects in** [**graphical mode**](https://manual.audacityteam.org/o/man/effects_preferences.html#vst) **the controls of many plug-ins do not visibly respond when loading a preset file from the "Load" button**. The new settings are however loaded internally, will apply when running the effect and will be visible if you reopen the effect after running it. Controls do respond to loading a preset file if you turn off graphical mode.
* (OS X) **Some VST plug-ins no longer allow text input in the presets drop-down, either by typing or pasting.** Examples are Sound Hack "Delay Trio / Freesound Bundle" and Blue Cat.

### Effects and Analysis

* **LADSPA generate plug-ins may fail to generate into an empty track** or into white space separating audio clips. **Workaround:** Before using the LADSPA generator, generate audio using any of the Audacity Generators above the divider in the Generate Menu, then generate into that audio selection.
* **Nyquist plug-ins:** In locales where comma is the decimal separator, entering a comma in a text input box that has no associated slider will produce an error message, or only result in the whole number before the comma (for example, in Regular Interval Labels). **Workaround:** Use a dot (period) as the decimal separator.
* (Linux) **Sliding Time Scale / Pitch Shift may crash randomly in Audacity built with pre-2.0.2 versions of libsbsms.** This may occur for example in the Ubuntu package of Audacity 2.0.5 on Ubuntu 14.04. **Workaround:** Build Audacity configured --with-sbsms="local", or use the Audacity package in Ubuntu 14.10 which uses libsbsms 2.0.2-1.
* (Windows 64-bit) There is no HKEY\_LOCAL\_MACHINE\SOFTWARE\ registry key where Audacity detects VST plug-ins. The HKEY\_CURRENT\_USER key searched is HKEY\_CURRENT\_USER\Software\VST\VSTPluginsPath instead of the expected HKEY\_CURRENT\_USER\SOFTWARE\Wow6432Node\VST .
* (Windows and Linux) Some LADSPA "Blop" plug-ins ( [http://blop.sourceforge.net/index.html](http://blop.sourceforge.net/index.html) ) are reported to crash in Audacity on Linux Debian. On Windows, the Blop plug-ins included in [http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html](http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html) can also crash, but this can be avoided if you ensure the "blop\_files" folder contains the necessary "\_data.dll" files for the plug-ins and that this folder is present in the Audacity "Plug-Ins" folder.
* (Windows and Mac OS X) The SC4 compressor shipped with Audacity crashes if used in a Chain.
* (Windows) If you open a Real-Time Preview (RTP) effect then preview in a built-in effect, the Play/Stop button in the RTP effect will display Stop and cannot be used until you press Play in the main project window.
* (Windows) LADSPA Multiband EQ may not be visible in Effect menu (occurs on Windows XP), and crashes soon after opening
* Cut Preview only plays the upper track of multiple selected or Sync-Locked tracks.
* Nyquist effects render the space between clips as silence. **Workarounds:** Edit > Clip Boundaries > Detach at Silences (this may also remove parts of the original audio if any of it was totally silent).
* "Play" or "Preview" features that are included in a few Nyquist plug-ins do not work on Mac OS X and may cause Audacity to freeze or crash on Linux.
* The following effects remove envelope control points: Change Speed/Pitch/Tempo; Equalization; Noise Removal; Sliding Time Scale/Pitch Shift; any Nyquist effect in the Effect menu. Workaround: Use Tracks > Mix and Render to apply the envelope to the waveform before applying the effect.
* The Reverse effect retains the control points, but does not move them.
* **Truncate Silence when run on multiple selected tracks only looks for and truncates "silence" regions which are common to&#x20;**_**all**_**&#x20;those tracks.** If you want to truncate silence independently for each track it is currently necessary to run the effect on one selected track at a time.
* **Nyquist effects may crash Audacity if used on extremely long selections** containing more than 2^31 samples (just over 13.5 hours at 44100 Hz). **Workaround** Apply the effect to multiple shorter regions (you can drag the selection back on itself to create a region contiguous with the previous one).
* **Noise reduction:** Preview is not possible if the sample rate of the project is different from the rate of the track to be processed - an error message appears "Sample rate of the noise profile must match that of the sound to be processed" (even if that condition is met). Providing the noise profile rate does match the track rate, you can still apply the effect. Alternatively, change the project rate temporarily to the rate of the track.

### Effects (real-time preview)

* **Real-time preview doesn't yet compensate for the latency many plug-ins introduce in order to provide smooth processing of audio.** Real-time preview therefore may have small gaps in the audio, or timing artifacts may be audible when previewing multiple tracks. Compensation is applied when applying the effect, unless you disable compensation in the options for the effect).
* Unlike with built-in effects, it is necessary to select a track to open a real-time preview effect (VST, LADSPA or Audio Units), and to select audio in a track to apply the effect.

### Envelopes and Clips

* **A clip may now be vertically dragged from inside a selection region, but if that region extends over the edge of the clip into space or into an adjoining clip there may be unexpected behavior**:
  * one channel of a stereo clip may jump sideways
  * a mono clip may fail to horizontal-drag in its new track
  * faint, specious clip lines could occur if the clip is dragged back to its original track.
* **Workaround:** Edit > Undo if necessary then drag from outside the selection region or single-click in the clip to remove the selection.
* **Set Rate in the Audio Track Dropdown Menu does not work correctly when there is a separate clip in the track or when there are envelope points.** Clips will cause Set Rate to shorten the audio too much or insert white space into it. Envelope points will not move in response to Set Rate.
* **Vertical-dragging a clip into a track at a different sample rate where the clip contains a selection that transgresses into another clip will corrupt the project** if you drag from within the selection. Playback, export and project saving will be at the wrong position or speed. **Workaround:** Vertical drag without or outside a selection. If you need to retain the selection when vertical dragging, use Edit > Region Save, remove the selection before drag then Edit > Region Restore. If the problem occurs, Edit > Undo to where playback is correct (dragging the track back where it came from will not resolve the issue).
* Left-clicking in a stereo track to merge a clip at a split line may cause other clips to move. It is believed this only happens after having used the Track Drop-Down Menu to make two mono tracks into stereo. **Workaround:** Select over the split line and Edit > Clip Boundaries > Join.
* When pasting audio into tracks with envelope points, the envelope points may move in unexpected ways, so causing unwanted amplitude adjustments.

### Exports

* (Linux) Exports using "M4A (AAC) Files" are very slow irrespective of the AAC encoder FFmpeg is configured to use. Workaround: choose (external program) when exporting, entering an appropriate path and command (for example, /usr/bin/ffmpeg -i - "%f") to run FFmpeg using Audacity's command-line encoder.
* (Linux) Files exported using the **FFmpeg native AAC encoder** included with many system versions of FFmpeg may be of poor quality. This is an issue with the library itself. **Workaround:** When compiling FFmpeg, configure with the libfaac encoder thus: --disable-encoder=aac --enable-libfaac --enable-nonfree. Note that libfaac has an issue not present in the native FFmpeg encoder that saved files are short at the end by about 3000 samples. Alternatively build the VisualOn AAC encoder library and configure FFmpeg with --disable-encoder=aac --disable-encoder=libfaac --enable-libvo-aacenc.
* (Linux) Mono AAC files import as stereo if FFmpeg uses the libfaad decoder. This is again an issue with the library itself.
* Audacity may freeze if using the Nero AAC encoder to export via (external program). It is reported this only occurs when using multiple CPU cores. **Workaround:** Export to AAC directly by adding [FFmpeg](https://manual.audacityteam.org/o/man/faq_installation_and_plug_ins.html#ffdown) to your computer, or set Audacity to use only one CPU core.
* Custom FFmpeg Export: many combinations of formats and codecs are incompatible, as are some combinations of general options and codecs. Some files may be exported as zero kb files.
* WAVEX (Microsoft) headers: GSM 6.10 files cannot be exported, and U-Law/A-Law files may not be playable.

### Imports and Exports

* **AAC exports using "M4A (AAC) Files (FFmpeg)" with project rate below 22050 Hz produce a zero bytes file if the linked to FFmpeg is configured with the default AAC encoder or libfaac.** This will not affect the recommended builds of FFmpeg for Windows and Mac OS X which are built with libvo-aacenc. **Workaround:** You can export AAC below 22050 Hz using default-configured FFmpeg by choosing (external program) export instead.
* **Files containing PCM audio but misnamed as MP3 cause a freeze or crash** if an Extended Import rule is set in Preferences to force import of MP3 files using the MP3 importer.
* **ID3 metadata tags in imported MP3 or MP2 files may display incorrectly if the metadata is UTF-16 encoded.** The tags will seem to have Chinese characters and these incorrect tags will also be present if the files are re-exported. **Workaround:** Before importing the file into Audacity, open it in a tag editor or an audio application that can edit tags. If the tags are seen correctly, save the file in that application. On Windows you can use [Foobar2000](http://www.foobar2000.org/download) for this purpose.
* **The Import / Export Preference "When importing audio files, Normalize all tracks in project" will cause import of WAV/AIFF files using "Read the files directly from the original" to lock up at the Normalize step.** If you require normalize on import for WAV/AIFF, please change the Import / Export Preference to "Make a copy... before editing".
* (Linux) After opening a sufficiently long audio file, opening a second file of any size leads to locked GUI/console messages until first file completes play.
* (Linux) Custom FFmpeg Export dialogue does not respond to ENTER after clicking in the Formats or Codec selector.
* (Mac OS X) Dragging audio files to Audacity's icon in the Dock will only import the file for WAV, AIFF, AU, MP2, MP3, OGG, FLAC and M4A. **Workaround:** Rename MP4 files (audio or video) to M4A extension. Alternatively the files may be dragged to the Audacity icon in the folder where you have Audacity installed, dragged into the open Audacity window or imported using the Audacity menus.
* (OS X and Linux) When using Export Multiple, asterisks (\*) or question marks (?) in labels are wrongly rejected as illegal characters, and forward slashes (/) cause a false "cannot export audio" warning. **Workaround:** To force use of \* or ? (and / on OS X), export each region with File > Export Selection instead (/ is illegal in a file or folder name on Linux).
* (OS X) Files imported from iTunes could create invalid characters in the .aup project file in previous Beta versions of Audacity. If you re-open such a project in the current release, an error "reference to invalid character number" may occur. **Workaround:** Save and open a back-up copy of the .aup file in a text editor, turn off word wrap, then in the line indicated in the error message, remove the string of characters that starts with \&# and ends with a semi-colon (;). There is more help with fixing this [here](https://manual.audacityteam.org/o/man/faq_errors.html#nwf).
* (Windows Vista, 7) Audacity will crash if attempting to open WAV files while they are still being rendered by the open source Psycle tracker program.
* If WAV/AIFF files are imported into a project using "Read Directly" import but then become unavailable, warnings are given when playing, recording, applying effects and exporting, but not all editing and project save actions are warned.
* If you import an audio file from a folder other than the one you last exported to, you cannot export over that file without changing the export directory manually.
* Metadata:
  * Album art and lyrics in imported metadata are lost when exporting. **Workaround:** Copy the lyrics (or search for them online) then add them back to the exported file in your favorite media player. Extract the album art using a tag editor such as [IDTE](http://sourceforge.net/projects/idteid3tagedito/) (or use [Windows Media Player](http://windows.microsoft.com/en-us/windows/add-change-media-player-album-art#1TC=windows-7) or iTunes to search online for the art) then add the art back to the exported file using your media player.
  * Tags other than the seven default [Metadata Editor](https://manual.audacityteam.org/o/man/metadata_editor.html) tags will be rewritten as custom ID3 TXXX tags, which will cause them not to be seen in applications like Windows Media Player and iTunes. Common tag examples include "Album Artist", "BPM" and "Composer".
  * ID3 v2.4 tags in imported MP3 files are not seen and will be removed on export.
  * Audacity writes both ID3 v2.3 (TYER) and v2.4 (TDRC) tags for "Year", but any applications that require the older TYER on its own (without TDRC) will not see "Year" in Audacity-exported files. The id3 command-line application on Linux is one example.
  * AAC: Artist and Year metadata is not exported or imported due to a bug in FFmpeg 2.2.2.
* WMA and APE (Monkeys Audio): "Artist Name" is not seen on importing the file (Audacity bug)
  * Other metadata import/export may not always be consistent. This may depend on the program that created the imported tags and the program used to read the exported tags.
* "Background on-demand loading" for FFmpeg (in the Libraries Preferences) does not currently allow changing the focus of waveform computation by clicking in the track. You can apply an effect to a selection wherever the normal waveform has appeared, but if you do so before the normal waveform has appeared, the audio will be silenced.
* **(Linux):** When exporting to MIDI over an existing file, no overwrite warning is given.
* **By default, the importer used depends on the import method.** For example, to be able to use [FFmpeg](https://manual.audacityteam.org/o/man/faq_installation_and_plug_ins.html#ffdown) to import native Audacity formats like WAV and MP3, you must choose the "FFmpeg-compatible files" filter in File > Open or File > Import > Audio and **always use one of those import methods**. To force FFmpeg to import native Audacity formats when using File > Recent Files or dragging in, add rules for those formats in [Extended Import Preferences](https://manual.audacityteam.org/o/man/extended_import_preferences.html). To force FFmpeg import irrespective of the filter when using File > Open or File > Import > Audio, uncheck "Attempt to use filter in OpenFile dialog first" in Extended Import Preferences as well as adding the rule for the format.
* **Export Multiple does not pass metadata common to all tracks to the Metadata Editor windows for each track.** **Workaround:** Export by unchecking "Show Metadata Editor before export step" in Import / Export Preferences, then enter any tags common to all tracks at File > Open Metadata Editor... before exporting. Audacity will then silently add the common and automatically generated Track Title and Track Number tags for each exported file.
* **Import > Raw Data... imports files as noise** if the Quality Preferences are set to 24-bit Default Sample Format. Set this to 16-bit or 32-bit float instead.
* **WAV and AIFF exports will fail without warning** if you import a WAV or AIFF by [reading it directly](https://manual.audacityteam.org/o/man/import_export_preferences.html), delete the file and its track then export new audio to the same file name and location as the deleted file. **Workaround:** Set the Preference in the above link to "Make a copy" of uncompressed files when importing.
* (OS X) Audio files containing a backslash (\\) in the name will fail "Could not open file" if you import them using File > Open... , File > Import > Audio... or File > Open Recent. This is a bug in wxWidgets. **Workaround:** Drag the file into the Audacity window instead.
* **Dither (corrective soft noise) is applied by default when it should not be applied** when exporting to most formats having the same or higher bit depth than the project. For example, this occurs if exporting to 16-bit WAV, 16-bit FLAC or MP3 from a 16-bit project. OGG is unaffected. **Workarounds:** Set "High Quality" dither to "None" in the [Quality Preferences](https://manual.audacityteam.org/o/man/quality_preferences.html). To fix any files that have already been affected, see [this Forum topic](https://forum.audacityteam.org/viewtopic.php?f=28\&t=38756).
* On a fresh installation of Audacity or [initialized Preferences](https://manual.audacityteam.org/help/manual/man/preferences.html#stored), the optional FFmpeg library cannot be used for import of native Audacity formats such as WAV, AIFF or MP3. **Workaround:** Open Preferences and click "OK".
* When importing a MIDI track, the channel selection buttons to left of the track are not currently available.

### Imports and Exports (FFmpeg)

* **In the "Custom FFmpeg Export" dialog, saved or imported presets do not load. Attempting to import a preset crashes Audacity** unless the "ffmpeg\_presets.xml" file in Audacity's folder for application data is empty or does not exist.
* M4A (AAC) exports: The Quality Slider in "Specify AAC Options" has no effect if the FFmpeg library is built with the libvo-aac encoder, as are recommended builds of FFmpeg for Windows and Mac OS X. **Workaround:** You can specify a constant bit rate if you select "Custom FFmpeg Export". Click the Options... button, choose "mp4" in the formats list and "libvo\_aacenc" in the codecs list, then set bit rate in bits per second. Up to 320000 bps (320 kbps) is supported. Given the alternative AAC encoders for FFmpeg also have problems as described in these notes, you can instead export as WAV and convert to AAC in iTunes on Windows and Mac.

### Installation

* (OS X 10.6 or later) Administrative (and occasionally, root) permissions may be needed on some machines to read the optional LAME libraries at /usr/local/lib/audacity. In case of difficulty, please download the zip version "Lame Library v3.98.2 for Audacity on OSX.zip" from the [download site](https://lame.buanzo.org/) and extract the files to your own preferred location.

### Interface

* (Linux) **Opening the Audio Track Dropdown Menu to change settings may result in that track changing sample rate or sample format to match that of other tracks.**
* (Linux) If Audacity is configured with the option to use libsamplerate, an action involving resampling outside libsamplerate's limits of 1/256 to 256x will cause the progress dialogue to hang, or possibly a crash.
* (Mac OS X) **Audacity will crash when you OK or dismiss the track Gain or Pan adjustment dialog** if you open that dialog by double-clicking the Gain or Pan slider in the Track Control Panel. **Workaround:** Open the adjustment dialog using the shortcuts SHIFT + G (to open the gain dialog) or SHIFT + P (to open the pan dialog).
* (OS X and Linux) In some locales, Preferences text may be truncated or overlapped, or dropdown boxes truncated.
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
* In projects containing an hour or more of total audio, there may be a delay compared to previous versions of Audacity when:
  * Dragging sample points with Draw Tool
  * Using Cut, Copy, Paste, Delete or Silence Audio.
* The delay may be more evident on slower computers. In addition, label text may not be recovered if there is a crash.
* Mouse Bindings are not currently configurable by the user.
* Snap-To does not move the cursor when first enabled or when the selection format is changed.
* We're aware that some error messages in Audacity are not as helpful as we would like them to be. If you see a cryptic error message from Audacity, try a search (or ask) on [https://forum.audacityteam.org/](https://forum.audacityteam.org/)
* When using TAB to move into a TimeText control (for example, in a Generator, Change Speed or Selection Toolbar) the first character is highlighted instead of the first non-zero character.
* (Linux) If Audacity is left open but without focus, its CPU use will rise slowly until all available system CPU is consumed. This is a bug in wxGTK 2.8.10 (not previous versions) - see [http://trac.wxwidgets.org/ticket/11315](http://trac.wxwidgets.org/ticket/11315) . This issue can be fixed by updating to wxGTK 2.8.11 or 2.8.12.

For Package Maintainers / Distributors / anyone building against 2.8.10: The upstream change in wxGTK is simple and can easily be patched into wxGTK 2.8.10 if desired: Grab [http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397](http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397), run it through dos2unix (as it seems to come with dos line-endings), and apply it to the wxGTK 2.8.10 sources (with -p3 to get the paths right if you patch from the top level of the tarball distribution).

*   (OS X 10.5.8 PPC) **"The How to Get Help" window that appears by default on launch of Audacity cannot be moved or closed.** The Audacity Log window may also be affected. **Workaround:** To stop the Welcome Screen appearing, open Audacity > Preferences: Interface and uncheck "Show How to Get Help". You can also quit Audacity, open Finder, Go > Go to Folder and type \~/Library/Application Support/audacity/ . Open audacity.cfg,select all the text and delete it. Then type the following at the top of the file:

    NewPrefsInitialized=1\
    \[GUI]\
    ShowSplashScreen=0

    Save the changes to audacity.cfg then restart Audacity.
* (Windows) It is not yet possible to drag .lnk shortcuts to audio files or projects into Audacity, or to drag them to the Audacity executable's icon. **Workaround:** Use File > Open or File > Import > Audio, or double-click the shortcut to the .aup from Windows Explorer.
* (Windows) The Audacity executable cannot be added to the Explorer "Open with" context menu if you have another version of Audacity on the system which is also called "audacity.exe". **Workaround:** either use the "Open with" dialogue to browse to the executable each time, or rename the executable to or some other unique name.
* Dragging a clip or track up or down with Time Shift Tool does not scroll the project window when tracks exist out of view above or below the scroll. **Workaround:** Choose View > Fit Vertically before drag, or click and hold the piece to be dragged, use up or down arrow on the keyboard to scroll to the target track, then drag and release the clip or track.
* Sync-Locked Tracks are not affected by all actions that change the length of a track in the Sync-Locked Track Group. Applying Paulstretch or using the Audio Track dropdown menu to change sample rate will leave the other Sync-Locked tracks desynchronised.

### Keyboard Shortcuts

* (Windows) SHIFT + A (Play/Stop and Set Cursor) and custom unmodified shortcuts for playback or recording write a label at the cursor position if the label track has the yellow focus border. **Workaround:** use up or down arrow to move focus out of the label track before using the shortcut.

### Label Tracks

* (Linux) In projects containing several hundred labels or more, Audacity will freeze on 100% CPU when opening the "Audacity Karaoke" window, and will freeze again while that window is open when editing a label or performing other actions on the project. Workaround: Open or place an empty label track above the one you want to use.
* Unless Tracks > Sync-Lock Tracks is on, pasting or inserting audio does not affect labels even if the label track is included in the selection.
* **Yellow "snap" guidelines do not appear in re-opened projects or imported label tracks** when dragging a selection to a label edge if "Snap To" is checked and a high resolution Selection Format chosen. Formats affected include "hh:mm:ss + CDDA frames (75 fps)", "hh:mm:ss + milliseconds" and "hh:mm:ss + samples".

### Miscellaneous platform-specific issues

*   (Linux) **A playback or recording freeze, recording dropouts or fast playback may occur when using PulseAudio.** Freezes may be caused by repeatedly starting and stopping playback or recording in quick succession (or by holding down the Play or Record button). **Workarounds:** Try launching Audacity from the terminal with the pulse latency set to 30 ms in an environment variable:

    env PULSE\_LATENCY\_MSEC=30 audacity

    If you get underruns noted in the terminal, try a higher number in the PULSE\_LATENCY\_MSEC command. If the problem is unchanged, try a lower number. Alternatively, bypass pulseaudio by setting the playback and recording device to an ALSA (hw) choice in Device Toolbar.
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
*   (Windows Vista and later) **The "Windows WASAPI" host supplies playback, plus a "loopback" device for** [**recording computer playback**](https://manual.audacityteam.org/o/man/tutorial_recording_computer_playback_on_windows.html) **and as of Audacity 2.1.0, experimental support for physical inputs.**

    Not everyone will necessarily experience all or any of the issues noted below, but please report any WASAPI issues not covered below to [our feedback address](https://web.audacityteam.org/contact/#feedback).

    * Although volume slider support for WASAPI is implemented, on some devices the Mixer Toolbar recording volume slider will be grayed out when selecting the Windows WASAPI host. Even if the Audacity recording slider is available, the sound device may not support Audacity adjusting its system playback or recording sliders. To control loopback recording on those systems, try adjusting the playback level of the audio player.
    * On many other devices, the Audacity recording and playback volume sliders will be "linked" together when loopback recording with playback and recording device set to the same device. Adjusting either slider will often adjust the sound you hear without affecting the achieved recording level, enabling you to record without listening. If "silent" recording does not work, mute the "Device" slider at far left of the Windows "Volume Mixer" or plug in speakers or headphones and turn off their volume.
    * If the achieved loopback recording level is too low, try turning up the volume in the application playing the audio.
    * Adjusting linked sliders during loopback recording may cause audio breakup or recording glitches.
    * Loopback recording may fail "error opening" when Audacity is set to record in mono.
    * You will normally need to start playing the loopback stream (or to have previously played some other audio in the application you are using for playback) before starting loopback recording in Audacity.
    * Changing Default Format or Exclusive Mode settings in Windows "Sound" while Audacity is open may cause "error opening" when starting to play or record. Try Transport > Rescan Audio Devices or restarting Audacity.
    * If you receive dropouts or poor quality when recording, try setting the Audacity [Project Rate](https://manual.audacityteam.org/o/man/selection_toolbar.html) to 44100 Hz and setting Default Format in Windows sound to 44100 Hz. Setting the same higher or lower rate in both places may also work.
    * Physical inputs may fail "error opening", especially when overdub recording. Try setting Audacity project rate to 44100 Hz with Exclusive Mode enabled for the device in Windows Sound for both playback and recording, or set project rate to the same as Windows "Default Format" with Exclusive Mode off.
    * Latency when overdubbing may substantially increase shortly after starting the recording.
    * "Audio to buffer" in Recording Preferences cannot be used to adjust recording latency.
    * Non-looped playback plays the selection minus the "Audio to buffer" (for example, standard playback will fail to play the buffered length at the end of the selection). The buffer setting may be set to zero when using WASAPI host.
* (Windows) **When a USB device is connected, the Mixer Toolbar input slider for that device (and sometimes for any device) may wrongly appear active** even though it has no control over the device's input level. Sometimes the Audacity slider will apply a software gain to the level (which is dangerous as it will only make the same clipped input quieter rather than stopping the clipping). Sometimes the Audacity slider will not affect the input volume at all. **Workaround:** use the slider in the Windows Control Panel where available, or any gain control on the device, or reduce the output being sent to the device.
* (Windows) **When you install Audacity for the first time or launch it after resetting Preferences** Audacity will choose a specific output and input device rather than the Sound Mapper devices that are the current Windows default devices. **Workaround:** If you lose playback audio or only record silence for this reason, use [Device Toolbar](https://manual.audacityteam.org/o/man/device_toolbar.html) to change the devices as needed, then Audacity will remember them.
* (Windows) Audacity is incompatible (or not fully compatible) with some professional sound cards or audio devices, and may crash or have limited or faulty functionality. Occasionally, this may be true of some AC97 devices built into the motherboard. **Workaround:** make a different sound card your default when using Audacity, but please e-mail the following details to our [feedback address](https://web.audacityteam.org/contact/#feedback):
  * Your version of Windows and Service Pack
  *   Name, model number and driver version number of the sound card or device.

      **Note:** Multichannel Recording in Audacity is often not possible with professional devices unless you compile Audacity with ASIO support.
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
* **"Register Effects" dialog:**
  * When you use Audacity for the first time, Audacity will scan for supported plug-ins of all types. The Register Effects dialogue lists all LADSPA, VST and Audio Unit (Mac OS X) plug-ins that are detected, with checkboxes to enable each plug-in or not. On Windows and Mac, this first time dialog will list a minimum of hard\_limiter\_1413 and sc4\_1882. Those two plug-ins are shipped with Audacity and you will usually want to enable them. Therefore you should just click OK on the dialog if you have no third-party effects.
  * **VST instruments will appear in the list but are not supported**, so will **not** load even if checkmarked.
  * The dialog is on top of other windows, so could hide any prompts that VST effects show when effects are loaded after pressing OK. This would be evident by the "loading progress" arrow in the check boxes coming to a halt and the VST dialog losing focus. To continue loading the effects in this case, press ENTER on your keyboard to OK the hidden prompt, or drag the VST dialog away to reveal the prompt then click OK on the prompt.

### Projects

* **There are currently no message box warnings when projects run out of disk space.** If you run out of disk space when editing or recording, patches of silent or corrupted audio will appear, which will also be present if you save and reopen the project. Be aware that every edit on a track takes as much in disk space as if you were recording that track, due to the ability to undo and redo. You can go to View > History and discard Undo levels to free up space.
* (OS X and Linux) Entering a backslash "\\" in a file name when saving a project gives a "Could not save project. Path not found." error.
* (OS X) **Crash closing project window immediately after saving project:** After saving a project, if you close the project window immediately the "Saving project data files" dialog completes, there will be an unexpected "Save changes?" prompt and then a crash when you choose "Yes" or "No". As long as you say "Yes", the project will be saved correctly and can be reopened normally after you restart Audacity. To be sure there is no crash, wait after "Saving project data files" completes for any "Inspecting Project Data" dialog to appear and disappear before closing the project window.
* It is no longer possible to use Save Project or Save Project As to overwrite another pre-existing project, even if that project is not in use. Functionality to overwrite a project not in use will be restored in a future version of Audacity when we are sure it will always be safe.
* Projects created by Audacity 1.1.x or earlier are no longer supported. Workaround: Export each project track as WAV using the appropriate legacy version of Audacity, then import the WAV files into current Audacity.
* Projects created by Audacity 1.2.x are partially supported - there is a possibility Audacity could corrupt them. Please make a backup copy of the project's .aup file and \_data folder to a new folder before opening the project in this version of Audacity. Once you save the project in this version, it cannot be opened in 1.2.
* Projects created by previous versions of Audacity may contain audio "block files" longer than the project format allows. Reopening such projects in previous versions might or might not result in deletion of the overlong audio. Audacity has been provisionally fixed so that it can no longer create or delete overlong files, but it cannot read any such files it encounters. If overlong files are found, a "Problems Reading Sequence Tags" message will display .
  * If you continue with the offered repair then choose "Continue without deleting" in the Orphan Block File(s) dialogue, the overlong files will be retained as "orphans" in the project's \_data folder but will appear as silence in the track(s).
  * As long as you choose "Close project immediately" in the Orphan Block File(s) dialogue, the project will quit and will not be changed in any way.
* If you encounter the "Problems Reading Sequence Tags" message, please write to our [feedback address](https://web.audacityteam.org/contact/#feedback) with a copy of the .aup file and the log as found at Help > Show Log.
* Time Track warp points saved in a 2.0.3 or later project will be preserved if opened in previous Audacity versions, but playback and display will be incorrect.

### Spectrograms

* **The displayed level of the upper, lower and center frequency lines is slightly inaccurate in linear Spectrogram view**, and may drift up or down above the true level when zooming in or out on the vertical scale. You can use Spectrogram log(f) view or set the frequencies accurately in Spectral Selection Toolbar.

### Sync-Locked Track Groups

* **If Sync-Locked Track Groups are enabled but "Editing a clip can move other clips" in Tracks Preferences is disabled**, sometimes not all sync-lock-selected tracks will be affected by Timeline-changing edits, and sometimes audio clips may be removed. You can Edit > Undo any unwanted changes.

### Time Tracks

* The lower and upper speed limits are not stored in the project, so will be restored to their default values of 90 and 110 respectively when reopening or recovering a project, or if removing a Time Track then undoing removal. Please make a note of the correct values before closing the project or the Time Track.

### Toolbars

* **Draw Tool: Holding CTRL to only move one sample then pressing Z (COMMAND + Z on Mac) to undo while still holding the mouse button will cause that track to be removed.** The removal of that track cannot be undone.
* (OS X and Linux) **Draw Tool:** Using keyboard Undo while dragging sample points will crash Audacity (this affects Draw Tool and Multi-Tool).
* (Mac OS X) **Audacity will crash if you File > Close a project window with Screenshot Tools open.** Audacity > Quit Audacity does not crash.
* **Meter Toolbar vertical orientation** is not remembered across sessions, and resizing the meters reverts from vertical to horizontal.
* (Windows XP) **Transport and Tools Toolbar buttons all display as Pause buttons.** The buttons may redraw correctly if you hover over them. **Workaround:** You can use [keyboard shortcut alternatives](https://manual.audacityteam.org/o/man/keyboard_shortcut_reference.html) for the buttons instead.

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
* (Windows Vista or later) When a USB device is connected, the listing of inputs for the built-in sound device in Device Toolbar or Devices Preferences may become corrupt, indicating single inputs as multiple inputs. It may only be possible to record from the built-in input which is currently set as default at "Sound" in the Windows Control Panel, irrespective of the input selected in Audacity. **Workaround:** Try Transport > Rescan Audio Devices, or a computer reboot.
  * Please report make and model number of devices that exhibit the issue, along with description of symptoms and any steps you have noticed that create the issue.
* (Windows Vista or later) On upgrading to current Audacity from earlier versions "error opening sound device" occurs when recording from the inbuilt sound device where there was no error in the previous Audacity with the same device configuration and operating system. **Workaround:** Use Transport > Rescan Audio Devices, or go to "Sound" in the Windows Control Panel and click OK. Note that if devices listed in Device Toolbar are disabled in "Sound" then the error is legitimate - you will need to enable those devices.
  * Please report make and model number of sound devices that exhibit the issue, along with driver version number. Please first ensure your sound device drivers are up-to-date and not generic Microsoft drivers - help available here.
* (Windows and OS X) Some USB or Firewire recording devices only record silence, or only offer mono recording for a stereo device, or only mono or stereo for a device that previously supported multi-channel recording. **Workaround:** You can try 1.3.10 Beta or earlier (including 1.2.5/6), but these versions may have other bugs or limitations.
  * Please report make and model number of devices that exhibit the issue, and your operating system details (for example, Windows 7 Service Pack 1).
* (Windows) There may be substantial delays drawing the waveform in longer projects. These include:
  * opening saved projects that were fitted to the window
  * fitting an already zoomed in project to the window or zooming in on a fitted project
  * progress dialog remains white for a long time after the progress bars complete for a file import or effect.
