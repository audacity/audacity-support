---
description: Audacity 3.6.2 was released on 2 Sep 2024
---

# Audacity 3.6.2

This is a patch release. It adds a "Legacy" effects section containing the old Limiter, Compressor and Classic Filters.

It also fixes the following bugs:&#x20;

* [#6995](https://github.com/audacity/audacity/issues/6995) Fixed a hang after undoing.
* [#6912](https://github.com/audacity/audacity/issues/6912) Fixed the zero line going missing.
* [#6927](https://github.com/audacity/audacity/issues/6927) Fixed envelope appearance for clips offset from 0.&#x20;
* [#6955](https://github.com/audacity/audacity/pull/6955) Fixed Audacity turning white on some systems.
* [#6857](https://github.com/audacity/audacity/issues/6857) Fixed the pitch indicator disappearing on Linux when hitting double digits.
* [#6941](https://github.com/audacity/audacity/issues/6941) Fixed cutting not putting clips into the clipboard.
* [#6926](https://github.com/audacity/audacity/issues/6926) Fixed pasting sometimes resetting the clip name.
* [#6751](https://github.com/audacity/audacity/issues/6751) Fixed the track header UI breaking when resizing channels in a stereo track.
* [#6847](https://github.com/audacity/audacity/issues/6847), [#6846](https://github.com/audacity/audacity/issues/6846) Fixed LV2 plugin detection on macOS and Windows.
* [#3679](https://github.com/audacity/audacity/issues/3679) Fixed Labeled Audio operations.
* [#6924](https://github.com/audacity/audacity/issues/6924), [#6989](https://github.com/audacity/audacity/issues/6989) Fixed Cloud projects sometimes not opening.
* [#7060](https://github.com/audacity/audacity/pull/7060) Fixed a bug regarding stereo-to-mono splitting.
* [#7055](https://github.com/audacity/audacity/pull/7055) Fixed a bug causing tracks with master effects sometimes only exporting silence.
* [#7025](https://github.com/audacity/audacity/issues/7025), [#7133](https://github.com/audacity/audacity/pull/7133) Fixed multi-channel OGG and Wavpack import.
* [#7018](https://github.com/audacity/audacity/issues/7018) Fixed a crash after recording long sessions.
* [#7126](https://github.com/audacity/audacity/pull/7126) Fixed a crash when failing to load a cloud project.
* [#7093](https://github.com/audacity/audacity/issues/7093) Fixed Audacity maxing out the CPU when minimized.
* [#7124](https://github.com/audacity/audacity/issues/7124) Fixed the "editing clips can move other clips" preference desynchronizing multiple tracks.
* [#7196](https://github.com/audacity/audacity/issues/7196) Fixed Stereo tracks sometimes splitting into mono when opening a project.

Other changes:

* [#6736](https://github.com/audacity/audacity/issues/6736) The time track range now is a single dialog.
* [#6929](https://github.com/audacity/audacity/issues/6929) Reverted the behavior of selection change when importing a clip to the previous behavior.
