---
description: Audacity 3.7.4 was released on 10 Jun 2025
---

# Audacity 3.7.4

This is a patch release. It contains the following changes:

* Added a new welcome/what's new screen.
* OpenVINO effects are now available on macOS. More about that can be found [in this blogpost](https://www.audacityteam.org/blog/openvino-mac/).
* OpenVINO effects can now be found via the Get Effects button. (NB, this is a slow rollout - you may not see it there just yet at the time of release)
* OpenVINO effects have been recategorized into their own category in the Effect menu. This also goes for the transcription and music generator feature, previously found in the Generate and Analyze menus, respectively.
* [#6890](https://github.com/audacity/audacity/issues/6890) Fixed a crash when closing a large unsaved project.
* [#8709](https://github.com/audacity/audacity/issues/8709) Fixed a crash when using real-time effects that activate delay compensation.
* [#8494](https://github.com/audacity/audacity/issues/8494) Fixed issue where Studio Fade Out creates a new clip when applied at the end of a clip.
* [#8442](https://github.com/audacity/audacity/issues/8442) Fixed incorrect waveform rendering on clipped audio.
* [#8559](https://github.com/audacity/audacity/issues/8559) Fixed unintended deletion of a clip when joining two clips with pitch adjustment.
* [#3003](https://github.com/audacity/audacity/issues/3003) Effect preview now works when the track is muted.
* [#8666](https://github.com/audacity/audacity/issues/8666) Fixed possible incorrect calculations in the Hamming window derivative. (Thanks, witwald!)
* [#8577](https://github.com/audacity/audacity/issues/8577) Fixed compilation issues on legacy macOS (Thanks, barracuda156!)
