---
description: >-
  Audacity helps you to split a long recording into separate songs for export as
  one audio file per song. You can for example record an audio CD or LP and then
  export each song into a separate file.
---

# Splitting a recording into separate tracks

### Remove unwanted audio from the recording

Use the **Selection** tool to remove unnecessary audio (mostly silence) from the start of the recording.

1. Click the **Skip to Start** button ![image of skip to start button](https://manual.audacityteam.org/m/images/0/01/rewind.png)
2. Zoom in until you can see from the start of the track to the start of the music
3. Click and drag from the start of the music to the start of the track
4. Click on **Edit** > [**Delete**](https://manual.audacityteam.org/man/edit\_menu.html#delete)

Similarly, remove unwanted audio from the end of the recording and from the middle (between sides 1 and 2 of the LP or cassette).

{% hint style="info" %}
Later in this tutorial we mention that you can use the **Analyze > Label Sounds...** command to identify spaces between the songs, so when you are editing the transition between side 1 and side 2 be sure to leave 2 or 3 seconds of silence, similar to what you would find between songs.
{% endhint %}

**Save your work!** Click on File > Save Project > [Save Project](https://manual.audacityteam.org/man/file\_menu\_save\_project.html#save\_project).

### Label the songs

**Mark the start of the first song**

1. Click the **Skip to Start** button ![](../.gitbook/assets/Rewind.png)
2.  Click on **Edit > Labels >** [**Add Label at Selection**](https://manual.audacityteam.org/man/edit\_menu\_labels.html#addlabelatselection), or use shortcut **Ctrl + B**.

    A new label is created in a new [label track](https://manual.audacityteam.org/man/label\_tracks.html) underneath the audio track. The contents of the label are selected and ready for editing. If you need to play the track to decide where to place the split points, you can use **Add Label at Playback Position** instead (directly underneath [Add Label at Selection](https://manual.audacityteam.org/man/edit\_menu\_labels.html#addlabelatselection), or use shortcut **Ctrl + M** _(on Mac it is **⌘ + .**)_.
3. Type the title of the first song

**Mark the rest of the songs**

1. Using the **Selection** tool, click near the beginning of the second song
2. Repeatedly click the **Zoom In** button ![The Zoom In tool](https://manual.audacityteam.org/m/images/e/e0/tool\_edit\_zoomin.png) until you can see just the first few seconds of the song
3. Click as closely as possible to the start of the song
4. Click on **Edit > Labels >** [**Add Label at Selection**](https://manual.audacityteam.org/man/edit\_menu\_labels.html#addlabelatselection), or use shortcut **Ctrl + B**
5. Type the name of the song into the label
6. Repeatedly click the **Zoom Out** button ![The Zoom Out tool](https://manual.audacityteam.org/m/images/d/d3/tool\_edit\_zoomout.png) until you can see the start of the third song
7. Continue in this manner adding a label to mark the start of each song

![Label at the start of the second song in the audio track](<../.gitbook/assets/song2 label.png>)

{% hint style="info" %}
You can save time by using **Analyze >** [**Label Sounds...**](https://manual.audacityteam.org/man/label\_sounds.html) to automatically label the regions to be exported for the songs. This method thus lets you exclude some or all of the areas between songs.

This tool depends on correctly detecting the "silences" between tracks and this depends on setting their parameters appropriately for your track.
{% endhint %}

### Maximize the volume of the recording

If you did the original recording properly and avoided clipping, the recording is probably not at the maximum possible volume. In order for the LP or CD to be burned at maximum volume and thus match other LPs or CDs in your collection we need to fix this.

1. Click on **Select >** [**All**](https://manual.audacityteam.org/man/select\_menu.html#all), or use shortcut **Ctrl + A**
2. Click on **Effect > Volume and Compression >** [**Normalize...**](https://manual.audacityteam.org/man/normalize.html)

The default choice in this dialog is to amplify to a maximum of -1.0 dB. The maximum setting is 0 dB, but the default setting of -1.0 dB provides a little headroom as some players can have playback problems with audio at 0 dB.

Some consumer-level turntables, tape decks and/or amplifiers may well record stereo channels with a stronger signal in one channel than the other, which you will probably want to correct. In that case, check the box that says **Normalize stereo channels independently**.

One problem when copying records is that a loud click in one channel can cause Normalize to create an unwanted change in the stereo balance. In that case you should consider removing the click before the Normalize step, using [Click Removal](https://manual.audacityteam.org/man/click\_removal.html).

### Export multiple files

The final step involves creating multiple audio files from the Audacity project.

1. Click on **File > Export >** [**Export Multiple...**](https://manual.audacityteam.org/man/export\_multiple.html).
2. Click the **Choose...** button and pick the place where your exported tracks will be saved.
3. Choose the export **Format** from the drop-down menu:
   * for CD burning choose 16-bit [_**WAV**_](https://manual.audacityteam.org/man/glossary.html#wav) if using Windows or Linux or [_**AIFF**_](https://manual.audacityteam.org/man/glossary.html#aiff) if you are using a Mac
   * for loading into an MP3 player, choose [_**MP3**_](https://manual.audacityteam.org/man/glossary.html#mp3)
   * for loading into Apple Music/iTunes/iPod you can export as WAV and use Apple Music/iTunes to convert the WAVs to [_**AAC**_](https://manual.audacityteam.org/man/glossary.html#aac) or MP3.
4. Under _Split Files Based On_:
   * ![selected radio button](https://manual.audacityteam.org/m/images/7/7e/radioselected.png) **Labels** should be checked
   * ![unchecked checkbox](https://manual.audacityteam.org/m/images/a/a8/checkboxnotchecked.png) **Include audio before first label** should be unchecked, as there is no audio before the first label
5. Under _Name Files_:
   * ![selected radio button](https://manual.audacityteam.org/m/images/7/7e/radioselected.png) **Using Label/Track Name** should be checked.
6. Click the **Export** button.
7. [Metadata Editor](https://manual.audacityteam.org/man/metadata\_editor.html) will appear for the first song. The Track Title and Track Number will be pre-filled from the labels, but you can enter any additional information for that song that you wish (for example, Artist Name and Album Title).
8. Click the OK button in the Metadata Editor (**not** the Save button).
9. Metadata Editor will appear for the next and the subsequent songs; as before, enter any additional information and click "OK" for each window. When you click "OK" on the window for the last song, all the files will export.

### Backup

Backup your exported WAV or MP3 files - you do not want to lose all that valuable work and have to do it all over again. Computer hard drives can fail, destroying all data.

Ideally use a dedicated drive _(1+ TB external magnetic drives are convenient and economical)_, or upload to an online (cloud) storage service to store the WAVs or MP3s. Better still is to make two copies on different external devices and even better is to hold an online backup as well as the local copies.

You may want to create a taxonomic file structure - for example each album can be stored in its own folder (named for the album) within a folder named for the artist (or, perhaps, composer for classical music) to make searching and retrieval easier.
