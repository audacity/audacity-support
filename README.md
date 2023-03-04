---
description: >-
  This site features download links to various plugins for Audacity, which can
  be used to extend Audacity's functionality to better match your workflow.
---

# Audacity Plugins

<table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td></td><td>Pitch and Tempo plugins</td><td></td><td><a href="realtime-effects/pitch-and-tempo.md">pitch-and-tempo.md</a></td></tr><tr><td></td><td>Delay and Reverb plugins</td><td></td><td><a href="realtime-effects/delay-and-reverb.md">delay-and-reverb.md</a></td></tr><tr><td></td><td>Distortion plugins</td><td></td><td><a href="realtime-effects/distortion.md">distortion.md</a></td></tr><tr><td></td><td>Dynamics Processing plugins</td><td></td><td><a href="realtime-effects/dynamics-processing.md">dynamics-processing.md</a></td></tr><tr><td></td><td>Filter plugins</td><td></td><td><a href="realtime-effects/filters.md">filters.md</a></td></tr><tr><td></td><td>Equalizer plugins</td><td></td><td><a href="realtime-effects/equalizers.md">equalizers.md</a></td></tr><tr><td></td><td>Modulation plugins</td><td></td><td><a href="realtime-effects/modulation.md">modulation.md</a></td></tr><tr><td></td><td>Noise Removal and Repair plugins</td><td></td><td><a href="realtime-effects/noise-removal-and-repair.md">noise-removal-and-repair.md</a></td></tr><tr><td></td><td><strong>Plugin Suites</strong></td><td>Recommended: <a href="realtime-effects/plugin-suites.md#muse-fx">MuseFX</a></td><td><a href="realtime-effects/plugin-suites.md">plugin-suites.md</a></td></tr></tbody></table>

On this site you can find download links for [equalizer plugins](realtime-effects/equalizers.md), [filter plugins](realtime-effects/filters.md), [delay and reverb plugins](realtime-effects/delay-and-reverb.md), and more. If you'd like to download many plugins at once, you also can try entire [plugin suites](realtime-effects/plugin-suites.md).

{% hint style="success" %}
All plugins in the [realtime effects](broken-reference/) section can be previewed in realtime in Audacity 3.2.

This means that you can change the effect settings while playing, and come back to your settings after doing many other things - without the need to undo anything.
{% endhint %}

Further information about using realtime effects can be found here:

{% embed url="https://support.audacityteam.org/audio-editing/using-realtime-effects" %}

## Installing plugins

When you install plugins, they're automatically enabled the next time you restart Audacity 3.2. Further instructions can be found here:

{% embed url="https://support.audacityteam.org/basics/installing-plugins" %}

{% hint style="info" %}
For Audacity 3.1.3 and prior, see consult [the manual](https://manual.audacityteam.org/man/installing\_plug\_ins.html) on further installation instructions.

Note: Audacity 3.1.3 does not yet support VST3 plugins.
{% endhint %}

## Popular plugins

* [#acx-check](analyzers/analysis-plugins.md#acx-check "mention"), a plugin to check if an audio book complies with the ACX guidelines
* ****[**MuseFX**](realtime-effects/plugin-suites.md#muse-fx), an effects library from Audacity's sister project.
* [**FFMPEG**](https://support.audacityteam.org/basics/downloading-and-installing-audacity/installing-ffmpeg), a library to import and export various media formats such as M4A, WMA and MP4.

## Contributing to this site

{% hint style="success" %}
This site is still in development.

If you want to add your own plugin, or one that you found on the web, read the [contributing instructions](contributing/adding-plugins-to-this-site.md).
{% endhint %}

## Plugin formats supported by Audacity

### Nyquist plugins

Audacity has built-in support for Nyquist effects on all operating systems. You can download additional Nyquist plugins, or create your own using the [Nyquist programming language](http://wiki.audacityteam.org/wiki/Nyquist\_Plug-ins\_Reference). Nyquist code can be conveniently tested using "[Nyquist Prompt](http://manual.audacityteam.org/man/nyquist\_prompt.html)" under the Effect menu.

### **LV2 plugins**

Audacity has built-in support for [LV2](http://lv2plug.in/) plugins, which are an extensible successor of LADSPA effects. LV2 plugins are mostly built for Linux, but Audacity supports LV2 on all operating systems. To install LV2 plugins, place them in the [system LV2 location](http://manual.audacityteam.org/man/effect\_menu.html#LV2\_effects) then use the Plugin Manager to enable the new plugins as in the plugin installation instructions.

### **VST plugins**

Audacity can load VST effects (but not VST instruments) on all operating systems.

### VST3 plugins

Starting with Audacity 3.2, VST3 effects are also supported on all operating systems.

### Audio Unit plugins

On Mac OS X only, you can add [Audio Unit](http://wiki.audacityteam.org/wiki/Audio\_Units) plugins to the [system plugin directories](http://manual.audacityteam.org/man/effect\_menu.html#add\_audio\_unit).

### LADSPA plugins

LADSPA is superseded by LV2. These plugins are mostly built for Linux, but some old LADSPA plugins are available via the [Legacy Windows](http://www.audacityteam.org/download/legacy-windows/) and [Legacy Mac](http://www.audacityteam.org/download/legacy-mac/) sections.

## Other sources

This site is only meant as a starting point for effects. There are many more plugins, particularly VST3 ones, available on various vendor sites, directories and online stores. Some of them are listed below:

* [Hitsquad](http://www.hitsquad.com/): [Windows](http://www.hitsquad.com/smm/win95/PLUGINS\_VST/), [Mac](http://www.hitsquad.com/smm/mac/PLUGINS\_VST/)
* [KVR Audio](http://www.kvraudio.com/): [Windows](http://www.kvraudio.com/q.php?search=1\&os\[]=win32\&ty\[]=e\&f1\[]=vst\&pr\[]=f\&sh\[]=s), [Mac](http://www.kvraudio.com/q.php?search=1\&os\[]=mac32\&ty\[]=e\&f1\[]=vst\&pr\[]=f\&sh\[]=s)
* [plugins4free](https://plugins4free.com/)
