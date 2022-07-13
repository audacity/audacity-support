---
description: >-
  Due to licensing restrictions Audacity cannot be distributed with built-in
  support for ASIO. However You can build Audacity for your personal use and
  include ASIO support.
---

# ASIO in Audacity

Audacity can record and playback audio on your Windows PC using one of the following three alternative interfaces:

* MME
* Windows DirectSound
* Windows WASAPI

ASIO (Audio Stream Input / Output) is an additional proprietary interface to record and playback audio in Microsoft Windows.  ASIO bypasses the Windows audio mixing components to provide lower latency direct communication between computer audio software and hardware.  Most audio recording interfaces manufacturers provide a driver to support ASIO.

* ASIO supports 24-bit sampling which is only otherwise available using [Windows WASAPI](https://docs.microsoft.com/en-us/windows/win32/coreaudio/wasapi?redirectedfrom=MSDN) or WDM-KS (Windows Driver Model Kernel Streaming). 24-bit sampling allows greater dynamic range, lower theoretical [noise floor](https://manual.audacityteam.org/man/glossary.html#noise\_floor) and greater resolution at lower audible volumes.
* An unmixed ASIO output is "bit identical" to the original source.
* Multiple physical input and output channels of the hardware are accessed over one single device.

Windows [DirectSound](http://en.wikipedia.org/wiki/DirectSound) interface protocol support multi-channel recording on some sound devices, but not the very low latencies that are possible on ASIO.

[https://manual.audacityteam.org/man/asio\_audio\_interface.html](https://manual.audacityteam.org/man/asio\_audio\_interface.html)

* [ ] [https://gist.github.com/SteveALee/da24c2be633340b8791066dd98eb5d0b](https://gist.github.com/SteveALee/da24c2be633340b8791066dd98eb5d0b)

