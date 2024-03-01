---
description: >-
  This page is an introduction to creating background beats and audio loops from
  a pre-existing audio file.
---

# Making audio loops

Audio loops are a type of music that plays a few bars on repeat over and over. They can be created by taking a sample out of pre-existing content and looping it seamlessly.&#x20;

## 1. Enable playback looping

![](<../../.gitbook/assets/looping enable.png>)

To enable playback looping, simply click onto the **loop button** (1). When you do this, you'll note the blue looping region appear in the timeline (2). You can move the region and it's in and out point individually by dragging it.&#x20;

{% hint style="info" %}
**Tip:** You can always create a new region by dragging anywhere outside the existing region within the timeline.
{% endhint %}

## 2. Finding the looping region

![](../../.gitbook/assets/Audacity\_M9ZSq81LUu.png)

When making a loop out of music, you often will be able to see repetitions in the waveform as your source material will probably contain some loop already (for example a drummer playing the same beat throughout the song). You can use these to roughly find good looping regions and position your looping region above it.

{% hint style="info" %}
**Notes:**&#x20;

* If you're having trouble finding a good region with a stereo track, you may want to convert it to mono first: **Tracks > Mix > Mix Stereo to Mono**
* When positioning your loop region, try to aim _just before_ the peaks. Doing that may allow you to skip finetuning altogether.
* You can adjust the looping region even when playback is on.
{% endhint %}

### Fine-tuning the loop and removing clicks

To make the loop seamless, you may need to zoom in some more, using `Ctrl+Scroll` (`Cmd+Scroll`) or the ![](../../.gitbook/assets/ZoomIn.png) magnifying glass.&#x20;

{% hint style="success" %}
**Best practice:** Set your looping points at a zero crossing, where the waveform (blue line) crosses 0 (black line):&#x20;

![](<../../.gitbook/assets/zero crossing.png>)
{% endhint %}

## 3. Turn your loop into a clip

Once your loop sounds right, you can select it's length in the waveform. A yellow line will appear when your cursor is lined up with the loop region properly. Once you have made the selection, you now can simply **right-click > Split Clip** (`Ctrl+I, Cmd+I`).&#x20;

Once you have the clip, you can copy-paste it anywhere in your project.

{% hint style="info" %}
**Tip:** If you want to use the clip on repeat, use **Effect > Repeat.**&#x20;
{% endhint %}

## 4. Exporting the clip

If you want to use the clip in more projects, it's a good idea to save it in isolation. To do this, **select** the clip you made earlier, and go to **File -> Export Audio...**. In the dialog, choose a file name and location, and choose **Export Range: Current Selection**.&#x20;

{% hint style="success" %}
**Best practices:**&#x20;

* **Use lossless formats**. WAV, WavPack and FLAC are good file formats for loops, MP3 is not as it loses information every time it's saved again ([generation loss](https://en.wikipedia.org/wiki/Generation\_loss)).
* **Keep your loops organized**. It's generally a good idea to store loops in category folders and write properties directly in the file name. So for example, if you have 3 drum loops, 2 piano loops and 4 synth loops, it's a good idea to have:
  * folders called "drums", "piano" and "synth", and
  * files called something like "drum pattern A - 124 bpm.wav", "piano calm - 89 bpm - Amin.wav" if you know the tempo (bpm) and key (eg. A minor). Audacity and other programs may be able to read some of the information you write here, and automatically adjust the loops when you import them into a project.&#x20;
{% endhint %}

{% content-ref url="../../basics/saving-and-exporting-projects.md" %}
[saving-and-exporting-projects.md](../../basics/saving-and-exporting-projects.md)
{% endcontent-ref %}
