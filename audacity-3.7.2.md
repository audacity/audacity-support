---
description: Audacity 3.7.2 was released on 10 Mar 2025
---

# Audacity 3.7.2



This is a patch release. It contains the following changes:&#x20;

* [#8290](https://github.com/audacity/audacity/issues/8290) Fixed a crash when applying some effects across multiple tracks if one track is empty.
* [#8157](https://github.com/audacity/audacity/pull/8157), [#8155](https://github.com/audacity/audacity/issues/8155) Fixed some crashes emenating from the Mixer window.
* [#7672](https://github.com/audacity/audacity/issues/7672) Returned the "Residue" option in noise reduction. (Thanks, Christopher Rooney!)
* [#7809](https://github.com/audacity/audacity/issues/7809) Modules are now allowed to stick around when patch releases like this one are published. This means you likely won't need to update the OpenVINO again during 3.7.x.&#x20;
* &#x20;[#7076](https://github.com/audacity/audacity/issues/7076) When adding a realtime effect to a track, the effect settings are now opened immediately.
* [#7819](https://github.com/audacity/audacity/issues/7819) Added an infobox when saving a project in a new version breaks compatibility with an old one.
* [#7740](https://github.com/audacity/audacity/issues/7740) Added a preference to turn off automatic tempo detection.
* [#4169](https://github.com/audacity/audacity/issues/4169) When duplicating tracks, the duplicated tracks now have independent realtime effect instances.
* [#7700](https://github.com/audacity/audacity/issues/7700) Fixed range-selection beyond the edge of a clip being destructive.
* [#8013](https://github.com/audacity/audacity/issues/8013), [#8008](https://github.com/audacity/audacity/issues/8008), [#8004](https://github.com/audacity/audacity/issues/8004), [#8009](https://github.com/audacity/audacity/issues/8009), [#8003](https://github.com/audacity/audacity/issues/8003), [#8005](https://github.com/audacity/audacity/issues/8005), [#8071](https://github.com/audacity/audacity/pull/8071) Improved stability of cloud saving.
* [#7410](https://github.com/audacity/audacity/issues/7410) Fixed pasting content from a clip at the beginning of itself being offset in time.
* [#4231](https://github.com/audacity/audacity/issues/4231) macOS: Fixed AUSoundIsolation.
* [#6342](https://github.com/audacity/audacity/issues/6342) Fixed audacity continuing to scroll after letting go of the scrollbar.
* [#8110](https://github.com/audacity/audacity/issues/8110) Fixed black stripes appearing when zooming in while in the envelope or multi-tool.
* [#8043](https://github.com/audacity/audacity/issues/8043) Added a new "get effects" button next to the Upload Audio button.
* [#8211](https://github.com/audacity/audacity/pull/8211) Added UUID instance support. See [this page](https://forum.audacityteam.org/t/introducing-a-uuid-system-in-audacity-here-s-what-you-need-to-know/128561) for further info.
* [#7154](https://github.com/audacity/audacity/issues/7154) Fixed label texts using the wrong color in dark themes. (Thanks, GovindaMadhava!)
* [#8261](https://github.com/audacity/audacity/pull/8261) Fixed tracks being incorrectly drawn on high zoom levels using high precision trackpads.
* [#7902](https://github.com/audacity/audacity/issues/7902) Linux: Fixed FFmpeg loading in the Ubuntu 22.04 AppImage.
* [#8309](https://github.com/audacity/audacity/issues/8309) Fixed crossfading tracks on stretched clips.
* [#8234](https://github.com/audacity/audacity/issues/8234) You no longer need to click OK twice to exit the label editor in some edit states. (Thanks, Kurtsley!)
* [#8160](https://github.com/audacity/audacity/issues/8160) Playback quality is now the same as rendering quality by default.&#x20;
