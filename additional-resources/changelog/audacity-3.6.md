---
description: Audacity 3.6 was released on 16 July 2024, together with Muse Hub 2.0.
---

# Audacity 3.6

{% embed url="https://youtu.be/f5TXPUOFH6A" %}

## Major changes

### Master effects

Audacity now features master effects. Master effects are effects which apply to the entire project at once. More information can be found at [using-realtime-effects.md](../../audio-editing/using-realtime-effects.md "mention").

### New compressor and limiter

A new compressor and limiter has been added, replacing the previous versions. A gain reduction history has been added to these effects when they're used as a [realtime effect](../../audio-editing/using-realtime-effects.md).&#x20;

Factory Presets suitable for a wide range of use cases for these effects have been provided by Vladislav Isaev and Marek Iwaszkiewicz, available via the Presets & Settings button.

### New themes

Audacity now features new and improved dark and light themes. You can switch between themes via Preferences -> Interface. The theme previously used still is around as the Classic theme, and themes even older than that can be optionally [installed as custom themes](../../basics/customizing-audacity/using-themes.md#installing-custom-themes) from [here](https://github.com/LWinterberg/classicTheme).

Updated instructions on creating custom themes can be found [here](https://audacity.gitbook.io/dev/scripting/creating-custom-themes).

### Increased performance

Audacity is now quite a bit snappier than before, especially when working on larger projects and on larger screens.

## Other changes

* Added FFmpeg 7 support.
* You now can paste audio files into Audacity using Ctrl+V.
* Alternative waveform colors are now themeable by custom themes.&#x20;
* Removed the track name overlay preference and the "blend themes" preference.
* Scripting: Added `GetInfo: Type=Selection`. (Thanks, Jonatã Bolzan Loss!)
* Added an Extras > Export > Export Selected Audio option.&#x20;
* Import Raw: Added support for offsets larger than 2 GB.
* Redesigned the "what's new" dialog.&#x20;
* Added an option to the View menu to show/hide RMS in waveforms.
* OpenVINO AI effects can now be downloaded from [audacityteam.org/download/openvino/](https://www.audacityteam.org/download/openvino/)

## Bugfixes

* [#6340](https://github.com/audacity/audacity/issues/6340) When recording to a new track, the track is now scrolled back into view again.
* [#3825](https://github.com/audacity/audacity/issues/3825) The macro manager no longer shows parameterless actions as editable. (Thanks, Davi Nonnenmacher!)
* [#6138](https://github.com/audacity/audacity/issues/6138) Pressing Esc in some preference dialogs no longer saves them.
* [#4504](https://github.com/audacity/audacity/issues/4504) Fixed stray orange lines in the high contrast theme.
* [#5626](https://github.com/audacity/audacity/issues/5626) Fixed the quality slider for Ogg export on Linux. (Thanks, Devpriya Nalin!)
* [#6875](https://github.com/audacity/audacity/issues/6875) Fixed a bug which could open a project with the wrong sample rate.
* Various compiler warning fixes and OpenBSD build fixes. (Thanks, Brad Smith!)
