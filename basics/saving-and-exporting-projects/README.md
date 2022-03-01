---
description: >-
  There are two ways to get your work out of Audacity: Saving the project, and
  exporting audio.
---

# Saving and Exporting Projects

## Saving projects

You can save projects using the **File > Save Project** menu. A saved project (.aup3) has the most information about your project available, but can only be opened in Audacity. There are three options available, each useful for a different use case:&#x20;

* **Save Project** (`Ctrl+S`/`Cmd+S`) will save your current project. If you save for the first time, you may need to specify where to save it to.&#x20;
* **Save Project As...** will save your project in a new place and continue editing on it, should you want the original project to remain untouched.&#x20;
* **Backup Project...** will save the current state of the project in a new file, but won't switch to it.&#x20;

{% hint style="warning" %}
**Warning:** Avoid saving active projects on external drives, USB sticks, or network storage. Audacity requires fast, uninterrupted access to your storage when recording and editing.&#x20;
{% endhint %}

## Exporting audio

You can export your project into an audio file using the **File > Export** menu. Exported audio (.mp3, .wav, .ogg, and more) can be opened with a wide variety of programs, and uploaded to some social media, but may have worse quality and lose some Audacity-specific information.

In the **File > Export** menu, you'll see a few different options:

{% hint style="info" %}
**Note:** You may need to [install FFMPEG](installing-ffmpeg.md) to access some of these options.
{% endhint %}

* **Export as MP3**, **Export as WAV** and **Export as OGG** will export your project into the selected format.&#x20;
* **Export Audio...** (`Ctrl+Shift+E`/`Cmd+Shift+E`) will provide you options to export to more uncommon formats, such as FLAC, M4A, AC3, WMA, AMR, MP2 and custom FFMPEG exports.&#x20;
* **Export Selected Audio...** will export only the current selection time range, instead of the entire project.
* **Export Multiple...** (`Ctrl+Shift+L`/`Cmd+Shift+L`) will let you export different parts of the audio based on either tracks or labels. &#x20;

{% hint style="warning" %}
**Caution:** Muted tracks are not exported. What you hear when playing in Audacity is what will be exported.&#x20;
{% endhint %}

There are also two additional options which export non-audio data:

* **Export Labels...** will export labels if you have any.
* **Export MIDI...** will export the currently selected note track as a MIDI or Allegro file. You can only export one note track at a time.&#x20;
