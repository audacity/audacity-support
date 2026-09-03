---
description: Audacity 3.7.9 was released on 1 Sep 2026
---

# Audacity 3.7.9

This is a patch release. It contains the following changes:

* [#11690](https://github.com/audacity/audacity/issues/11690) Enabled ASIO support for the Windows builds, playback and recording device selection is remembered per-host now
* [#11679](https://github.com/audacity/audacity/issues/11679) Added FFmpeg 9 support
* [#11714](https://github.com/audacity/audacity/issues/11714) Fixed several sources of project corruption and data loss: when the disk runs out of space, when a drive is disconnected right after a project is closed, and when a recovered project is closed without saving
* [#11709](https://github.com/audacity/audacity/issues/11709) Fixed crashes while a realtime effect editor is open, master track effect changes now can be undone
* [#11696](https://github.com/audacity/audacity/issues/11696) Fixed a freeze when double-clicking the timeline while a MIDI track is present MIDI playback now also starts from the set position instead of the beginning
* [#11711](https://github.com/audacity/audacity/issues/11711) Fixed a crash after a failed recording attempt
* [#11526](https://github.com/audacity/audacity/issues/11526) Fixed clips having the wrong tempo after opening a project (Thanks, David Bailes (@DavidBailes)!)
* [#11623](https://github.com/audacity/audacity/issues/11623) Fixed a freeze on startup on systems with an incorrect font configuration
