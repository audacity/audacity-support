---
description: Dialog menu that allows to configure export
---

# Export Menu

<figure><img src="../../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

## **Export Audio**

Dialog menu that allows you to export files with ffmpeg, LAME and native libraries into a specific location with settings.

**Type**

Full project&#x20;

Choosing this will export the entire project less any tracks that are grayed-out by use of the [Mute](https://manual.audacityteam.org/man/audio_tracks.html#panel) or [Solo](https://manual.audacityteam.org/man/audio_tracks.html#panel) buttons in the tracks and are inaudible on playback.

\
Selection

When choosing this, Audacity will Export the selection region from _**all**_ selected tracks even if some if those tracks are grayed-out by use of the [Mute](https://manual.audacityteam.org/man/audio_tracks.html#panel) or [Solo](https://manual.audacityteam.org/man/audio_tracks.html#panel) buttons in the tracks and are inaudible on playback.&#x20;

\
Looping region

Exports all of the tracks in the defined looped region within the project view

**File**

File name

Type the required file name. The correct file _**extension**_ - preceded by a period (dot) - will be added automatically to the end of the file name, according to the format selected in the "Save as type" list (see below). For example, typing "08 Voodoo Chile" (without quotes) will produce a file "08 Voodoo Chile.wav". For M4A and WMA formats (for which the optional [FFmpeg library](https://manual.audacityteam.org/man/faq_installation_and_plug_ins.html#ffmpeg) is required), you can add alternative extensions as specified in "FFmpeg formats" below.

Any other extensions can be added after a file name as required, but Audacity will display a warning that this is not the normal extension for this file type, and that some applications might not play files with non-standard extensions.

\
Folder

Choose the folder to export to

\
Folder location

You can input the location of the folder where you'd like to export

\
Browse...

Clicking the Browse button opens a standard File Export Dialog in which you select the location to which the files will be exported.

Format

Select the [Format](https://manual.audacityteam.org/man/file_export_dialog.html#format) required for your exported file

Some formats offer options for making settings like _quality_ or _encoding_.

Export options vary from one audio format to another

[Custom FFmpeg Export Options](https://manual.audacityteam.org/man/custom_ffmpeg_export_options.html) for details on how you can export a specific codec in a specific format container

[Exporting using an external encoder Program](https://manual.audacityteam.org/man/exporting_to_an_external_program.html) for details of how to export audio for use in an external encoder

**Audio options**

**Channels**

Sets the number of channels for the exported audio file. There are three options:

_Mono_

Single channel audio

_Stereo_

Stereo: stereo pair with left and right channels - _this is the default setting even if you only have mono tracks for exporting_

\
Custom mapping

Custom mapping: use this to export multi-channel (surround sound) files or to make customized assignments between Audacity tracks and the channels in the exported file.

\
Edit mapping

Allows you to customize the channel count and channel layout

Channel Count&#x20;

Allows you to remove or add channels to the file you're exporting

\
Channel Matrix

![](https://alice.mu.se/download/thumbnails/761949594/image-2026-2-13_14-11-36.png?version=1\&modificationDate=1770988297000\&api=v2)

Shows a matrix view of created channels and which tracks will be populated within what track.

<br>

Sample rate - Sets the sample rate for the exported file. Default setting is 44100 Hz, which is CD quality.\
Encoding - This option is for the default WAV exports, selecting other file formats will cause different options to appear in this position. It sets the encoding to be used for the exported WAV file. Default is **Signed 16-bit PCM**, which is CD quality

Rendering

Trim blank space before first clip

If this is unchecked _(default setting)_ when exporting audio any leading blank space offset in the tracks or project to be exported is treated as silence and appropriate leading silence will pad the exported audio.

If you check this box, leading blank space will be ignored on Export.
