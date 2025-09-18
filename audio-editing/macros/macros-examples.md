---
description: >-
  This page provides some examples of how the Macros feature in Audacity can be
  used.
---

# Macros Examples

### Example 1: Loud MP3

A **batch processing** Macro to compress and normalize [_**WAV**_](https://manual.audacityteam.org/man/glossary.html#wav) files then convert them to MP3:

1. Insert [Compressor](https://manual.audacityteam.org/man/compressor.html) to reduce the [_**dynamic range**_](https://manual.audacityteam.org/man/glossary.html#dynamic\_range) of each WAV, also normalizing them to maximum [_**amplitude**_](https://manual.audacityteam.org/man/glossary.html#amplitude) of 0 [_**dB**_](https://manual.audacityteam.org/man/glossary.html#decibel)
2. Insert **Export as MP3** to convert them to [_**MP3**_](https://manual.audacityteam.org/man/glossary.html#mp3) format
3. Click **Apply Macro to:** **Files...** to select the files on which to run the Macro.
4. Click OK to close the **Manage Macros** window

![Macro example: Loud MP3](../../.gitbook/assets/macro\_example\_loud\_mp3.png)

{% hint style="info" %}
Alternatively you can choose **Tools > Apply Macro...**, select the **Loud MP3** Macro then click **Apply Macro to:** **Files...** where you can select the files on which to run the Macro
{% endhint %}

### Example 2: NR\&EQ

An **effects automation** Macro for the current project that applies noise reduction and equalization:

1. Insert [Normalize](https://manual.audacityteam.org/man/normalize.html) with settings of:
   1. Remove any [_**DC offset**_](https://manual.audacityteam.org/man/glossary.html#dc\_offset)
   2. \-10 dB (to allow for boosting [_**frequencies**_](https://manual.audacityteam.org/man/glossary.html#frequency) later in the Macro without [_**clipping**_](https://manual.audacityteam.org/man/glossary.html#clipping))
2. Insert [Noise Reduction](https://manual.audacityteam.org/man/noise\_reduction.html)
3. Insert [Filter Curve EQ](https://manual.audacityteam.org/man/filter\_curve\_eq.html) (to perform the frequency adjustment)
4. Insert another Normalize at different settings (without offset removal, setting a final amplitude of -1 dB)
5. Click OK to close the [Manage Macros](manage-macros.md) window

![Macro example: Noise Reduction and Equalization](../../.gitbook/assets/macro\_example\_nr\_eq.png)

When later needed in your workflow, choose Tools > [Apply Macro...](macros-palette.md), select the **NR\&EQ** Macro then click **Apply Macro to:** **Project** to apply the Macro to the selected track(s) in the current project window.

{% hint style="info" %}
* If a Noise Profile exists, that Noise Profile will be used. It is often best to capture a suitable Noise Profile before running a Macro.
* If a Noise Profile does not exist:
  * If the Macro is applied to the current project (as above), the current selection is used to create the Noise Profile. Therefore, other effect commands in the Macro will also only apply to that selection. If an export command is added, the entire file will be exported.
  * If the Macro is applied to files, the first file (all of it) is used to create the Noise Profile. It may be useful to prepare a file containing a suitable Noise Profile and name it so that it is alphabetically the first file of those to be run in the Macro.
{% endhint %}

### Useful Commands

The **Select** command with 'Relative To=Selection' can be used to extend and contract a selection.

**Command:** "Select: RelativeTo=Selection Start=-1 End=1"\
**Description:** This command expands a selection by two seconds

**Command:** "Select: RelativeTo=Selection Start=1 End=-1"\
**Description:** This command contracts a selection by two seconds

**Command:** "Select: RelativeTo=Selection Start=1 End=1"\
**Description:** This command moves a selection right by one second

**Command:** "SelTrackStartToEnd"\
**Description:** This command (from Select > Region > Track Start to End) Selects all audio in all selected tracks.

**Command:** "SelNextClip" and "SelPrevClip"\
**Description**: These commands are useful with Clips

### Extra Macros

#### Spectral Magickes Wacky-Macro

This Macro takes a single mono track, and converts it to a stereo track, with one channel a spectrogram and the other a wave.

It is one example of how to creatively abuse the Macro system, since audacity is not set up to handle mixed views on wave tracks.

* Note the use of a TrackCount of 0.5 to select just one of two channels in a stereo track.
* The TrackCount of 0 is used to unselect all tracks.

```
SelectAll:
Duplicate:
Select:"Mode=Set"
SetTrack:Pan="-1"
Select:"Mode=Set" Track="1"
SetTrack:Pan="1"
Select:Mode="Set" TrackCount="2"
MixAndRender:
Select:Mode="Set" TrackCount="0.5"
SetTrack:Display="Spectrogram"
Select:"Mode=Set" TrackCount="0"
```

#### Reparations Magicke Spell

With normal project rate of 44100Hz, this selects about 126 samples centered on the cursor, and applies the 'Repair' effect to it. 'Repair' can only handle up to 128 samples.

```
SelectTime:End="0.00143" RelativeTo="Selection Start" Start="-0.00143"
Repair:Use_Preset="<Factory Defaults>"
```
