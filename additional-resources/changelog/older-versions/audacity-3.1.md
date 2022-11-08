# Audacity 3.1

**Audacity 3.1 was released on 27. October 2021**

{% embed url="https://www.youtube.com/watch?v=HpA138b-J9s" %}

## Changes and improvements since previous version

Audacity 3.1 replaces all previous versions.

### Clip-handles

The old **Time Shift Tool**  has been replaced by **Clip handles**. Clip handles are the rounded corners above the clip which feature the clip title. You can move clips around by simply clicking and dragging the clip handle, and you can rename clips by double-clicking the clip handle.

Label tracks don't feature clip handles, but they can be moved around just the same: Simply click on the label (the bar for region labels, the circle for point labels) and drag them to their new place.

### Smart clips

Audacity now can trim clips non-destructively by dragging the upper edge of a clip. This means that you can make clips shorter, then do some edits and then decide it should be longer anyway - the data will still be there. Copy-pasting the trimmed clip also will have that info available!

### Playback Looping

Audacity now features a new playback looping button. Enabling it will mark the current selection as a looping region, in which the playback will loop. You then can edit and select independently of the looping region. This feature replaces the previous Shift+Play behavior.

When looping is enabled, you can press Shift+Play to only play the looping region once.

### Context Menus

Since it's conception in 2000, Audacity had cross-platform support of both Windows, macOS and Linux as it's goal. But macOS at the time didn't have a right-click, so to not hide features from mac users, Audacity didn't have any right-click context menus. The situation has changed since then, and there no longer is anything hindering right-click context menus, so they now have been added to a few places, such as in the waveform of clips and the empty (dark grey) space outside of tracks, providing relevant options right there.

### New defaults

* In the preferences, is now disabled by default. This makes multi-track editing easier (even if you're not using Sync Lock). You may now see an error saying that there isn't enough space when pasting clips in-between other clips though, so if that happens to you too frequently, you may want to turn it back on.
* The spectrogram defaults have been changed: scale type to Mel (was Linear), top of scale to 20000 Hz (was 8000 Hz), window size to 2048 (was 1024), and zero padding to 2 (was 1).

### Bug fixes

Since Audacity 3.0.3, there have been two hot-fix releases (3.0.4 and 3.0.5), both fixing a bug each which could lead to data corruption. Thanks to the automatic updates introduced in 3.0.3, we actually could make these hotfixes and be reasonably certain that they'd actually reach users and potentially avert data loss.

In addition, we fixed a number of bugs, from the very small (the play button had 1-2px cut off at the bottom) to some larger ones (especially crashes/bouncing balls of death). Some more details can be found below.

#### Smaller changes

* Context menus have been added in more places.
* In the preferences, Tracks > Track behaviors > Editing a clip can move other clips is now disabled by default
* The spectrogram defaults have been changed: scale type to Mel (was Linear), top of scale to 20000 Hz (was 8000 Hz), window size to 2048 (was 1024), and zero padding to 2 (was 1).
* The main volume controls no longer change the system volume.
* Raw Import now will remember the previously used settings. Automatic detection of the format now is a button.
* A journaling feature has been added for QA purposes.
* Generate > Tone now supports triangle waves.
* There now exist "What's new" screens for the update and welcome dialogs.
* Timeline Quick Play for regions and locked regions have been replaced by playback looping.
* The shortcut to rename labels and clip names has temporarily been hardcoded to Ctrl+F2.
  * This conflicts with the default xfce shortcut to change workspaces.

#### Libraries

* FFMPEG now supports avformat 55, 57 and 58.
* PortAudio has been updated to version 19.7 and devendored (so it can be built against 19.6).
* Several libraries (expat, libsndfile, ...) have been devendored. The [CMakeLists.txt](https://github.com/audacity/audacity/blob/master/cmake-proxies/CMakeLists.txt) lists which versions we build against.

#### Fixed Bugs

There are some 50 issues closed labeled as bug. Among them:

* AppImages support localization. [#1382](https://github.com/audacity/audacity/issues/1382)
* Progress bars for Nyquist generators have been made more accurate. [#1856](https://github.com/audacity/audacity/issues/1856)
* Rhythm tracks can no longer drift off-time by 2ms over 9 minutes; they're now sample-accurate. [#1853](https://github.com/audacity/audacity/pull/1853)
* The play button has regained a pixel or two to become a triangle once more. [#1792](https://github.com/audacity/audacity/issues/1792)
* Auto Duck has been made way more accurate and should no longer miss sections above the threshold. [#1389](https://github.com/audacity/audacity/issues/1389)
* The manual now only is included in the executable once [#1917](https://github.com/audacity/audacity/issues/1917)
* Shift-clicking a menu item no longer opens the settings menu [#1358](https://github.com/audacity/audacity/issues/1358)
* FFMPEG no longer segfaults ALSA [#1170](https://github.com/audacity/audacity/issues/1170)
* Audacity no longer crashes when macros output directory is set to C:\ [#1174](https://github.com/audacity/audacity/issues/1174)
* A bouncing ball of death problem has been fixed [#1312](https://github.com/audacity/audacity/issues/1312)

### Supported Platforms

**Windows**

* Audacity 3.1 requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.1 does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.1 is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* In addition to the traditional update path via package managers, Audacity 3.0.3 and onwards are distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested on Ubuntu Linux.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
