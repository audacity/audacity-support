---
description: Audacity 3.4 was released on 02 Nov 2023
---

# Audacity 3.4

Audacity 3.4 adds a musical view, time stretching and a new exporter.

{% embed url="https://www.youtube.com/watch?v=xgdYuSHdkso" %}
Watch the release video
{% endembed %}

## Major features

### Music workflows

Audacity now features several music related features, such as switching between hh:mm:ss time and Beats & Measures, and time-stretching clips to align them to a song's tempo.&#x20;

Details can be found in the following pages:

* [enabling-music-view.md](../../../../music/enabling-music-view.md "mention")
* [aligning-music-to-beats-and-measures.md](../../../../music/aligning-music-to-beats-and-measures.md "mention")

<figure><img src="../../../../.gitbook/assets/Audacity 3.4 project demo.png" alt=""><figcaption><p>Example project in Audacity 3.4</p></figcaption></figure>

### Time stretching

Hold Alt (macOS: Option) while hovering over the top third of a clip edge to stretch it.&#x20;

<figure><img src="../../../../.gitbook/assets/clip stretch.png" alt=""><figcaption></figcaption></figure>

More info: [#changing-speed-while-preserving-pitch](../../../../audio-editing/speeding-up-and-slowing-down-audio.md#changing-speed-while-preserving-pitch "mention")

### New exporter

<figure><img src="../../../../.gitbook/assets/export-mp3.png" alt=""><figcaption></figcaption></figure>

Audacity now features a new export window with easier access to options such as sample rate and custom mapping (for 5.1 or 7.1 audio). Additionally, the "Browse" button uses the native file browser now!

And in very related news, Opus files are now natively supported.

## Other changes

* For MP3, Audacity now always uses Joint Stereo mode, which always delivers the best possible quality. [Learn more...](https://github.com/audacity/audacity/discussions/4940)
* &#x20;[#5204](https://github.com/audacity/audacity/pull/5204) The spectrogram colors are now perceptually uniform, and the colormap has gotten a name: Roseus. It also can be used for dataviz outside of Audacity, see [dofuuz/roseus](https://github.com/dofuuz/roseus) for more info!
* &#x20;[#4720](https://github.com/audacity/audacity/issues/4720) Simplified pasting logic
* Simplified stereo tracks. Left and right channels now always have synchronized clip starts and ends, and the same sample rate in both channels.&#x20;
* &#x20;[#5014](https://github.com/audacity/audacity/pull/5014) Added cursors trimming and stretching left and right, and changed the I-beam cursor to be less similar to either
* &#x20;[#4448](https://github.com/audacity/audacity/issues/4448) When importing audio, the project sample rate no longer changes
* New defaults: The Time Signature toolbar now gets shown, the solo button is set to multi-track mode, time tracks have a wider starting range
* [#5291](https://github.com/audacity/audacity/pull/5291) Unsquished the Audacity logo found in some places of the app
* [#2330](https://github.com/audacity/audacity/issues/2330) Clicking on the border of two clips no longer merges them
* [#443](https://github.com/audacity/audacity/issues/443) Built-in Opus support.

### Libraries

* [lib-time-and-pitch](https://github.com/audacity/audacity/tree/e4bc052201eb0e6e22956cb6426e88661713c6d6/libraries/lib-time-and-pitch) implements a time stretching algorithm originating in [Staffpad](https://www.staffpad.net/). It currently is one of the highest-quality time stretching algorithms for music on the market.
* Audacity now uses Conan 2.
* Continued extracting code into libraries and modules.

### Bug fixes

* &#x20;[#3778](https://github.com/audacity/audacity/issues/3778) --nogap metadata no longer is ignored
* &#x20;[#4410](https://github.com/audacity/audacity/issues/4410) fixed a crash with LV2 plugins (thanks jfroyall!)
* &#x20;[#2471](https://github.com/audacity/audacity/issues/2471) [#4798](https://github.com/audacity/audacity/issues/4798) fixed some crashes related to macros
* &#x20;[#4769](https://github.com/audacity/audacity/issues/4769) fixed a crash when pasting in certain configurations
* &#x20;[#4677](https://github.com/audacity/audacity/issues/4677) Accessibility: GUI can be disabled again for VST2 plugins (thanks, David Bailes!)
* &#x20;[#4988](https://github.com/audacity/audacity/issues/4988) Accessibility: Restored window control IDs, improving NVDA compatibility (thanks again, David Bailes!)
* &#x20;[#4872](https://github.com/audacity/audacity/issues/4872) fixed a crash on launch on OSX 10.9 (thanks, René Bertin!)
* &#x20;[#2530](https://github.com/audacity/audacity/issues/2530) Overdubbing on Windows no longer fails with WASAPI with default Recording device.

A [full list of changes](https://github.com/audacity/audacity/milestone/16?closed=1) can be found on Github.

### Supported Platforms

**Windows**

* Audacity 3.4 is tested on Windows 10 & 11
  * Windows Vista, 7 and 8.1 may still work, but are no longer tested.

**macOS / Mac OS X**

* Audacity 3.4 is tested on macOS 12 & 13, and should support macOS 14
  * OS X 10.9 and onwards may still work, but are no longer tested.

**Linux**

* In addition to the traditional update path via package managers, Audacity is distributed as an AppImage. The AppImage gets updated at the same time as the Windows and macOS versions, so if you collaborate with users on those platforms, you may want to use the AppImage over your distribution's package manager.
* Linux support is tested with AppImages on Ubuntu 22.04.
  * Other Linux distributions should work, but aren't tested by the Audacity team.

