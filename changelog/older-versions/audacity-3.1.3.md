# Audacity 3.1.3

**Audacity 3.1.3 was released on 23. Dec 2021.**

### Changes and improvements since previous version

Audacity 3.1.3 is a patch release for Audacity 3.1.

It improves the following aspects:

* Improved performance. Loading in projects especially should now be up to 50x faster compared to 3.1.0. [#2121](https://github.com/audacity/audacity/pull/2121) [#2087](https://github.com/audacity/audacity/pull/2087) [#2065](https://github.com/audacity/audacity/pull/2065) [#2267](https://github.com/audacity/audacity/pull/2267)
* Added snap guides when resizing clips [#2066](https://github.com/audacity/audacity/issues/2066)
* Added new shortcuts for looping: **Shift+L** for "Set Loop to Selection", **Shift+Alt+L** for "Clear Looping Region" [#2209](https://github.com/audacity/audacity/issues/2209)
* Added a new selection region indicator in the timeline (identical in function as the one found pre-3.1, but with updated visuals)​ [#2067](https://github.com/audacity/audacity/issues/2067)
* Changed error messages to look less like a crash report [#2178](https://github.com/audacity/audacity/issues/2178)
* Re-added the Quick Play indicator (green triangle and line) that got lost during 3.1.0 development [#2122](https://github.com/audacity/audacity/issues/2122)
* Fixed Play-at-speed not updating the playback speed dynamically [#2149](https://github.com/audacity/audacity/issues/2149)
* Fixed looping regions being created unintentionally when attempting to use Timeline Quick Play [#2182](https://github.com/audacity/audacity/issues/2182)
* Fixed looping sometimes playing the wrong audio [#2103](https://github.com/audacity/audacity/issues/2103)
* Fixed a bug that could cause data-loss when joining multiple clips [#2226](https://github.com/audacity/audacity/issues/2226)
* Fixed scrub preview visibility [#2294](https://github.com/audacity/audacity/issues/2294)
* Fixed a bug when trying to locate FFMPEG manually [#2282](https://github.com/audacity/audacity/issues/2282)
* Fixed a glitch with Loop Playback [#2314](https://github.com/audacity/audacity/issues/2314)
* Fixed a crash and a macOS-specific bug when renaming sync-locked clips using a dialog box. [#2199](https://github.com/audacity/audacity/issues/2199), [#2198](https://github.com/audacity/audacity/issues/2198)
* Fixed a crash when releasing a clip handle [#2147](https://github.com/audacity/audacity/issues/2147)
* Fixed a freeze when closing Audacity with the logging window open [#2114](https://github.com/audacity/audacity/issues/2114)
* Fixed a crash when loading a saved project using certain compilers [#2216](https://github.com/audacity/audacity/issues/2216)
* Fixed a crash on paste after running macros [#2021](https://github.com/audacity/audacity/issues/2021)
* Fixed a crash when cancelling a nyquist prompt [#2239](https://github.com/audacity/audacity/issues/2239)

### Supported Platforms

**Windows**

* Audacity 3.1.x requires the CPU to support the [SSE2 ](http://en.wikipedia.org/wiki/SSE2)instruction set which should be available on any Intel hardware produced after 2001 and any AMD hardware produced after 2003.
  * To check what SSE levels your CPU supports, you can install [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html).
  * If your hardware only supports SSE, you may download Audacity 2.0.6 see the [Legacy Windows](https://www.audacityteam.org/download/legacy-windows/) page on the Audacity Website.
* 3.1.x does not support Windows XP.
  * You may try 2.2.2 on XP, but it is unsupported.

**macOS / Mac OS X**

* Audacity 3.1.x is for Intel Macs running OS X 10.7 and later and macOS.
  * There are legacy versions for older OS X at [http://audacityteam.org/download/legacy-mac/](http://audacityteam.org/download/legacy-mac/).

**Linux**

* Linux support is tested on Ubuntu Linux.
  * Other Linux distributions should work, but aren't tested by the Audacity team.
