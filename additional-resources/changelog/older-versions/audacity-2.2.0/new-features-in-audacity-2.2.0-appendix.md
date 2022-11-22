# New features in Audacity 2.2.0 - Appendix

**This page is an appendix to** [new-features-in-audacity-2.2.0.md](new-features-in-audacity-2.2.0.md "mention")**. It is an overview of further new functionality that has been introduced in Audacity 2.2.0**

* Details of all the major changes since 2.1.3 can be found in [.](./ "mention").

### Sync-Lock

[Sync-Lock](http://manual.audacityteam.org/man/sync\_locked\_track\_groups.html) used to be a button in the edit toolbar. Now instead you enable or disable it from **Tracks > Sync-Lock Tracks**.

<figure><img src="../../../../.gitbook/assets/image (21).png" alt=""><figcaption><p>Old Edit Toolbar, with Sync-LockNew Edit Toolbar, without Sync-Lock</p></figcaption></figure>

<figure><img src="../../../../.gitbook/assets/image (65).png" alt=""><figcaption><p>New Edit Toolbar, without Sync-Lock</p></figcaption></figure>

This should make it easier for users to avoid setting Sync-Lock on by accident by inadvertently nudging the button.

### Easier Selection at [Clip Lines](http://alphamanual.audacityteam.org/man/Audacity\_Tracks\_and\_Clips)

Left-clicking on a [**clip line**](http://alphamanual.audacityteam.org/man/Audacity\_Tracks\_and\_Clips#join) will delete the clip line, merging the two neighbouring clips.

Now if you hover over the Clip line and press and release the Esc key you can then click on the clip line and select from there by dragging, without deleting the clip line and merging the clips.

### Mac Cursors

The cursors on Mac used to be 16x16 pixels. Now they are higher resolution and use 32x32 pixels.

### Hover Highlighting

Buttons in the track control panel now highlight when hovered over. The thumb on sliders now highlights when the mouse is over it.

<figure><img src="../../../../.gitbook/assets/image (52).png" alt=""><figcaption><p>Slider thumb not highlighted (Classic theme)</p></figcaption></figure>

<figure><img src="../../../../.gitbook/assets/image (33).png" alt=""><figcaption><p>Slider thumb highlighted (Classic theme)</p></figcaption></figure>

### Escape Key

The Esc key now cancels all click-and-drag actions. It also chooses among overlapping mouse click targets, which is especially useful in the Multi-Tool.

### Explanation when no Selection

The default behavior now for [effects](http://manual.audacityteam.org/man/index\_of\_effects\_generators\_and\_analyzers.html) and for edits requiring a selection is that if you click on them without a selection, a dialog now shows explaining that you need to make a selection. Here an attempt to apply Fade effect was made without first selecting some audio.

<figure><img src="../../../../.gitbook/assets/image (48).png" alt=""><figcaption><p>Explanation dialog when an audio selection is required</p></figcaption></figure>

### Customisable spectrogram colours

The colors of the [spectrograms](http://manual.audacityteam.org/man/spectrogram\_view.html) are now customisable using custom [theming](http://manual.audacityteam.org/man/themes.html). This can give greater clarity to the spectrograms. In the example below the high intensity greens stand out better than the reds in the standard spectrogram.

<figure><img src="../../../../.gitbook/assets/image (60).png" alt=""><figcaption><p><strong>Standard spectrogram colours</strong></p></figcaption></figure>

<figure><img src="../../../../.gitbook/assets/image (28).png" alt=""><figcaption><p><strong>Customised spectrogram colours</strong></p></figcaption></figure>

### Simplified stereo splitting and joining

Previously [splitting a stereo track](http://manual.audacityteam.org/man/splitting\_and\_joining\_stereo\_tracks.html) created special 'Left' and 'Right' tracks. Now splitting creates mono tracks, panned left or panned right. Below is a screenshot of a stereo track split into two tracks, one panned left, one panned right.

<figure><img src="../../../../.gitbook/assets/image (71).png" alt=""><figcaption><p>Stereo track split into two mono tracks one panned left, one panned right</p></figcaption></figure>

### Documentation Overhaul

Major overhaul of the Audacity manual, including more work on clickable images.

* The [menus](http://manual.audacityteam.org/man/menu\_reference.html) in the manual have more extensive tooltips and more clickable areas.
* Over 300 new or modified images for this edition of the manual.

### Links

[new-features-in-audacity-2.2.0.md](new-features-in-audacity-2.2.0.md "mention")\


[.](./ "mention") _- detailed release notes for this release of Audacity_
