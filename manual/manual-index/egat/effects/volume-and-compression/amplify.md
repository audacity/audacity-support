# Amplify

When applied to a single stereo track or to multiple tracks, Amplify shows the amplification needed to maximize the volume of the loudest track or channel and will apply that amount of amplification to all selected tracks and/or channels. In this way, Amplify preserves the relative volumes of the selected tracks and/or channels.

This is different from the [Normalize](https://manual.audacityteam.org/man/normalize.html) effect which maximizes the volume of each track independently _and can be optionally set to maximize the volume of each channel independently_. For a full discussion of the differences, see [Amplify and Normalize](https://manual.audacityteam.org/man/amplify_and_normalize.html).

<br>

### Amplification (dB)

When the Amplify dialog first appears it shows in the _Amplification (dB)_ box the amplification amount needed to create a New Peak Amplitude of 0 [_dB_](https://manual.audacityteam.org/man/glossary.html#decibel), thus maximizing the volume of the selected track. If this is your goal you can just click the Apply button.

* Input Box: Type a value for the amount of amplification you would like to apply. Positive values make the sound louder, negative values make it quieter. As you type, the New Peak Amplitude input box will be updated.

If you take the _negative_ of the value shown in the _Amplification (dB)_ box, this will give you the current peak [_amplitude_](https://manual.audacityteam.org/man/glossary.html#amplitude) of the selection. For example, in the image above, the audio selection had a peak amplitude of -3 dB.

* Slider: Drag the slider right to make the sound louder, or to the left to make it quieter. As you drag, your selected value will be updated in the input box, and the New Peak Amplitude input box will be updated.

<br>

### New Peak Amplitude (dB)

Type in the value you would like for the new peak amplitude of your selected tracks. As you type, the Amplification input box will be updated.

<br>

### Allow Clipping

If this box is not checked, and you attempt to enter an Amplification value that will result in a New Peak Amplitude of greater than 0 dB, the OK button will become inactive. This will prevent you from applying too much amplification. If this box is checked _(default setting)_ you can apply as much amplification as you want, possibly creating a horribly distorted sound.
