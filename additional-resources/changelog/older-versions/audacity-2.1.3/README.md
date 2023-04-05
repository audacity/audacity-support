# Audacity 2.1.3

**Audacity 2.1.3 was released on 17 March 2017.**

**Tip:** You can use CTRL + F to search this page for different words to do with the issue you are looking for. Use Command - F on Mac.

{% hint style="info" %}
**Mac OS X**

* **Audacity 2.1.3 provides partial support for macOS 10.12 (Sierra). Gatekeeper on macOS 10.12 can cause some plug-ins to go missing and other problems. Full details at** [**https://wiki.audacityteam.org/wiki/Partial\_Support\_for\_Mac\_Sierra\_in\_2.1.3**](https://wiki.audacityteam.org/wiki/Partial\_Support\_for\_Mac\_Sierra\_in\_2.1.3)**.**
* **Audacity 2.1.3 is for Intel Macs running OS X 10.6 and later and macOS.** There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/) .
{% endhint %}

{% hint style="info" %}
**Windows**

* **Audacity 2.1.3 requires the CPU to support the** [**SSE2** ](http://en.wikipedia.org/wiki/SSE2)**instruction set** which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003. To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html). If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* **Windows XP:** You may see "Entry Point Not Found" when first launching Audacity after installation. This error occurs if you are running less than the latest "Service Pack" of updates for your Windows XP system. Please see [https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#entry\_point](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#entry\_point) for how to install the latest Service Pack and for advice about the potential security risks of running XP now that Microsoft no longer supports it.
  * 2.1.3 is the last version of Audacity that will officially support Windows XP.
{% endhint %}

## Changes since previous version

### Improvements

* (Windows) [Windows 10](https://wiki.audacityteam.org/wiki/Windows\_10\_OS) is now supported (there should be no "Internal PortAudio Error" or failure to find any devices as long as the built-in audio devices are enabled).
* (macOS) We now support Trackpad and Magic Mouse horizontal scroll without SHIFT key and Trackpad pinch and expand to zoom at the pointer.
* PortAudio upgraded to r1966 - includes Windows 10 fix.
* Extensive work to eliminate memory leaks
* Pinned (fixed and centered) play/record head for playing and recording
* New scrubbing features
  * Scrub Ruler
  * Scrub Toolbar (off by default, enable it at View > Toolbars)
* Effects and Generators:
  * Effects, edits and other functionality are now not grayed-out when paused during playback or recording and thus the editing functions can be selected and performed
  * New Distortion effect _(replaces Leveller)_
  * Change Tempo and Change Pitch have new options to use the higher quality but slower SBSMS algorithm, which ensures the selection length does not change and no content is lost.
  * Click Track generator updated and renamed to "Rhythm Track" with improved sounds and new "Swing amount" control for unequal beat duration.
  * New Generator for [Sample Data Import](https://alphamanual.audacityteam.org/man/Sample\_Data\_Import)
* New and changed shortcuts
  * ALT + RIGHT to Move to Next Label and ALT + LEFT to Move to Previous Label. These shortcuts allow the name of the label and its order in the labels in that track to be read by screen readers. As well as moving the edit position, these shortcuts jump playback to the requested label.
  * The shortcut for [Play/Stop and Set Cursor](https://manual.audacityteam.org/man/transport\_menu.html#set) has changed from SHIFT + A to the more easy to use X.
* New and changed menu items
  * New Edit Menu items "Store Cursor Position" and "Select > Cursor to Stored Cursor Position" (during transport, the position of the playback or recording cursor is stored)
    * Edit > "Region Save" and "Region Restore" renamed to "Store Region" and "Retrieve Region" respectively
  * New Tracks Menu item "Type to Create a Label (on/off)" (turning it off prevents shortcuts accidentally creating labels in the focused label track)
* New options and preferences
  * New option when exporting MP3 to mix to mono
  * New recording preferences for naming of recorded tracks
* New Timer Record features:
  * Options on completion e.g. Save and/or Export, quit Audacity, shut down (on Windows).
  * More informative dialogs, including warnings on disk space.
  * Protection against accidental canceling.
* (Linux) On Linux only, Audacity now supports FFmpeg/libav up to avformat/avcodec 57.x.x, which is compatible with current FFmpeg 3.x.x releases.
* (Mac) On Mac, audacity.app is now added to /Applications/ directly rather than adding a folder there.
* Audacity is now digitally signed on Mac and Windows (but not Windows XP).

These links should be right, once the manual is moved

* Added [Audacity Tour Guide](https://manual.audacityteam.org/man/audacity\_tour\_guide.html) to Manual.
* Added [new-features-in-audacity-2.1.3.md](new-features-in-audacity-2.1.3.md "mention") to Manual.

### Bug Fixes

Many bugs from 2.1.2 fixed. Some examples:

* Incorrect calculation of free disk space when using 24 bit audio.
* (Windows) ReaPlugs plugins froze Audacity upon interacting with the plugin.
* In 2.1.2, closing an effect window using the red close button at top left rather than the button on the dialog led to a crash.
* (Mac and Linux) Nyquist effects were excessively slow when a label track was present. This fix has also speeded up Nyquist effects generally compared to Audacity 2.1.2.

## Known Major Issues at Release

* Use CTRL + F (COMMAND + F on Mac) to search this page for a word or phrase that describes the issue you want to know about.
* You can also search the entire Audacity bugs database by multiple keywords at [https://bugzilla.audacityteam.org/query.cgi?format=specific](https://bugzilla.audacityteam.org/query.cgi?format=specific) or view the [complete list of open bugs](https://bugzilla.audacityteam.org/buglist.cgi?bug\_status=NEW\&bug\_status=ASSIGNED\&bug\_status=REOPENED\&bug\_status=DEVEL%20-%20FIX%20MADE\&columnlist=bug\_severity%2Cpriority%2Cop\_sys%2Cbug\_status%2Cshort\_desc%2Cchangeddate\&limit=0\&list\_id=4481\&order=changeddate%20DESC%2Cassigned\_to%2Cbug\_id\&product=Audacity\&query\_format=advanced).

### Accessibility

* Many, but not all parts of the Audacity interface are accessible on Windows and Mac (_read the alert above about Mac_) to those who can't use a mouse, and/or use a screen reader. It may be possible to make more of Audacity accessible in the longer term. For details, see [https://manual.audacityteam.org/o/man/accessibility.html](https://manual.audacityteam.org/o/man/accessibility.html)
* **There are some accessibility bugs in the parts of Audacity that are accessible (or behavior may vary according to the specific screen reader).**
  * Toolbars that show disabled at View > Toolbars and are then re-enabled will launch undocked if Audacity has already been restarted. **Workaround:** perform View > Toolbars > Reset Toolbars before enabling any disabled toolbars.
  * After mouse down to drag a docked toolbar to a new docked or undocked position, the track focus is removed and the selected control loses its focus border even though that toolbar still has focus. When dragging or resizing an already undocked toolbar, the selected control similarly loses its focus border.
  * Some interface text or markings remain in black when using High Contrast light-on-dark themes, so cannot be read properly.
  * Keyboard Preferences: Window-Eyes doesn't read the key bindings when View by Tree is selected, and may not always read the bindings in other views. VoiceOver and Orca do not read the key bindings at all. You could export the bindings, modify them in a text editor then import the modified list.
  * Spectral Selection Toolbar:
    * You can't enter a new low frequency first if it is above the current high frequency - in that case, you must enter the new high frequency first.
    * If you change low and high frequencies to kHz, then typing or incrementing values in the High Frequencies box has unpredictable results.
  * It is not possible to use the keyboard to move the cursor or selection region to an arbitrary position when playing or recording. However you can use the \[ or ] shortcuts respectively to set the left or right boundary of the selection at the playback or recording position ( [https://manual.audacityteam.org/man/edit\_menu\_select.html#left](https://manual.audacityteam.org/man/edit\_menu\_select.html#left) ). Different [Scrubbing](https://manual.audacityteam.org/man/scrubbing\_and\_seeking.html) modes may also be started using shortcuts or the Transport Menu, but there is no keyboard interface yet to control scrubbing. Scrubbing may be started by shortcut even if the pointer is in the waveform, although the Status Bar messages don't refer to moving the pointer to Scrub.
  * **(Windows):**
    * In certain parts of the main window, NVDA does not speak typed characters (JAWS and Window-Eyes are not affected):
    * In the main window, not speaking a character if it is a command for example, j,k,\[ or ]
    * In a label track, not speaking characters typed into a label.
  * **(OS X/macOS):**
    * Audacity is not yet fully Retina-ready. It is known that the Track Control Panel appears fuzzy. Please [let us know](http://audacityteam.org/contact/#feedback) of any other issues. [Retinizer](http://retinizer.mikelpr.com/) can no longer be applied to Audacity. If Retinizer is applied to previous Audacity this will prevent the export format being changed.
    * **Selection is not in the first control of Generators, Effects or Analyzers.** In most effects the selection is invisible and one TAB puts selection in the Manage Button. In Change Speed the selection is "Current Length" and in Change Pitch the selection is the first octave.
    * If you apply a real-time preview effect while focus has remained in Audacity, the effect loses focus. If you apply a real-time preview effect after task switching away from and back to Audacity, the effect will go behind the project window. The effect may be brought back to focus in both cases with ALT + F6.
    * It is not possible to move between the main Audacity window and some VST and Audio Unit effects using the ALT + F6 or ALT + SHIFT + F6 shortcuts when the effect is in Graphical Mode. You can use the "Manage" menu then Options... to change the effect to textual mode.
  * **(OS X/macOS) Issues with VoiceOver:**\
    \
    Unfortunately, current Audacity is not accessible for users of VoiceOver for the reasons given below. This was also the case for releases starting from Audacity 2.1.1. However, an accessible version of Audacity 2.1.1 is available on our [Mac OS X downloads page](http://audacityteam.org/download/mac). The name of this accessible version is "2.1.1-screen-reader" (DMG and ZIP downloads are available). It is hoped that future versions of Audacity will be accessible for users of VoiceOver.
    * (reported on OS X 10.9.x) After exporting, the black accessibility area is trapped in the Tooldock area, so there is no way to read the tracks. **Workaround:** Save as a project, close the project then reopen it. You can then navigate the tracks with VoiceOver.
    * If you use arrow keys to navigate the Timetext controls in Selection Toolbar, VoiceOver stops reading. **Workaround:** Use Control-Option-W
    * When you TAB forwards from "Audio Position" in Selection Toolbar, the "Selection End" or "Selection Length" radio button is read as "Selection Start". When you use COMMAND + F6 or COMMAND + SHIFT + F6 to move directly into "Selection End" from another toolbar, the button is read as "Selection Start".
    * Mixer Toolbar input/output sliders are not read, but just described as "multiple indicators". The "Graphic EQ" and vertical sliders in Equalization \*are\* read.
    * Metadata Editor table not read.
    * Edit Labels dialog not read.
    * In the "Edit Chains" window, only the first command in the "Chain" list is read, and it is only read when first accessed. In the "Select Command" window for inserting a new command in a Chain, commands in the table are not read.
    * "Manage Curves" table in Equalization not read.
* **GNU/Linux:**
  *   (Linux Ubuntu) Under Unity, keyboard shortcuts are not visible in the Audacity menus. Keyboard shortcuts are visible if you install the classic [GNOME Flashback](http://ubuntuhandbook.org/index.php/2014/04/install-gnome-classic-desktop-in-ubuntu-14-04/) interface or under Unity if you open Audacity from the terminal with

      `env UBUNTU_MENUPROXY=0 audacity`

      Audacity will now ship with src/audacity.desktop.in set to UBUNTU\_MENUPROXY=0 so Audacity compiled from source will show shortcuts in the menus and will have its own menu bar in the application. It will remain up to Ubuntu whether they use this desktop file in packaged versions of Audacity.
  * Access keys mostly do not work except for radio buttons and checkboxes.
  * (Linux with Xfce desktop) It is not possible to move forward through modeless windows, undocked Toolbars and the main project window using ALT + F6. You may move backward using ALT + SHIFT + F6, but focus may get trapped in windows or undocked toolbars.
  * (Linux) **It is not possible to TAB through the search box in Keyboard Preferences.** However, as long as the "Tree" or "Name" button is selected, you can use DOWN arrow to move out of the Search box into the list, then TAB into the lower controls.
  * (Linux) **Playing or recording then stopping causes the currently focused track or tooldock area to lose focus.** Some shortcuts for example those for Tools Toolbar will then not work until focus is restored. **Workaround:** To restore focus, deliver a mouse click in the interface or create a shortcut for Reset Toolbars and use that shortcut.
  * (Linux) TAB unexpectedly navigates out of the current tooldock area instead of staying inside it, and CTRL + F6 from Selection Toolbar and SHIFT + CTRL + F6 from the Tracks table do not navigate to the upper tooldock area but leave focus in the previous toolbar. However you can use the TAB navigation behavior described above to access the upper tooldock area.
  * (Linux) The shortcut to "Move backward from toolbars to tracks" does not cycle from the audio track to upper tooldock, only to Selection Toolbar. The shortcut to "Move forward from toolbars to tracks" does not cycle from Selection Toolbar to upper tooldock, only to the audio track.
* **(Linux) Issues with Orca:**
  * Audacity tracks are not read.
  * Not all toolbar controls are read, examples being Timetext controls, Project Rate and controls in Device Toolbar.
  * Not all controls in Preferences are read.
  * Control labels for Vamp and VST plugins are not read.
  * Control labels for Nyquist plugins are read inconsistently in older version 3 or earlier plugins (Version 4 seems to read more consistently).

### Analysis effects

* (Linux Ubuntu) **On high resolution monitors, Plot Spectrum may initialize with the lower part of the display and the effect controls off the bottom of the monitor.** As a **Workaround:** you could try holding ALT and pressing E on your keyboard to export a text file of the plot.

### Application Launch

* **If Audacity 2.1.1 or earlier had the interface language set to "Simplified" (an optional English language that can remove menu items) then current Audacity will show an error on each launch** "Language "en-simple" is unknown". No menu items will be hidden. **Workaround:** To prevent the error occurring at each launch, open Preferences then OK which changes the language to English.
  * Simplified menus are also not currently supported in any other languages, but no errors are shown. Menu items that should be hidden will be shown starting with an "!" exclamation mark.
* (Linux) If a Bluetooth audio device is in use on a PulseAudio system, Audacity may hang on launch on initial attempts, then after eventual launch Bluetooth will no longer work on the system. **Workarounds:**
  * Remove and reconnect the external Bluetooth adaptor, then launch bluetooth-applet from the command line.
  * To prevent Audacity affecting Bluetooth support, move /usr/share/alsa/bluetooth.conf to another location then reboot, or create a symbolic link from /var/lib/alsa/asound.state to /dev/null and reboot.
* (Mac and Linux) **Audacity will not launch if the temporary directory is set to a USB or hard drive formatted with FAT16, FAT32 or exFAT.** To make Audacity launch again, open the [audacity.cfg settings file](https://manual.audacityteam.org/man/preferences.html#stored). Underneath the \[Directories] line, change TempDir to any drive or partition formatted with the operating system's native file system (MacOS Extended (HFS+) on Mac, or ext3/ext4 on Linux).
* If you launch Audacity by COMMAND + Space (Spotlight Search) then ENTER (or double-click the search result), a false error prompt appears **"The application "Audacity.app" can't be opened" when in fact it will open anyway.**

### Bugs requiring more investigation

* **Bass and Treble is a real-time preview effect but may sometimes not be openable when audio is already playing, or adjusting the effect controls may not be audible.** You can still apply the effect to the audio as expected.
* (Windows Vista or later) On upgrading to current Audacity from earlier versions, "error opening sound device" occurs when recording from the inbuilt sound device where there was no error in the previous Audacity with the same device configuration and operating system. **Workaround:** Use Transport > Rescan Audio Devices, or go to "Sound" in the Windows Control Panel and click OK. Note that if devices listed in Device Toolbar are disabled in "Sound" then the error is legitimate - you will need to enable those devices.
  * Please report make and model number of sound devices that exhibit the issue, along with driver version number. Please first ensure your sound device drivers are up-to-date and not generic Microsoft drivers - help available here.
* (Windows Vista) If you change the input volume in Audacity and then record, the volume is reset to its original level. This appears to occur mostly with a few specific USB devices, and sometimes only on Vista SP1, so it is currently hard for us to fix. **Workaround:** Check if the manufacturer supplies their own drivers for the device and try those. See if upgrading to Vista SP2 or Windows 7 helps.
  * Please report make and model number of devices that exhibit the issue, also the drivers and exact version of Vista and Service Pack in use (for example, Vista 32-bit, SP1)
* (Windows Vista, 7) When a USB device is connected, the listing of inputs for the built-in sound device in Device Toolbar or Devices Preferences may become corrupt, indicating single inputs as multiple inputs. It may only be possible to record from the built-in input which is currently set as default at "Sound" in the Windows Control Panel, irrespective of the input selected in Audacity. **Workaround:** Try Transport > Rescan Audio Devices, or a computer reboot.
  * Please report make and model number of devices that exhibit the issue, along with description of symptoms and any steps you have noticed that create the issue.
* (Windows and MacOS) **On a few machines, Timer Record may not respond to a request to stop the recording or may carry on recording past the scheduled end time.** The Elapsed and Remaining Time counters may stop counting. In this case it will be necessary to force quit Audacity. On a few affected machines, the problem can be avoided if you leave focus on Audacity or ensure it has focus when recording is due to end.
* (Windows) Some devices that used to offer multiple recording channels in Audacity without ASIO may now only offer mono or stereo recording instead of the expected number of channels. Usually the multi or similar device only has 2 channels instead of the expected number. Occasionally the multi device is missing, leaving only two-channel devices to choose from. These devices have been reported:
  * Alesis Multimix-8 USB
  * DSP2000-CPort
  * M-Audio Delta 66
  * Motu 896 AD/DA FW
  * Tascam US 1641 and US 1800
* If you experience this issue please report make and model number of the device, your operating system (for example, Windows 7 Service Pack 1) and the device driver version number you are using. It is possible that more than stereo recording may be possible if you can find earlier drivers that are still compatible with your version of Windows, or if you try the Windows WASAPI host in [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html). See [Multichannel Recording](https://wiki.audacityteam.org/wiki/Multichannel\_Recording) for a list of devices reported to record multi-channels into Audacity without ASIO.
* (Windows) There may be substantial delays drawing the waveform in longer projects of an hour or more. The main problems are with opening saved projects that were fitted to the window, and fitting already zoomed in projects to the window, such as a new recording. Additionally:
  * Opening and closing large projects one after the other may eventually cause project opening to slow significantly
  * Import or effect progress dialogs may stall "whited out" for a few seconds after the progress bars complete before the waveform is drawn.

### Chains

* **Audacity's built-in generators don't yet work intuitively with Chains.** In particular, using the generator from the Generate Menu resets the Chain to use the settings last used from the Generate Menu. Plugin generators should work better with Chains.
* **Chains do not currently support export as AIFF, Other uncompressed files or any formats supported by FFmpeg.**
* **For some effects (Equalization is a known example) parameters stored in Chains may not persist are not independent of the settings saved when running the effect from the Effect Menu.** Changing the effect parameters from the Effect menu will thus change the effect parameters stored in the Chain and vice-versa. **Workaround:** For Equalization, you can use Save / Manage Curves... to save the required curve as a named curve, then choose that curve from the "Select Curve:" dropdown when setting the parameters for the Chain command.
* **You cannot set export format options or export sample rate in the Chain.** If you need to specify export options other than the current default, import or generate some audio, File > Export, select the audio type, click "Options..." then choose and save the option and cancel the export.
* (Windows) **LV2 effects can only be used in a Chain at their default settings.**
* **Noise Reduction" does not yet support storing its parameters in a Chain.** Noise Reduction will run at its last used settings if used in a Chain.

### Compiling

* **Audacity cannot build against wxWidgets compiled with STL.** . There will be many errors of the form "cannot convert ‘const wxString’ to ‘const wxChar\*". The best approach to a solution has not been decided, but if you would like to help with this please start a discussion on our [audacity-devel](http://lists.sourceforge.net/lists/listinfo/audacity-devel) mailing list.
* (Windows) LADSPA effects cannot be categorized even when Audacity is compiled with USE\_LIBLRDF defined.
* (Linux) Audacity may not always compile against supported versions of libav or FFmpeg. Audacity 2.0.6 and later supports FFmpeg 1.2 to 2.3.x (or libav 0.8 to 0.10.x).
  * Dynamic loading (as in default Audacity ./configure) requires building against the FFmpeg project - it will not build against the libav\* headers from the libav project. **Workarounds:** Configure Audacity with --disable-dynamic-loading. If dynamic loading is required, build against FFmpeg instead of libav, or you can build against libav if you remove the "#define IS\_FFMPEG\_PROJECT 1" line in src/FFmpeg.h.
  * Audacity may still build against no-longer-supported FFmpeg versions (such as FFmpeg 0.8 which is system-installed on Debian Wheezy), but configuring with --disable-dynamic-loading will be necessary. FFmpeg 0.8 has at least one known issue in Audacity 2.0.6 or later: mono WMA files export with no audio data. This issue will not be fixed given FFmpeg 0.8 is no longer supported by Audacity 2.0.6.
  * Building against self-compiled FFmpeg 2.2.2 with --disable-dynamic-loading the only argument fails on Ubuntu 13.10 with "undefined reference to 'av\_codec\_is\_encoder'". **Workaround:** Configuring with --disable-dynamic-loading and --with-lib-preference="local" (or at least --with-ffmpeg="local") may build successfully, but may not disable Libraries Preferences. The best solution may be not to disable dynamic loading.

### Effects

* **Plug-in Manager dialog:**
  * The dialogue may include some VST instruments or VST 3 effects but these are not supported so will **not** load even if enabled.
* **(macOS)** After upgrading to 2.1.3 from previous Audacity, the Generate, Effect or Analyze Menu will show working duplicate copies of shipped Nyquist plug-ins **if you have not yet deleted the old /Applications/Audacity/Plug-ins folder. Duplicates or single copies of other previously shipped plug-ins might appear even if they no longer exist, in which case they will fail to run.**
  * You can remove any duplicates that don't run by using Effect > Add / Remove Plug-ins... then click OK. This does not remove the duplicates from the Plug-in Manager's list. Alternatively you can remove all unwanted duplicates, whether you have deleted the old Audacity installation folder or not, by deleting the file pluginregistry.cfg in \~/Library/Application Support/audacity/.
  * If you delete the Audacity folder from a previous installation, remember to move any optional plug-ins you added to its plug-ins folder to the new Audacity Plug-Ins folder at \~/Library/Application Support/audacity/Plug-Ins.
* **Effects, Generators or Analyzers plug-ins (except Nyquist) that are no longer available remain listed in the menus until you open the** [**Plug-in Manager**](https://manual.audacityteam.org/man/manage\_effects\_generators\_and\_analyzers.html)**.** The plugins will then be removed from the menus after restarting Audacity. This also applies to previously shipped plug-ins that are no longer available in current Audacity, such as Hard Limiter.
* (Windows) **The Plug-in Manager does not properly disable the SC4 effect.** It will remain disabled during your current Audacity session but the next time you re-open Audacity the SC4 effect will be shown as enabled and will be available for use.

### Effects (Audio Units) (OS X)

* **All User Presets you select in the export dialog are exported at the same current settings you see in the effect**, not at the preset's currently saved setting. This means that:
  * To export a preset as saved you must first load it from User Presets before selecting it in the export dialog
  * You cannot export more than one preset at a time at different settings.
* **When you import a preset into an Apple Audio Unit, that preset's settings are applied by the effect without the effect controls updating to the new settings.** Other AU effects may ignore presets when you import them. To be sure the imported preset you want to use is loaded into the effect, select it from "User Presets".

### Effects (Audio Units) (macOS)

* **AU effects cannot show graphical interface if Audacity is set in its Preferences to a language that uses comma as decimal separator.** French however is a known exception to this.

### Effects (LV2)

* **In LV2 effects that operate in textual mode, any saved User Presets are not recalled but reset the effect to default settings. In graphical LV2 effects, resetting to defaults or recalling a saved User Preset may not affect the controls.**
* **Many LV2 plug-ins can only be used in Chains at default parameters.** Attempting to edit the parameters in the Edit Chains > Select Command window may crash Audacity. MDA and swh LV2s are among those affected.
* **MDA LV2 plug-ins on macOS crash Audacity if applied in a Chain, even at default parameters.**
* **LV2 plug-ins cannot be added to Chains if the corresponding LADSPA version of the same plug-in is also enabled.** Audacity will in this case show two copies of the LADSPA plugin in Select Command.
* (Mac OS X and Linux) **LV2 instruments that Audacity should ignore because they are incompatible are listed in Plug-in Manager** (64-bit Linux may not be affected). These plug-ins will not work in Audacity even if you re-enable them.

### Effects (Nyquist)

* **Nyquist effects may crash Audacity if used on extremely long selections** containing more than 2^31 samples (just over 13.5 hours at 44100 Hz). **Workaround** Apply the effect to multiple shorter regions (you can drag the selection back on itself to create a region contiguous with the previous one).
* Many Nyquist plug-ins will fail or may be sluggish if the track selection is too long, or could cause Audacity to crash. This is because the maximum selection length is limited by the amount of available ram, up to a maximum of 2 GB. **Workaround:** Unless you know that a particular Nyquist plug-in is safe to use with long selections, do not select more than about 1 hour of audio (44100 Hz sample rate) at a time. For higher sample rates the limit is proportionally less. If necessary, apply the effect to sections of 1 hour or less.
* Nyquist effects render the space between clips as silence. **Workaround:** Edit > Clip Boundaries > Detach at Silences (this may also remove parts of the original audio if any of it was totally silent).

### Effects (Real-time preview)

* **Real-time preview doesn't yet compensate for the latency many plugins introduce in order to provide smooth processing of audio.** Real-time preview therefore may have small gaps in the audio, or timing artifacts may be audible when previewing multiple tracks. Compensation is applied when applying the effect, unless you disable compensation in the options for the effect.
* (MacOS) **Audacity CPU use will be 100% if a non-Real time preview effect (such as most built-in effects) or other modal dialogue is open at the same time as any Audio Unit effect or a graphical VST or LV2 effect.** This is currently necessary to prevent a modal dialogue freezing Audacity when certain graphical VST or Audio Unit effects are running. **Workaround:** Excessive CPU use will not occur if you open the Manage button in the VST or LV2 effect then disable the option for graphical interface. Excessive CPU use will occur even with AU effects running in textual interface.

### Effects (Vzmp)

* (Windows) **Installing the latest 1.7.1 "Queen Mary" Vamp plugins to any of the** [**supported locations**](https://manual.audacityteam.org/o/man/analyze\_menu.html#vamp) **causes Audacity to crash when clicking any of the three "Add/Remove Plug-ins" menu items.** You can use the 1.7 plug-ins from [https://code.soundsoftware.ac.uk/projects/qm-vamp-plugins/files](https://code.soundsoftware.ac.uk/projects/qm-vamp-plugins/files) instead.

### Effects (VST and Audio Units)

* **If the track rate or project rate is other than 44100 Hz, metering, equalization and time-based effects such as delay or reverb may give unexpected real-time preview results.** Providing the project rate matches the track rate, then as a **Workaround:** click "Apply" in the effect, Edit > Undo in the Audacity menus, then preview.
* (OS X and GNU/Linux): **When saving VST effect presets, the FXP or XML file extension is not automatically offered in the file name, and not added by Audacity if you omit it.** Make sure the extension you add is the same as that shown in the "File Format" drop-down menu, otherwise the preset will not be loadable.
* (Windows and Mac OS X) **When running VST effects in** [**graphical mode**](https://manual.audacityteam.org/o/man/effects\_preferences.html#vst) **the controls of many plug-ins do not visibly respond when loading a preset file from the "Load" button**. The new settings are however loaded internally, will apply when running the effect and will be visible if you reopen the effect after running it. Controls do respond to loading a preset file if you turn off graphical mode.
* (Windows)
  * Betabugs PhaseBug and PhaseBug Mono hang the Add/Remove Plug-ins dialogue on high CPU usage after Enable and OK. Try [Audiocation Phase](https://www.audiocation.de/en/plugin) instead, or use Audacity 2.0.6 from [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) on the Audacity Website if you need to use these Betabugs plugins.
  * DFX Geometer from [http://destroyfx.smartelectronix.com/](http://destroyfx.smartelectronix.com/) may crash Audacity when loading the effect from the Effect Menu. This usually happens only once or twice when the effect is first loaded in the operating system session. Once the effect is open in Audacity it should work properly.
  * DISTRHO Mini Series VST's from [http://distrho.sourceforge.net/plugins.php](http://distrho.sourceforge.net/plugins.php) crash Audacity in graphic mode but will run in text mode (open the Effects Preferences and uncheck "Display VST effects in graphical mode").
  * MDA Tracker may crash if the effect is applied while playing audio or if stopping and starting playback.
  * ReaPlugs plugins do not see user presets which were saved in Audacity 2.1.0 or 2.1.1.
    * You must restart playback to hear the result of enabling or disabling ReaEQ tabs. "Enable" or "Active" checkboxes work correctly while playing in other ReaPlug effects.
  * SimulAnalog Guitar suite plugins may crash Audacity at the default Buffer Size of 8192. For the most stable results, use the Manage button in the effect, then Options... and change Buffer Size to 8000. If crashes persist, use the effect by just applying it, without playing audio while the effect is open.
  * Waves v5 may cause Audacity to hang if you select it in the "Register Effects" dialog then click OK.
* (OS X)
  * The following plug-ins may cause Audacity to crash if they are used after starting Audacity.
    * **AUNBandEQ**
    * **AURoundTripAAC** from "Apple audio mastering tools" (this requires OS X 10.6 or later so may crash on 10.4 or 10.5).
    * [**Blue Cat FreqAnalyst (real time)**](http://www.bluecataudio.com/Products/Product\_FreqAnalyst/)
    * [**Endless Series**](http://www.olilarkin.co.uk/index.php?p=eseries) **AU**
    * **Digitech RP250** (effects pedal)
    * **Native Instruments B4** and **Native Instruments Guitar Rig v3 and v4** (v5 does not have this issue)
    * **PredatorFX**
    * **Waves Version 7 and 8 AU:** These effects may crash Audacity on quit, after project data has been saved. Waves Version 9 AU should now work correctly.
*
  * **Workaround:** If Audio Units are not needed in Audacity, restart Audacity then open Audacity > Preferences... and choose "Effect". Under "Enable Effects", uncheck "Audio Unit", snd press OK. If Audacity won't launch you can instead add lines: to the [audacity.cfg settings file](https://manual.audacityteam.org/o/man/preferences.html#stored). Alternatively, look in the Mac Crash Report for the AU plug-in that crashed, move it from \<Your Home>/Library/Audio/Plug-Ins/Components or /Library/Audio/Plug-Ins/Components then restart Audacity.
*
  * AUPeakLimiter when opened only shows its title bar or shows a visually corrupted title bar containing black pieces from the interface. To correct the interface it may be possible to click on the plugin controls or to click the Apply button then undo the effect.

### Effects and Analysis

* (Windows 64-bit) There is no HKEY\_LOCAL\_MACHINE\SOFTWARE\ registry key where Audacity detects VST plug-ins. The HKEY\_CURRENT\_USER key searched is HKEY\_CURRENT\_USER\Software\VST\VSTPluginsPath instead of the expected HKEY\_CURRENT\_USER\SOFTWARE\Wow6432Node\VST.
* "Play" or "Preview" features that are included in a few Nyquist plug-ins do not work on Mac OS X and may cause Audacity to freeze or crash on Linux.
* **"Classic Filters" which can be enabled at Add / Remove Plug-ins has no vertical scale for the graph.**
* **Noise reduction:** Preview is not possible if the sample rate of the project is different from the rate of the track to be processed - an error message appears "Sample rate of the noise profile must match that of the sound to be processed" (even if that condition is met). Providing the noise profile rate does match the track rate, you can still apply the effect. Alternatively, change the project rate temporarily to the rate of the track.
* **Plot Spectrum and Contrast cannot currently be removed from the Analyze Menu.**
* (Linux) **On Ubuntu with the Unity interface enabled in audacity.desktop, previewing a built-in or Nyquist effect or generator in one project then opening the same effect or generator in another project will cause a crash.** There may sometimes be a crash if opening any built-in or Nyquist effect or generator in another project when such an effect is already previewing.
* (Linux) **Opening the "Help on the Internet" dialog from the Help menu or from Contrast... creates an additional empty and unclosable dialog, and the real help dialog asserts when closed.** Be sure to press "Continue" in the assertion error dialog. If you press "Stop", Audacity will force quit.
* (Linux) **Sliding Time Scale / Pitch Shift may crash randomly in Audacity built with pre-2.0.2 versions of libsbsms.** This may occur for example in the Ubuntu package of Audacity 2.0.5 on Ubuntu 14.04. **Workaround:** Build Audacity configured --with-sbsms="local", or use the Audacity package in Ubuntu 14.10 which uses libsbsms 2.0.2-1.
* (Mac) **Typing or pasting values in the parameter boxes will either not change the parameter applied or set it to zero**, as shown by the slider positions. **Workaround:** User the sliders to set effect parameters. To do so using the keyboard, CTRL + F7 if necessary to enable Full Keyboard Access, then TAB into the slider and use arrow keys or Page Up/Down.
* (OS X/macOS) **Many items in the Generate, Effect and Analyze menus (except for example Plot Spectrum) cannot by default be applied/closed by ENTER on the keyboard unless you first press TAB once.** An alternative which avoids having to use TAB is to CTRL + F7 once to enable [Full Keyboard Access](https://support.apple.com/en-gb/HT204434#fullkeyboard) for all applications. In any case, without this setting enabled, it will be impossible to navigate dialog buttons or Audacity Preferences using only the keyboard.
* (Windows and Linux) Some LADSPA "Blop" plug-ins ( [http://blop.sourceforge.net/index.html](http://blop.sourceforge.net/index.html) ) are reported to crash in Audacity on Linux Debian. On Windows, the Blop plug-ins included in [http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html](http://opensourcepack.blogspot.co.uk/p/ladspa-for-win32.html) can also crash, but this can be avoided if you ensure the "blop\_files" folder contains the necessary "\_data.dll" files for the plug-ins and that this folder is present in the Audacity "Plug-Ins" folder.
* (Windows and Mac OS X) The SC4 compressor shipped with Audacity crashes if used in a Chain.
* (Windows) **Very rarely, Audacity may show no built-in effects, generators or analyzers after upgrading from an earlier Audacity 2.1.x version.** If this happens, open Effect > Add / Remove Plug-ins..., enable the built-in effects if not already showing as enabled, then click OK.
* (Windows) LADSPA Multiband EQ may not be visible in Effect menu (occurs on Windows XP), and crashes soon after opening
* Cut Preview only plays the upper track of multiple selected or Sync-Locked tracks.
* The following effects remove envelope control points: Change Speed/Pitch/Tempo; Equalization; Noise Removal; Sliding Time Scale/Pitch Shift; any Nyquist effect in the Effect menu. Workaround: Use Tracks > Mix and Render to apply the envelope to the waveform before applying the effect.
* The Reverse effect retains the control points, but does not move them.

### Envelopes and Clips

* **A new clip created with Split New will often fail to drag back into its original track** because the new clip may not be sample-aligned with the track it came from. **If you CTRL-drag and the clip won't go back, you can Edit > Undo Time Shift to put the clip back. Disabling the** [**Tracks Preference**](https://manual.audacityteam.org/o/man/tracks\_preferences.html) **"Enable dragging of left and right selection edges" might sometimes make it easier to drag the clip back.**
* **If audio is created at other than time zero, a selection made in that clip could act on the sample before the first visually selected sample** but not act on the last visually selected sample. If fully selecting such a clip or dragging to or from its left border, the first sample will appear unselected despite being selected.
* **In a few cases, pasting into a track containing clips could remove the envelope points in the clip being pasted into.** Tracks > Mix and Render on that track could crash Audacity. It is recommended to select the track and File > Export Selected Audio... as WAV. This should render the envelope points then you can import the WAV back into Audacity.
* **Set Rate in the Audio Track Dropdown Menu does not work correctly when there is a separate clip in the track or when there are envelope points.** Clips will cause Set Rate to shorten the audio too much or insert white space into it. Envelope points will not move in response to Set Rate.
* **You may not be able to drag a clip into another track if the clip's starting position overlaps a clip in the target track.** As a **workaround:** release the mouse when the horizontal drag is complete, then drag vertically.
* [**Boundary Snap Guides**](https://manual.audacityteam.org/o/man/boundary\_snap\_guides.html) **often do not appear when snapping to Split Lines created with** [**Snap To**](https://manual.audacityteam.org/o/man/selection\_toolbar.html#snap) **enabled at hh:mm:ss + milliseconds or higher resolution.** You could label the split lines or turn Snap To off to see the guides.
* When pasting audio into tracks with envelope points, the envelope points may move in unexpected ways, so causing unwanted amplitude adjustments.

### Exports

* **WAVEX (Microsoft) headers:** GSM 6.10 files cannot be exported with WAVEX headers. Use WAV headers instead (note that GSM 6.10 only supports mono). A-Law and U-Law files with WAV headers may not be playable - use WAV headers instead. Choose "Other uncompressed files" then "Options..." to export to GSM 6.10 or A-/U-Law with WAV headers.
* **When exporting, tracks with Mute button down are excluded from the export mix as intended** but currently no warning is provided about this.
* (Linux) Exports using "M4A (AAC) Files" are very slow irrespective of the AAC encoder FFmpeg is configured to use. Workaround: choose (external program) when exporting, entering an appropriate path and command (for example, /usr/bin/ffmpeg -i - "%f") to run FFmpeg using Audacity's command-line encoder.
* (Linux) Files exported using the **FFmpeg native AAC encoder** included with many system versions of FFmpeg may be of poor quality. This is an issue with the library itself. **Workaround:** When compiling FFmpeg, configure with the libfaac encoder thus: --disable-encoder=aac --enable-libfaac --enable-nonfree. Note that libfaac has an issue not present in the native FFmpeg encoder that saved files are short at the end by about 3000 samples. Alternatively build the VisualOn AAC encoder library and configure FFmpeg with --disable-encoder=aac --disable-encoder=libfaac --enable-libvo-aacenc.
* (Linux) Mono AAC files import as stereo if FFmpeg uses the libfaad decoder. This is again an issue with the library itself.
* (Mac OS X) **When exporting using (external program) using any encoder, or using "Custom FFmpeg Export", you must agree to create and replace an unwanted "NoOverwritePrompt" file before you can export.** The exported audio file is correct.
* (OS X) **If you include / in the file name when using File > Export Audio... or Export Selected Audio..., the text before the / will be missing from the exported file name.** As a **Workaround:** add the required file name to a label then Export Multiple.
* (macOS) **The Export Multiple progress dialogues may be hidden behind the Export Multiple window for each file after the first one.** Files are still exported normally, and you can move the Export Multiple window to one side to view the subsequent progress dialogues. The confirmation dialogue listing the exported files appears normally on top of Export Multiple after export completes.
* Audacity may freeze if using the Nero AAC encoder to export via (external program). It is reported this only occurs when using multiple CPU cores. **Workaround:** Export to AAC directly by adding [FFmpeg](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) to your computer, or set Audacity to use only one CPU core.
* Custom FFmpeg Export: many combinations of formats and codecs are incompatible, as are some combinations of general options and codecs. Some files may be exported as zero kb files.

### Imports and Exports

* **A-Law, U-Law and ADPCM export formats (also RF64 for PCM exports larger than 4 GB in size) must be chosen by selecting "Other uncompressed files", ensure the "Header" is "WAV (Microsoft)", then from the "Encoding" dropdown menu select your desired encoding. We may redesign the export list in due course to make these formats easier to find.**
* **AAC exports using "M4A (AAC) Files (FFmpeg)" with project rate below 22050 Hz produce a zero bytes file if the linked to FFmpeg is configured with the default AAC encoder or libfaac. This will not affect the recommended builds of FFmpeg for Windows and Mac OS X which are built with libvo-aacenc.** Workaround: **You can export AAC below 22050 Hz using default-configured FFmpeg by choosing (external program) export instead.**
* **After saving a project or importing audio, export always offers .aiff extension if you choose "Other uncompressed files", even if you choose other than AIFF header.**
  * You can change or remove the extension in the export dialogue, or if you leave the extension unchanged, the extension of the exported file will be changed automatically to the correct default for the chosen header.
  * On Linux, .aiff extension will be offered after project save or audio import for all formats, not just for "Other uncompressed files". For other than "Other uncompressed files", the extension will be wrongly exported as AIFF unless you change or remove the extension, but the encoded data will still be correct.
* **Files containing PCM audio but misnamed as MP3 cause a freeze or crash** if an Extended Import rule is set in Preferences to force import of MP3 files using the MP3 importer.
* **ID3 metadata tags in imported MP3 or MP2 files may display incorrectly if the metadata is UTF-16 encoded.** The tags will seem to have Chinese characters and these incorrect tags will also be present if the files are re-exported. **Workaround:** Before importing the file into Audacity, open it in a tag editor or an audio application that can edit tags. If the tags are seen correctly, save the file in that application. On Windows you can use [Foobar2000](http://www.foobar2000.org/download) for this purpose.
* **On a fresh installation of Audacity or** [**initialized Preferences**](https://manual.audacityteam.org/man/preferences.html#stored)**, the "FFmpeg-compatible files" filter cannot be used to make FFmpeg import native Audacity formats such as WAV, AIFF or MP3.** Similarly on macOS, the "QuickTime files" filter cannot be used to make QuickTime import MPEG-4 files instead of installed FFmpeg.**Workaround:** Open Preferences and click "OK" then the FFmpeg and QuickTime filters will work as expected.
* **The Import / Export Preference "When importing audio files, Normalize all tracks in project" will cause import of WAV/AIFF files using "Read the files directly from the original" to lock up at the Normalize step.** If you require normalize on import for WAV/AIFF, please change the Import / Export Preference to "Make a copy... before editing".
* **When exporting using the "Other uncompressed files" option, the extension of the exported file is forced to the default for the format.** For example it is not possible to export AIFF files with .aif or .aifc extension except by using the "AIFF (Apple) signed 16-bit PCM" option instead.
* (Linux) **When using Export Multiple, asterisks (\*) or question marks (?) in track names or labels are wrongly rejected as illegal characters.** As a **Workaround** you can force use of \* or ? by exporting each region with File > Export Selected Audio... instead.
* (Linux) After opening a sufficiently long audio file, opening a second file of any size might lead to locked GUI/console messages until the first file completes play.
* (Linux) Custom FFmpeg Export dialogue does not respond to ENTER after clicking in the Formats or Codec selector.
* (Mac OS X) Dragging audio files to Audacity's icon in the Dock will only import the file for WAV, AIFF, AU, MP2, MP3, OGG, FLAC and M4A. **Workaround:** Rename MP4 files (audio or video) to M4A extension. Alternatively the files may be dragged to the Audacity icon in the folder where you have Audacity installed, dragged into the open Audacity window or imported using the Audacity menus.
* (OS X Pre El Capitan) **iTunes files cannot be opened from Media > Music in the Sidebar in Audacity's file open dialogs.** You could drag your iTunes "Music" folder to the Finder sidebar to give quicker access in Audacity open dialogs.
* (OS X) **When exporting using the "Other uncompressed files" option, the "Save As:" dropdown always offers .aiff extension even when other headers are chosen.** However the file will be exported in the correct format with the correct default extension for that format, even if you don't change the Save As extension from AIFF.
* (OS X) Files imported from iTunes could create invalid characters in the .aup project file in previous Beta versions of Audacity. If you re-open such a project in the current release, an error "reference to invalid character number" may occur. **Workaround:** Save and open a back-up copy of the .aup file in a text editor, turn off word wrap, then in the line indicated in the error message, remove the string of characters that starts with \&# and ends with a semi-colon (;). There is more help with fixing this [here](https://manual.audacityteam.org/o/man/faq\_errors.html#nwf).
* (Windows Vista, 7) Audacity will crash if attempting to open WAV files while they are still being rendered by the open source Psycle tracker program.
* If WAV/AIFF files are imported into a project using "Read Directly" import but then become unavailable, warnings are given when playing, recording, applying effects and exporting, but not all editing and project save actions are warned.
* If you import an audio file from a folder other than the one you last exported to, you cannot export over that file without changing the export directory manually.
* "Background on-demand loading" for FFmpeg (in the Libraries Preferences) does not currently allow changing the focus of waveform computation by clicking in the track. You can apply an effect to a selection wherever the normal waveform has appeared, but if you do so before the normal waveform has appeared, the audio will be silenced.
* **(Linux):** When exporting to MIDI over an existing file, no overwrite warning is given.
* **By default, the importer used depends on the import method.** For example, to be able to use [FFmpeg](https://manual.audacityteam.org/o/man/faq\_installation\_and\_plug\_ins.html#ffdown) to import native Audacity formats like WAV and MP3, you must choose the "FFmpeg-compatible files" filter in File > Open or File > Import > Audio and **always use one of those import methods**. To force FFmpeg to import native Audacity formats when using File > Recent Files or dragging in, add rules for those formats in [Extended Import Preferences](https://manual.audacityteam.org/o/man/extended\_import\_preferences.html). To force FFmpeg import irrespective of the filter when using File > Open or File > Import > Audio, uncheck "Attempt to use filter in OpenFile dialog first" in Extended Import Preferences as well as adding the rule for the format.
* **Export Multiple does not pass metadata common to all tracks to the Metadata Editor windows for each track.** **Workaround:** Export by unchecking "Show Metadata Editor before export step" in Import / Export Preferences, then enter any tags common to all tracks at File > Open Metadata Editor... before exporting. Audacity will then silently add the common and automatically generated Track Title and Track Number tags for each exported file.
* **Import > Raw Data... imports files as noise** if the Quality Preferences are set to 24-bit Default Sample Format. Set this to 16-bit or 32-bit float instead.
* **WAV and AIFF exports will fail without warning** if you import a WAV or AIFF by [reading it directly](https://manual.audacityteam.org/o/man/import\_export\_preferences.html), delete the file and its track then export new audio to the same file name and location as the deleted file. **Workaround:** Set the Preference in the above link to "Make a copy" of uncompressed files when importing.
* (OS X) Audio files containing a backslash (\\) in the name will fail "Could not open file" if you import them using File > Open... , File > Import > Audio... or File > Open Recent. This is a bug in wxWidgets. **Workaround:** Drag the file into the Audacity window instead.
*
* **Dither (corrective soft noise) is applied by default when it should not be applied** when exporting to most formats having the same or higher bit depth than the project. For example, this occurs if exporting to 16-bit WAV, 16-bit FLAC or MP3 from a 16-bit project. OGG is unaffected. **Workarounds:** Set "High Quality" dither to "None" in the [Quality Preferences](https://manual.audacityteam.org/o/man/quality\_preferences.html). To fix any files that have already been affected, see [this Forum topic](https://forum.audacityteam.org/viewtopic.php?f=28\&t=38756).
*
* Metadata:
  * Album art and lyrics in imported metadata are lost when exporting. **Workaround:** Copy the lyrics (or search for them online) then add them back to the exported file in your favorite media player. Extract the album art using a tag editor such as [IDTE](http://sourceforge.net/projects/idteid3tagedito/) (or use [Windows Media Player](http://windows.microsoft.com/en-us/windows/add-change-media-player-album-art#1TC=windows-7) or iTunes to search online for the art) then add the art back to the exported file using your media player.
  * Tags other than the seven default [Metadata Editor](https://manual.audacityteam.org/o/man/metadata\_editor.html) tags will be rewritten as custom ID3 TXXX tags, which will cause them not to be seen in applications like Windows Media Player and iTunes. Common tag examples include "Album Artist", "BPM" and "Composer".
  * ID3 v2.4 tags in imported MP3 files are not seen and will be removed on export.
  * Audacity writes both ID3 v2.3 (TYER) and v2.4 (TDRC) tags for "Year", but any applications that require the older TYER on its own (without TDRC) will not see "Year" in Audacity-exported files. The id3 command-line application on Linux is one example.
  * WMA and APE (Monkeys Audio): "Artist Name" is not seen on importing the file (Audacity bug)
  * Other metadata import/export may not always be consistent. This may depend on the program that created the imported tags and the program used to read the exported tags.
* When importing a MIDI track, the channel selection buttons to left of the track are not currently available.

### Imports and Exports (FFmpeg)

* **Custom FFmpeg Export dialog: It is necessary to save a preset before exporting it** but there is no error message when exporting from an empty presets list and no advice in the interface that presets must be saved before export.
* M4A (AAC) exports: The Quality Slider in "Specify AAC Options" has no effect if the FFmpeg library is built with the libvo-aac encoder, as are recommended builds of FFmpeg for Windows and Mac OS X. **Workaround:** You can specify a constant bit rate if you select "Custom FFmpeg Export". Click the Options... button, choose "mp4" in the formats list and "libvo\_aacenc" in the codecs list, then set bit rate in bits per second. Up to 320000 bps (320 kbps) is supported. Given the alternative AAC encoders for FFmpeg also have problems as described in these notes, you can instead export as WAV and convert to AAC in iTunes on Windows and Mac.
* M4A/MP4 (AAC): Artist and Year metadata is not exported or imported due to a bug in FFmpeg 2.2.2.

### Installation

* **Although first installation of Audacity will default audio export and project save to the user's Documents folder, TXT and XML exports such as for labels files, Plot Spectrum or keyboard bindings may offer to export elsewhere.**
  * On Windows the offered location will be the Audacity installation folder - if you are not running Audacity as Administrator, you must change the export folder in order to save the file.
  * On Mac, keyboard bindings will open first time in Applications if you have not already exported or saved any files. You must change the export directory to save if you are not running as administrator. If you cancel keyboard bindings export after it offers the Applications directory, all other TXT and XML exports will then default to saving in Applications.
  * On Linux, TXT and XML exports default to the root of your Home directory.
* (Windows) **In the Audacity installer, selecting the language to use during installation now selects the language Audacity will run in**, even if Windows is running in a different language.

### Interface

* **Audacity does not alert you if it cannot write to its configuration or settings files** or cannot remove its temporary settings files. The problem could occur due to interaction with a virus checker (this is most likely on Windows) or due to permissions problems.
  * If the problem occurs, you might find a change you made in Preferences does not take hold, or that changing the settings in an effect then trying to apply the effect won't run the effect. On Windows, you will also find a build up of aud\*.tmp or plu\*.tmp files in Audacity's [Preferences folder for application data](https://manual.audacityteam.org/o/man/preferences.html#stored) though these are noted at Help > Show Log... .
* **If Audacity is displayed on or mainly on a secondary monitor, some dialogs still open on the primary monitor instead of the secondary monitor.** Known cases are Edit Metadata Tags, Advanced Mixing Options and Plot Spectrum.
* **Performing an action which can be undone, making some types of display change then undoing the action will unexpectedly undo the display change as well.** Examples of display changes that will be undone are changes to track height, track view mode or per-track Spectrogram Settings.
* (Linux) **Audacity currently does not support being extended across multiple displays, so that Audacity is visibly straddled between monitors.** If Audacity is quit when the greater part is on the primary monitor, Audacity reopens centred on the primary monitor. If Audacity is quit when the greater part is on the secondary monitor, Audacity reopens on and at left of the secondary monitor.
* (Mac) **Copying or cutting from text boxes in file save dialogs using COMMAND + C and COMMAND + X respectively does not work.** You can however right-click or CTRL-click and choose the option to Copy or Cut.
* (Mac) **Pasting into file save dialogs using COMMAND + V has been restored with some limitations.**
  * COMMAND + V can only paste into the "Save As:" box even if another box has focus. You can use right-click or CTRL-click to paste into other boxes.
  * The entire contents of the box are replaced with the pasted content, ignoring the selection cursor or partial text selections.
* (MacOS) **The "Window" menu does not currently provide a list of open windows for moving between projects.** Use the Mac shortcut COMMAND + Accent (\`) instead to navigate open project windows. You can customize this key binding at System Preferences > Keyboard > Shortcuts, then choose Keyboard in the list on the left.
* (OS X and Linux) In some locales, Preferences text may be truncated or overlapped, or dropdown boxes truncated.
* (OS X) The "Cmd - Wheel - Rotate" mouse binding does not zoom in unless you modify the default System Preferences. \*\* On OS X 10.6 or later, go to Universal Access / Seeing / Zoom / Options and uncheck "Use scroll wheel with modifier keys to zoom".
  * Prior to OS X 10.6, go to "Mouse and Keyboard" and uncheck "Zoom using scroll ball while holding Command".
* (Windows) The "Files Missing" warning always restores maximised windows to smaller size.
* (macOS) **If upgrading from Audacity 2.1.1 directly to 2.1.3 release or later, the Audacity Title Bar and window buttons may be hidden** under the Menu Bar. **Workaround:** Use Window > Zoom or restart 2.1.3.
* After changing language in Preferences, a few parts of the interface don't change until Audacity is restarted.
* Audacity has several weaknesses in preserving the context of the audio being worked with:
  * If playback scrolls, pressing Stop leaves the waveform where it stopped and the cursor or left selection edge invisible. Pressing Play to resume then scrolls the waveform to start at the playback start point, hiding the previously visible context before the cursor or left selection edge. **Workaround:** Left arrow after Stop centers the view at the cursor position. or move the left or right selection edge into view with the edge centered, so can show context that has been moved out of view.
  * Zoom to Selection shows none of the surrounding context
  * Zoom Normal doesn't always keep the selection or cursor on screen.
* By default, all audio in the project is selected if an action requiring a selection is requested when there is no selection (this behavior can be turned off in the Tracks Preferences). If enabled:
  * You can always apply effects to the whole project in one step, but you can also delete audio in all tracks if you press Delete when there is no selection. That is easy to Undo, but we aim to tweak this behavior and make it more customizable in a future Audacity.
  * A few items in Edit menu are incorrectly grayed out if no track is selected.
* Crashes on incorrect behaviour on quit:
  * (Windows) **Audacity crashes after quit if quit from the Windows 7 Task Manager and "About Audacity" is open.** If you save changes to a project, these changes are saved correctly.
  * (Windows) **Audacity cannot be quit from the Task Bar icon if "About Audacity" is open.**
  * (Linux) Any quit by any method produces "OS\_IS\_BAR (bar)" and "GTK\_IS\_WIDGET" (widget) assertion errors in the terminal if Audacity is launched from there.
* If Sync-Lock Tracks is enabled, there is no indication of the cursor in the Sync-Locked tracks.
* Mouse Bindings are not currently configurable by the user.
* We're aware that some error messages in Audacity are not as helpful as we would like them to be. If you see a cryptic error message from Audacity, try a search (or ask) on [https://forum.audacityteam.org/](https://forum.audacityteam.org/)
* When using TAB to move into a TimeText control (for example, in a Generator, Change Speed or Selection Toolbar) the first character is highlighted instead of the first non-zero character.
* (Linux) If Audacity is left open but without focus, its CPU use will rise slowly until all available system CPU is consumed. This is a bug in wxGTK 2.8.10 (not previous versions) - see [http://trac.wxwidgets.org/ticket/11315](http://trac.wxwidgets.org/ticket/11315) . This issue can be fixed by updating to wxGTK 2.8.11 or 2.8.12.

For Package Maintainers / Distributors / anyone building against 2.8.10: The upstream change in wxGTK is simple and can easily be patched into wxGTK 2.8.10 if desired: Grab [http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397](http://trac.wxwidgets.org/changeset/62397?format=diff\&new=62397), run it through dos2unix (as it seems to come with dos line-endings), and apply it to the wxGTK 2.8.10 sources (with -p3 to get the paths right if you patch from the top level of the tarball distribution).

* (Windows) It is not yet possible to drag .lnk shortcuts to audio files or projects into Audacity, or to drag them to the Audacity executable's icon. **Workaround:** Use File > Open or File > Import > Audio, or double-click the shortcut to the .aup from Windows Explorer.
* (Windows) The Audacity executable cannot be added to the Explorer "Open with" context menu if you have another version of Audacity on the system which is also called "audacity.exe". **Workaround:** either use the "Open with" dialogue to browse to the executable each time, or rename the executable to or some other unique name.
* Dragging a clip or track up or down with Time Shift Tool does not scroll the project window when tracks exist out of view above or below the scroll. **Workaround:** Choose View > Fit Vertically before drag, or click and hold the piece to be dragged, use up or down arrow on the keyboard to scroll to the target track, then drag and release the clip or track.
* Sync-Locked Tracks are not affected by all actions that change the length of a track in the Sync-Locked Track Group. Applying Paulstretch or using the Audio Track dropdown menu to change sample rate will leave the other Sync-Locked tracks desynchronised.

### LAME

* (Mac) **If you use Libraries Preferences to locate LAME manually, it is necessary to change the "File type:" filter** to the choice for Dynamic Libraries or All Files in order to make libmp3lame.dylib selectable.

### Label Tracks

* **The Tracks preference "Type to create a label" for typing in the focused label track doesn't work if you play audio then arrow-key** into the label track to give it focus. **Workaround:** During playback, either use CTRL + B to add a label at the selection then type, or make a different selection in the label track then type.
* **The frequency range stored in a Region label created in a Spectrogram track with Spectral Selection enabled can only be modified by "Edit..." from the label's right-click context menu.**
  * Currently there is no validation on OK'ing the entered frequency value, so invalid values can be entered with unexpected results.
  * You can instead change the frequency range and save a new label in the same time selection then click in each label to display its frequency range, but if you TAB between labels in the same time selection all labels will show the frequency range of the last added label.
* Unless Tracks > Sync-Lock Tracks is on, pasting or inserting audio does not affect labels even if the label track is included in the selection.
* **Yellow "snap" guidelines do not appear in re-opened projects or imported label tracks** when dragging a selection to a label edge if "Snap To" is checked and a high resolution Selection Format chosen. Formats affected include "hh:mm:ss + CDDA frames (75 fps)", "hh:mm:ss + milliseconds" and "hh:mm:ss + samples".

### Launching Audacity

* (Mac El Capitan) **Audacity may not launch and a "Can't be opened" message will be displayed.** Console log messages may refer to "Could not store lsd-identifiers file at /private/var/db/lsd/com.apple.lsdschemes.plist".
  * **Workarounds:** Right-click or CTRL-click over Audacity.app, choose "Show Package Contents", then in the "MacOS" folder, double-click the "Audacity" executable. This will launch a Terminal window and Audacity will also launch. Alternatively you can try resetting the LaunchServices database by running the following Terminal command then rebooting:

sudo /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user ; killall Dock

### Localization

* **For languages that use comma decimal separator, comma can only be used in effects on OS X by choosing that language in Audacity Preferences.** This applies even if Mac system language is set to a comma-separated locale. On all systems, comma separator in effects after choosing a comma-separated language in Audacity Preferences requires that language to be installed on the system.
* (Linux Ubuntu/Debian): **If Ubuntu or Debian is installed in a right-to-left (RTL) language such as Hebrew or Arabic, most of the Audacity interface will be empty and thus unusable.** The only guaranteed solution is to set system language to English in system settings then restart the computer and change Audacity language to Hebrew at Edit > Preferences..., "Interface". There will still be some less serious RTL issues.
* (Linux) **If system locale is set to Valencian and Audacity language in Interface Preferences is set to "System", Audacity will be in Catalan.** You can change to Valencian language in Interface Preferences.
* (OS X) **Audacity set to "System" language in Interface Preferences as in a new installation or after preferences reset will always be in English language** irrespective of the Mac system locale. **Workaround:** Follow the steps at [https://manual.audacityteam.org/o/man/faq\_about\_audacity.html#language](https://manual.audacityteam.org/o/man/faq\_about\_audacity.html#language) to change the Audacity language in Interface Preferences.
* (Windows) **Audacity must be explicitly set to use Galician or Valencian in Interface Preferences to display those languages.** Setting the Windows Region and Language format to Galician or Valencian and Audacity to "System" language will only display Audacity in English.

### Miscellaneous platform-specific issues

* (Mac OS X) If using Audacity when the "Hear" audio plug-in is running (or has been since boot), there will be excessive memory usage which could cause a crash: this appears to be due to buggy memory allocation in "Hear"
* (Mac OS X) Very occasionally, users may find that after running Audacity, other media players don't produce any sound, or crash: to resolve this, set up your sound device in Apple Audio MIDI Setup to work in stereo, 16-bit, with a sample rate of 44100 Hz or 48000 Hz, and set the sample format and rate identically in Audacity. More help at: [http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064](http://audacityteam.org/forum/viewtopic.php?f=17\&t=5064)
*   (Linux) **A playback or recording freeze, recording dropouts or fast playback may occur when using PulseAudio.** Freezes may be caused by repeatedly starting and stopping playback or recording in quick succession (or by holding down the Play or Record button). **Workarounds:** Try launching Audacity from the terminal with the pulse latency set to 30 ms in an environment variable:

    *

    env PULSE\_LATENCY\_MSEC=30 audacity

    If you get underruns noted in the terminal, try a higher number in the PULSE\_LATENCY\_MSEC command. If the problem is unchanged, try a lower number. Alternatively, bypass pulseaudio by setting the playback and recording device to an ALSA (hw) choice in Device Toolbar. More help with this can be found here.

### Mixer Board

* **Soloing or unsoloing a track in Mixer Board when in "Multi-track" Solo button mode** may not immediately update the Solo button or waveform greyed/ungreyed state in the project window. **Workaround:** Click anywhere in (or task switch back to) the project window to refresh it (on Mac, you must click in the waveform or Track Control Panel or wait for the tracks to scroll when playing).
* (Windows and Linux) If Mixer Board is open and more tracks are added so that the horizontal scrollbar must be used, newly added tracks may not be visible or newly deleted tracks may show as empty space. **Workaround:** To see all the tracks without redundant space, close and reopen the project then reopen Mixer Board.
* If you change the meter range in Preferences this is not reflected in the Mixer Board meters until restart.
* (Linux) Meters may not respond immediately to playback which could cause them to report incorrect peak level or not display clipping.
* (Windows and Linux) **The Select All (CTRL + A) and Deselect All (CTRL+ SHIFT+ A) shortcuts may not work** when focus is in Mixer Board. **Workaround:** CTRL+TAB to return focus to the main project window, then use the shortcuts there.

### Modules

* (Windows, Mac OS X) **Modules originally shipped with obsolete 1.3.x versions of Audacity will cause Audacity to crash once at launch** if they exist in a "modules" folder alongside the Audacity executable and are enabled in Modules Preferences.

### Moonphase

{% hint style="info" %}
Very occasionally, Audacity projects may reopen with missing block files, orphan block files and/or silenced audio data. There may be unwanted renaming or moving of AU files within the project. We believe having multiple projects open at once or having projects open in file manager programs are among the possible causes. See Bug:137 for more background to this. The AUP file may be saved with references to only a few of the AU files, again leading to "orphan block file" warnings. Sometimes the AUP file may not be found after saving and closing the project. Sometimes errors occur when saving the project or when Audacity autosaves, perhaps wrongly suggesting the disk is full or not writable (if this happens, try exporting the audio as WAV). Please write to our feedback address if you encounter any of the above symptoms. As many as possible of the following will help us enormously if you can attach them to your report: A copy of the saved AUP project file A copy of the AUTOSAVE (temporary project) file. This file is stored inside the "AutoSave" folder in Audacity's application data folder. For problems that occur when reopening or working in a project, the log file at Help > Show Log..
{% endhint %}

### Playback and Recording

* **Append Record with Transport > Overdub (on/off) enabled may cause periodic playthrough** of previously recorded audio. If you use the Stop button or SPACE to stop the previous recording instead of SHIFT + A (Stop and Set Cursor), this may reduce occurrences of the issue.
* **Clicking in Timeline Quick-Play plays from the editing cursor or plays the selection instead of playing from the click position as intended if Snap To is enabled and Selection Format is seconds, hh:mm:ss or dd:hh:mm:ss.** As **Workaround**, click exactly above the yellow snap line.
* **Having mouse-dragged a selection in the waveform, you must now on Windows and Linux release the mouse before you can use SPACE** to play or stop. This is because we now disallow shortcuts with mouse down for greater safety. On MacOS, shortcuts are currently still allowed with mouse down but this may change. The best current **Alternative:** is to use [Timeline Quick-Play](https://manual.audacityteam.org/o/man/timeline.html#tqp). Drag a selection in the Timeline and release the mouse to play that selection immediately, without the need to use SPACE. To extend or contract that selection then listen to the result, hover over either edge of the Timeline [Quick-Play region](https://manual.audacityteam.org/man/timeline.html#symbols) so that the mouse pointer shows left- and right-pointing arrows, drag in either direction, then release the mouse. The operation may prove easier to use if you right-click the Timeline and click "Enable dragging selection".
* **Sound Activated Recording mode is disabled if there is no displayed recording meter** (neither Recording Meter Toolbar or Combined Meter Toolbar). Recording will proceed regardless of the Sound Activation Level threshold and the actual recording level.
* **The level of an active recording can be changed by the Mixer Toolbar sliders in any other open project windows.**
* **Timer Record warns of insufficient disk space to save the recording as a project, but does not warn about sufficient space to export.** If space is insufficient to export, the exported file will be shortened to fit the available space.
* (Mac OS X) **The default 100 ms "Audio to buffer" setting in Audacity's Recording Preferences (which also affects playback) is too high, especially for many USB or firewire devices or if using** [**Soundflower**](https://manual.audacityteam.org/man/tutorial\_recording\_computer\_playback\_on\_mac.html). There may be immediate clicky playback of good audio and more rarely, recordings may be corrupted with clicks after a period of time. Set Audio to buffer as low as you can consistent with still getting a good recording, or use the built-in output or input instead. Also see: [How can I prevent clicky recordings on Mac OS X?](https://manual.audacityteam.org/man/faq\_recording\_troubleshooting.html#mac\_crackle).
* (OS X and Linux) Audacity now works very well with [JACK](http://jackaudio.org/), with the following bugs and limitations:
  * Clicking in the input meter to start monitoring will crash Audacity if it has not yet used JACK for playback or recording in that session. **Workaround:** Before recording the first track in a session, click "Pause" then "Record" to enable the recording meter.
  * The best way to connect to available JACK inputs and outputs is directly from Device Toolbar. Use Transport > Rescan Audio Devices when necessary, for example to make new JACK applications ports available to Audacity. See here for details.
  * On Mac, Audacity may freeze if JACK is launched by QjackCtl then Audacity is launched. **Workaround:** Use JackPilot to launch JACK, or launch QJackCtrl after Audacity and JACK are running.
* (OS X and Linux) PortAudio's default latency values which are used when recording with software playthrough are much lower than Audacity's default "Audio to buffer" setting. This may cause playthrough or recording glitches when recording with software playthrough enabled, especially when using pulse on Linux. Workaround for Linux: record from an (hw) device instead if software playthrough is required.
* (OS X) Playback to Bluetooth headsets gives an error. Workaround: Revert to Audacity 1.3.3 (this may only work with stereo headsets), or use [Soundflower](http://www.cycling74.com/products/soundflower) to send the Audacity output to an audio application that works with the headset.
* (OS X) The "Hardware Playthrough" option in Recording Preferences is currently unsupported on all known Mac hardware. Try the "Software Playthrough" preference instead. If that does not work, the third-party [LineIn](http://www.rogueamoeba.com/freebies/) application also provides software playthrough.
* (Windows and OS X) **Launching Audacity or using Devices Preferences or Device Toolbar to change host or device resets the left/right balance** of connected audio devices to center. **Workaround:** on a few Windows machines choosing Windows WASAPI host in Device Toolbar or Devices Preferences might prevent the balance reset.
* (Windows) **When a USB device is connected, the Mixer Toolbar input slider for that device (and sometimes for any device) may wrongly appear active** even though it has no control over the device's input level. Sometimes the Audacity slider will apply a software gain to the level (which is dangerous as it will only make the same clipped input quieter rather than stopping the clipping). Sometimes the Audacity slider will not affect the input volume at all. **Workaround:** use the slider in the Windows Control Panel where available, or any gain control on the device, or reduce the output being sent to the device.
* (Windows) **When you install Audacity for the first time or launch it after resetting Preferences Audacity will choose the named recording and playback devices that are the current Windows default devices**, rather then the MME "Sound Mapper" devices which are permanently mapped to whatever the current defaults are. **Workaround:** If you lose playback audio or only record silence after changing the Windows default devices, use [Device Toolbar](https://manual.audacityteam.org/o/man/device\_toolbar.html) to change the devices as needed, then Audacity will remember them.
* (Windows) Audacity is incompatible (or not fully compatible) with some professional sound cards or audio devices, and may crash or have limited or faulty functionality. Occasionally, this may be true of some AC97 devices built into the motherboard. **Workaround:** make a different sound card your default when using Audacity, but please e-mail the following details to our [feedback address](http://audacity.sourceforge.net/contact/#feedback):
  * Your version of Windows and Service Pack
  *   Name, model number and driver version number of the sound card or device.

      **Note:** Multichannel Recording in Audacity is often not possible with professional devices unless you compile Audacity with ASIO support.
* Adding or removing an external audio device while Audacity is open will not be automatically reflected in the list in Device Toolbar or Devices Preferences. On Mac, unplugging then replugging an external device will give "error while opening sound device" (on Linux, pressing "Record" a second time will remove the error). **Workaround:** Use Transport > Rescan Audio Devices.
* If you move tracks while playing for example using the Audio Track Dropdown Menu, playback does not change, and if you use that menu to Swap Stereo Channels during playback, the left channel is silenced. **Playback responds to the other commands in that menu.**
* Play-at-Speed slider: Change of playback speed is no longer automatic after you move the play-at-speed slider. To change speed, move the slider, then click the green button to left of the slider to play at the new speed.
* Timer Record cannot maintain scheduled duration if system clock changes
* (Windows Vista, 7) If you change the explicit output and/or input device selected in Device Toolbar or Devices Preferences and then change "Host", the selected devices will change back to those originally selected.
* (Windows XP and earlier) Changing the default playback or recording devices in the Windows Control Panel while Audacity is open may cause all the playback or recording choices in Device Toolbar to produce silence (or to fail with "Error opening sound device"). This problem may also occur when connecting or disconnecting a USB device while Audacity is open. **Workaround:** Click Transport > Rescan Audio Devices then you can play or record.
*
*   (Windows Vista and later) **The "Windows WASAPI" host supplies playback, plus a "loopback" device for** [**recording computer playback**](https://manual.audacityteam.org/o/man/tutorial\_recording\_computer\_playback\_on\_windows.html) **and experimental support for physical inputs.**

    Not everyone will necessarily experience all or any of the issues noted below, but please report any WASAPI issues not covered below to [our feedback address](http://audacity.sourceforge.net/contact/#feedback).

    * When Windows is installed in a language using Unicode characters (such as Russian or German), WASAPI host in Device Toolbar shows incorrect characters for the names of Playback and Recording subdevices.
    * Although volume slider support for WASAPI is implemented, on some devices the Mixer Toolbar recording volume slider will be grayed out when selecting the Windows WASAPI host. Even if the Audacity recording slider is available, the sound device may not support Audacity adjusting its system playback or recording sliders. To control loopback recording on those systems, try adjusting the playback level of the audio player.
    * On many other devices, the Audacity recording and playback volume sliders will be "linked" together when loopback recording with playback and recording device set to the same device. Adjusting either slider will often adjust the sound you hear without affecting the achieved recording level, enabling you to record without listening. If "silent" recording does not work, mute the "Device" slider at far left of the Windows "Volume Mixer" or plug in speakers or headphones and turn off their volume.
    * If the achieved loopback recording level is too low, try turning up the volume in the application playing the audio.
    * Adjusting linked sliders during loopback recording may cause audio breakup or recording glitches.
    * Loopback recording may fail "error opening" when Audacity is set to record in mono.
    * You will normally need to start playing the loopback stream (or to have previously played some other audio in the application you are using for playback) before starting loopback recording in Audacity.
    * Changing Default Format or Exclusive Mode settings in Windows Sound while Audacity is open may cause "error opening" when starting to play or record. Try Transport > Rescan Audio Devices or restarting Audacity.
    * If you receive dropouts or poor quality when recording, try setting the Audacity [Project Rate](https://manual.audacityteam.org/o/man/selection\_toolbar.html) to 44100 Hz and setting Default Format in Windows Sound to 44100 Hz, with both "Exclusive Mode" boxes _unchecked_. Other rates may work, providing the same rate is set in both places. The most likely place for a dropout is within the first second or two of recording.
    * Physical inputs may fail "error opening", especially when overdub recording. Try setting Audacity project rate to 44100 Hz then for both the playback and the recording device in Windows Sound, ensure both "Exclusive Mode" are _checked_ (enabled). You can also try setting Audacity Project Rate to the same as Windows "Default Format" with both Exclusive Mode boxes _unchecked._
    * Latency when overdubbing may substantially increase shortly after starting the recording.
    * "Audio to buffer" in Recording Preferences cannot be used to adjust recording latency.
    * Non-looped playback plays the selection minus the "Audio to buffer" (for example, standard playback may fail to play the buffered length at the end of the selection). Setting the buffer setting to zero when using WASAPI host may make it more likely that audio will play fully.

### Preferences

* (Linux) **If your project window is not maximised and you OK in Preferences with a label track present, the project window will be resized very narrow and there will be an assert in the terminal and possibly the project.** Audacity will not be usable if a whited out assertion dialogue appears in the project window.

### Projects

* **Importing an audio file or opening an AUP file may no longer permanently set the Save Project path to where the file came from.** After closing the project, Save Project reverts to its previous path. Also if you import an audio file or open an AUP file after importing a MIDI or Labels file, Save Project may not change its path even temporarily.
* **There are currently no message box warnings when projects run out of disk space.** If you run out of disk space when editing or recording, patches of silent or corrupted audio will appear, which will also be present if you save and reopen the project. Be aware that every effect applied to a complete track takes as much in disk space as if you were recording that entire track, and partial changes take proportional amounts of space, due to the ability to undo and redo. You can go to View > History and discard Undo levels to free up space.
* (OS X and Linux) Entering a backslash "\\" in a file name when saving a project gives a "Could not save project. Path not found." error.
* (macOS) **The button order in the "Save Changes?" dialog changed in 2.1.2 to a less Mac-like sequence of Cancel, No. Yes.**
* It is no longer possible to use Save Project or Save Project As to overwrite another pre-existing project, even if that project is not in use. Functionality to overwrite a project not in use will be restored in a future version of Audacity when we are sure it will always be safe.
* Projects created by Audacity 1.1.x or earlier are no longer supported. Workaround: Export each project track as WAV using the appropriate legacy version of Audacity, then import the WAV files into current Audacity.
* Projects created by Audacity 1.2.x are partially supported - there is a possibility Audacity could corrupt them. Please make a backup copy of the project's .aup file and \_data folder to a new folder before opening the project in this version of Audacity. Once you save the project in this version, it cannot be opened in 1.2.
* Projects created by previous versions of Audacity may contain audio "block files" longer than the project format allows. Reopening such projects in previous versions might or might not result in deletion of the overlong audio. Audacity has been provisionally fixed so that it can no longer create or delete overlong files, but it cannot read any such files it encounters. If overlong files are found, a "Problems Reading Sequence Tags" message will display .
  * If you continue with the offered repair then choose "Continue without deleting" in the Orphan Block File(s) dialogue, the overlong files will be retained as "orphans" in the project's \_data folder but will appear as silence in the track(s).
  * As long as you choose "Close project immediately" in the Orphan Block File(s) dialogue, the project will quit and will not be changed in any way.
* If you encounter the "Problems Reading Sequence Tags" message, please write to our [feedback address](http://audacity.sourceforge.net/contact/#feedback) with a copy of the .aup file and the log as found at Help > Show Log.
* Time Track warp points saved in a 2.0.3 or later project will be preserved if opened in previous Audacity versions, but playback and display will be incorrect.

### Scrubbing and Seeking

* **Currently we allow Scrub or Seek to be paused, but there are two problems if Pause is used:**
  * Unlike during other paused playback, menu items cannot be clicked on in order to stop playback and carry out the requested action. If you pause scrubbing, press ESC, SPACE or the Stop button when you want to edit.
  * If you start Scrub or Seek by menu item, Scrub Toolbar button or shortcut then engage Pause, move the mouse then release Pause, moving or dragging will not start Scrub or Seek. If you click and release in Scrub Ruler then engage Pause, move the mouse then release Pause, moving the mouse will not start Scrub.
* **Horizontal scrolling is permitted during Scrubbing and Seeking** although it is unhelpful for the waveform to shift while in Scrub mode. If you are using a Magic Mouse on MacOS (or other mouse with a control surface) be careful not to brush the mouse surface during Scrub, or try temporarily disbling horizontal scroll in the mouse's preferences.
* **Scrubbing or Seeking with Pinned head:**
  * **To Scrub at normal 1x forwards speed without using the mouse wheel** it is always necessary to move the mouse to the end of the window, even if the project is shorter than the window width. To backwards play at 1x, move the pointer to the start of the project. You can Seek at 1x with the pointer in the center of the window.
  * **If you try to forwards scroll-scrub in a less than half-width project** by moving the mousewheel downwards to _reduce_ backwards speed, moving the pointer to the end of the window will then achieve less than 1x speed. In that case, move the mousehweel upwards.
  * **You cannot easily forwards-scrub from the start of the audio** or backwards-scrub from the end of the audio because playback might cease before the pointer moves far enough to change playback direction. Enabling "scrolling left of zero" in [Tracks Preferences](https://manual.audacityteam.org/man/tracks\_preferences.html) will make scrubbing easier for these use cases.
* **Starting Scrub using Scrub Ruler, or then changing to Seek by clicking or dragging in Scrub Ruler, changes any pre-existing waveform selection or cursor position**
* (MacOS) If Scrub Toolbar is enabled and you remain hovered over a button after clicking it, the button tooltip may incorrectly change to "Hide Scrub Ruler" (or to "Show Scrub Ruler" if Scrub Ruler is turned off).

### Spectrograms

* A [Spectral Selection](https://manual.audacityteam.org/o/man/spectral\_selection.html) created in Spectrogram view currently only works with the three specific [spectral edit effects](https://manual.audacityteam.org/o/man/spectral\_selection.html#edit). These effects can also only be used while in Spectrogram view and require that Spectral Selection be checked "on" in either the Track Control Panel for the track or in Spectrogram Preferences. All other effects and for example cut or delete will act on the entire spectrum in the time range regardless of the spectral selection.

### Sync-Locked Track Groups

* **If Sync-Locked Track Groups are enabled but "Editing a clip can move other clips" in Tracks Preferences is disabled**, sometimes not all sync-lock-selected tracks will be affected by Timeline-changing edits, and sometimes audio clips may be removed. You can Edit > Undo any unwanted changes.

### Time Tracks

* The lower and upper speed limits are not stored in the project, so will be restored to their default values of 90 and 110 respectively when reopening or recovering a project, or if removing a Time Track then undoing removal. Please make a note of the correct values before closing the project or the Time Track.

### Timer Record

* (Mac) **The Timer Record setup, "Waiting" and "Progress" dialogs may show the date in UK dd/mm/yy format** even if the language in System Preferences is set to "US English". The exact behaviour may depend on the machine or version of OS X.
* (MacOS and Linux) **If Timer Record is set to "Exit Audacity" after recording completes, a crash will be reported on exit.** The project and/or audio file will be still be saved correctly.

### Toolbars

* **Toolbars fail to arrange correctly when maximizing or restoring the size of the main project window**. As **Workarounds:**Try resizing instead, for example resize larger until the toolbars fill the space, then maximize. If that doesn't help, select "View > Toolbars > Reset Toolbars" then manually rearrange the toolbars the way that you want them.
* (Windows) **Hover tooltips for toolbar buttons are only shown when the button is active (enabled).**
* **Meter Toolbar vertical orientation** is not remembered across sessions, and resizing the meters reverts from vertical to horizontal.
* (Windows XP) **Transport and Tools Toolbar buttons all display as Pause buttons.** The buttons may redraw correctly if you hover over them. **Workaround:** You can use [keyboard shortcut alternatives](https://manual.audacityteam.org/o/man/keyboard\_shortcut\_reference.html) for the buttons instead.
