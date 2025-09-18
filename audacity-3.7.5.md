---
description: Audacity 3.7.5 was released on 5 Aug 2025
---

# Audacity 3.7.5

This is a patch release. It contains the following changes:

* Beta: [#8942](https://github.com/audacity/audacity/issues/8942) Windows on ARM support. (Thanks, Vasanth K (@vask2108) and Linaro!)
* [#9121](https://github.com/audacity/audacity/issues/9121) FLAC importer now supports 32-bit PCM. (Thanks, Dr. K. D. Murray (@kdm9)!)
* [#8851](https://github.com/audacity/audacity/issues/8851) Fixed crash when rendering spectrum view. (Thanks, Hailey Somerville (@haileys)!)
* [#9097](https://github.com/audacity/audacity/issues/9097) Fixed lost focus when registration window was closed.
* [#8932](https://github.com/audacity/audacity/issues/8932) Fixed crash on wav import. (when audio file is up to 7 ms long)
* [#4444](https://github.com/audacity/audacity/issues/4444) Fixed crash when using Macro Wizard.
* [#9100](https://github.com/audacity/audacity/issues/9100), [#8890](https://github.com/audacity/audacity/issues/8890) Updated libopus to 1.5.2, updated libcurl to 8.12.1, updated libpng to 1.6.50

{% hint style="warning" %}
## A note on Windows on ARM support

Windows on ARM (WoA) Audacity only works in Windows 11.

The normal "FFmpeg for Audacity" installer does not work for WoA Audacity. You need to find an WoA FFmpeg version and manually link it.&#x20;

Other plugins (VST, OpenVINO, ...) won't work at all at this time.

Due to a lack of devices, the Audacity team has not tested the WoA version extensively. We did however check that basic things work while using a Windows VM in Parallels (on an ARM Mac). Please let us know if you encounter any strangeness.
{% endhint %}
