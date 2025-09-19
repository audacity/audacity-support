# Audacity 4 Alpha 1 release notes

The first alpha version of Audacity 4 is intended as an early preview and feedback opportunity on some core interactions we have designed.&#x20;

## What should work

We expect the following flow to work reasonably well:&#x20;

* Recording, generating and importing audio
* The core editing flow of applying effects (destructive or realtime), making cuts, moving clips and such.
* Exporting (without metadata)
* Customization of the app (themes, and editing/moving the toolbar)

## What doesn't work yet

We haven't completed all development tasks for the full app yet. As such, a lot of features are missing, or appear disabled for the moment. We expect the following things to not work right now:

* Various menu items and buttons haven't been hooked up to functionality yet, you'll see them greyed out.
* Various plugins – Nyquist, LADSPA and VAMP and the OpenVINO plugins  – have not been ported over yet.
* Preferences from Audacity 3 are not carried over.
* Some more advanced features, like envelopes, labels, spectrograms aren't available yet.
* Most effects/generators/analyzers aren't available yet.
* Opening multiple projects at the same time is not supported yet.

## We want your feedback

Please let us know your thoughts on how things feel and behave, as well as performance. You can leave your feedback at the following places:&#x20;

* [Audacity 4 forum](https://forum.audacityteam.org/c/au4/64)
* [Audacity Discord](https://discord.gg/audacity)

## System requirements

Audacity 4 has higher system requirements than Audacity 3, mostly due to [Qt's platform support](https://doc.qt.io/qt-6/supported-platforms.html). We expect Audacity 4 Alpha 1 to work on the following platforms:&#x20;

* Windows 10 & 11 (x64, but not ARM yet)
* macOS 12 and later
* Linux: Ubuntu 22.04, RedHat 8.6, openSUSE 15.6, Debian 11.6 and later

