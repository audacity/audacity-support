# Developing your own plugins and scripts

## Plugins

Audacity supports the following formats:

* **Nyquist** (Lisp or SAL)\
  Audacity's built-in scripting format. Allows for easy generation of UI elements and already is tuned to Audacity's needs. Note that this plugin format is not supported as realtime effects.\
  Documentation: [creating-your-own-nyquist-plugins](../developing-your-own-plugins-and-scripts/creating-your-own-nyquist-plugins/ "mention")
* **VST3** (C++)\
  The industry standard for plugins. Widely supported across Audacity, Musescore and most DAWs.\
  Documentation: [https://steinbergmedia.github.io/vst3\_doc/vstsdk/index.html](https://steinbergmedia.github.io/vst3\_doc/vstsdk/index.html)
* **LV2** (C, C++, other C-compatible languages)\
  The Linux plugin standard. Widely supported across open source software.\
  Documentation: [https://lv2plug.in/book/](https://lv2plug.in/book/)
* **Vamp** (C++, Python)\
  An easy-to-develop-for framework for audio analyzers.\
  Documentation: [https://www.vamp-plugins.org/develop.html](https://www.vamp-plugins.org/develop.html)

Additionally, LADSPA, VST2.4 and Audio Units are supported. LADSPA and VST2.4 are the predecessor to LV2 and VST3, respectively, and thus fairly outdated. Audio Units are only available on macOS.

Further, Audacity has modules, which allow extending Audacity beyond just editing audio. It is somewhat experimental and not yet documented.

## Scripts

Audacity supports the following scripting formats:

* **mod-script-pipe** (Python, Perl)\
  A module that exposes a named pipe to which commands can be sent.\
  Documentation: [https://manual.audacityteam.org/man/scripting.html](https://manual.audacityteam.org/man/scripting.html)
* **Macros**\
  You can use Audacity's macros feature to chain effects and actions together. This can be exported as a file.\
  Documentation: [https://manual.audacityteam.org/man/macros.html](https://manual.audacityteam.org/man/macros.html)

If you have found a macro or script which you find universally applicable, you can share it in the scripts section.
