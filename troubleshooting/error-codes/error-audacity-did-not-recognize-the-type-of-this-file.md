---
description: Learn about causes and fixes for this error.
---

# Error Audacity did not recognize the type of this file

This error occurs when the file you're trying to open has no decoder available.&#x20;

## Causes

This may be caused by several things:&#x20;

* The FFmpeg library may be missing.
* Modules which handle importing of the file may be missing or disabled.
* The file themselves may misreport their contents (for example: Say they're `.mp3` despite being actually `.m4a`), or be corrupted.
* You may have set custom import rules.

## Fixes

You can attempt the following things to fix it:&#x20;

* **Install FFMPEG**. FFMPEG allows you to open most kinds of media files. Read more: [installing-ffmpeg.md](../../basics/installing-ffmpeg.md "mention")
* Check **Preferences -> Modules**. You should see several modules called something like "mod-mp3" or "mod-pcm", all of which should be set to "enabled", or, in the case of "mod-script-pipe", to "no choice made". If you are missing modules, reinstall Audacity, and reset the preferences.
* **Check if the file you're trying to open actually is what it says on the tin**. For example, some lower-quality programs name any audio file `*.mp3`, regardless of whether it actually is an MP3 file. Read more: [#cant-open-an-mp3-file](../solving-other-problems.md#cant-open-an-mp3-file "mention")
* **Check if your file is an actual audio file**. Some files which are used to output audio in certain programs don't actually contain sound themselves, but are instructions for for the program to make some sounds. Try to see if the program used to create the file has an export button. If not, you can also try recording desktop audio while playing back the file in another program. Read more: [recording-desktop-audio.md](../../basics/recording-desktop-audio.md "mention")
* **Check if you have accidentally created custom import rules**. In **Edit -> Preferences -> Extended Import** (on macOS: Audacity -> Preferences -> Extended Import), make sure that you have not created any custom rules. If there are any rules, you can safely **delete the rules**.
* **Import the audio as RAW**. This only works on uncompressed audio. You can do so via **File -> Import -> Import raw data...**

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
