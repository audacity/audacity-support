# Solving recording problems

## Only the left channel is recording

Most microphones are mono microphones, so they by default record on the left channel only. To hear your audio on both channels, make sure you record in mono.

## Audacity is not detecting the audio device I just connected

If you connect an external audio device (such as a USB microphone or USB headset) to your computer while Audacity is already running, it won't be detected automatically by Audacity.

To solve this, make sure the device is detected by the operating system, then select **Transport > Rescan Audio Devices** from the Audacity Menu Bar.  The new device should appear as an option on the Recording or Playback device selection dropdown in the Device toolbar.

## Audacity is not playing back what is being recorded

Enable the **Software Playthrough** option to listen what is being recorded.  You will hear the audio through the selected playback device.

You can turn **Software Playthrough** on and off in the **Transport >** [**Transport Options**](https://alphamanual.audacityteam.org/man/Transport\_Menu:\_Transport\_Options) menu.

{% hint style="info" %}
**Note:** you will hear what you are recording a noticeable time afterwards.  This delay is called latency. You can somewhat reduce this latency as described in [latency-compensation.md](latency-compensation.md "mention") but it cannot be fully removed if you're using Software Playthrough - you will need an audio interface with realtime monitoring capabilities to completely remove latency when monitoring a recording.
{% endhint %}

If you want to listen to the input when not recording it first enable **Software Playthrough** and then click in the [Recording Meter Toolbar](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#recording) to turn on [monitoring](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#monitoring).

{% hint style="info" %}
Software Playthrough can also be enabled In the [Recording](https://alphamanual.audacityteam.org/man/Recording\_Preferences) section of the Preferences window.  Check the **Software playthrough of input** box and click OK.
{% endhint %}

{% hint style="warning" %}
Using **Software Playthrough** when [recording desktop audio](../../basics/recording-desktop-audio.md#2.-check-if-everything-is-set-up-correctly) is not recommended.
{% endhint %}

## Delay and echos when recording

[Software playthrough](https://alphamanual.audacityteam.org/man/Recording\_Preferences#playthrough) usually causes a delay (latency) of the live recording input due to the time it takes to reach your headphones. To prevent this, turn software playthrough off. This can be done by choosing Transport > Transport Options > [Software Playthrough (on/off)](https://alphamanual.audacityteam.org/man/Transport\_Menu:\_Transport\_Options#software\_playthrough\_onoff) and clicking it to remove the check (tick) mark.

To listen to the live recording input without playthrough latency requires **hardware** monitoring - that is; the input signal must be routed directly through the audio device from the input to the output rather than being passed through software from input to output.

Enabling hardware monitoring is not possible with all audio devices. In particular it can only be achieved when the same device is used for input and output. For example, monitoring a USB microphone through headphones that are plugged into a different audio device will always have latency. If hardware playthrough is not available with your hardware it may be necessary to listen to the audio source directly (acoustically) rather than through the computer.

For some typical examples of how to set up equipment to record without playthrough latency, see this Tutorial about [Recording overdubs](https://alphamanual.audacityteam.org/man/Tutorial\_-\_Recording\_Multi-track\_Overdubs).

## Crackles, pops and distortion in the recording

If you hear crackles, pops, or distortion when the recording is loud, or if the waveform is clearly touching the top and bottom edges of the track, you probably have [clipping](https://alphamanual.audacityteam.org/man/Audacity\_Waveform#clip), which means that the signal has exceeded the maximum allowed level.

Try lowering the recording level using the Audacity [Mixer Toolbar](https://alphamanual.audacityteam.org/man/Mixer\_Toolbar) or the slider in the operating system. You can also check to see if you can lower the volume on the input source itself (such as the **tape deck**, **record player** or **microphone**). Many sound cards and USB turntables or USB tape decks have an independent volume control for the playback signal level. See [Recording with USB turntables or USB cassette decks](https://alphamanual.audacityteam.org/man/Recording\_with\_USB\_turntables) for more help with USB turntables or tape decks.

When recording, try to aim for a maximum peak of around –6 [_**dB**_](https://alphamanual.audacityteam.org/man/Glossary#decibel) in the [Recording Meter](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#recording) so as to prevent the meter's [red clipping warning](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#annotated) coming on. If the meters are set to [_**linear**_](https://alphamanual.audacityteam.org/man/Glossary#linear), the equivalent level to aim for is 0.5. Clicking and dragging on the meter's right edge lets you expand the meter to gauge levels more easily. After recording, you can boost the level safely using the [Amplify](https://alphamanual.audacityteam.org/man/Amplify) or [Normalize](https://alphamanual.audacityteam.org/man/Normalize) effects.

{% hint style="info" %}
**Help with repairing clipped recordings:** If there is only a small amount of [_**clipping**_](https://alphamanual.audacityteam.org/man/Glossary#clipping) (just the tops of a few isolated peaks), Effect > Noise Removal and Repair > [Clip Fix](https://alphamanual.audacityteam.org/man/Clip\_Fix) can be applied to just the clipped sections. This will attempt to reconstruct the missing peaks by [_**interpolating**_](https://alphamanual.audacityteam.org/man/Glossary#interpolate) the lost signal. In other cases where there is mild distortion throughout a recording, using Effect > EQ and Filters > [Filter Curve EQ](https://alphamanual.audacityteam.org/man/Filter\_Curve\_EQ) or Effect > EQ and Filters > [Graphic EQ](https://alphamanual.audacityteam.org/man/Graphic\_EQ) to reduce the higher frequencies can help to mitigate the damage. Sometimes a bass cut will help also by making the result sound less "muddy".
{% endhint %}

## Vertical red lines in the recording

This is a visual indication that your recording has [clipping](https://alphamanual.audacityteam.org/man/Audacity\_Waveform#clip). See the immediately previous question above.

The vertical red lines show where the clipping has occurred; these clipping indicators can be turned on and off _(Audacity default setting is "off")_ by selecting **View >** [**Show Clipping (on/off)**](https://alphamanual.audacityteam.org/man/View\_Menu#showclippingonoff).

![A waveform with clipping](../../.gitbook/assets/TrackExampleClipping.png)

## Recording slider is greyed out

The recording slider in [Mixer Toolbar](https://alphamanual.audacityteam.org/man/Mixer\_Toolbar) is purposely disabled if it cannot directly manipulate the operating system's slider for the sound device, or if that device has no system slider. Turning down the Audacity slider to prevent distortion would be inadequate unless it also turned down the system slider. It would only make existing distortion quieter instead of removing it.

If the slider is disabled, check first in [Device Toolbar](https://alphamanual.audacityteam.org/man/Device\_Toolbar) that you are selecting the correct device. Audacity should be able to control the recording level of most built-in sound devices subject to the device having appropriate [Sound Device Drivers](https://wiki.audacityteam.org/wiki/Updating\_Sound\_Device\_Drivers).

If necessary look in the operating system mixer or in the audio interface's control panel for an input slider. For Windows see [Windows: accessing the Windows Sound controls](https://alphamanual.audacityteam.org/man/Windows:\_accessing\_the\_Windows\_Sound\_controls). To locate the system mixer for Mac and Linux see the help on our Wiki for [Mac](https://wiki.audacityteam.org/wiki/Mac\_OS\_X) or [Linux](https://wiki.audacityteam.org/wiki/Linux\_System\_Mixer).

External recording devices such as [USB turntables or tapedecks](https://alphamanual.audacityteam.org/man/Recording\_with\_USB\_turntables) or interfaces may not have an operating system slider, especially on Mac. For all cases where there is no system slider, try to adjust the playback level on the recording device itself.

## New Window Appears When You Add a New Track

### How to Track Your Favorite Show or Song in Audacity:
1. Right-click on the external file and click on "Open with Audacity".<br>
2. The track will appear in a new Audacity Project window.<br>
3. To copy the track, press  <kbd>Ctrl</kbd> + <kbd>A</kbd> and then <kbd>Ctrl</kbd> + <kbd>C</kbd>.<br>
4. To paste the track, press <kbd>ALt</kbd> + <kbd>tab</kbd> to switch back to the original window, press <kbd>Ctrl</kbd> + <kbd>V</kbd>, and then press <kbd>ALt</kbd> + <kbd>tab</kbd> to switch back to Audacity.<br>
5. To exit the original window, click on the "X" in the top-right corner.

### Alternative Instructions:
1. select the recording with your cursor, click and drag the cursor over the desired portion of the track.<br>
2. To cut the selected portion of the track, press <kbd>Ctrl</kbd> + <kbd>X</kbd>.<br>
3. To paste the cut portion of the track, press <kbd>Ctrl</kbd> + <kbd>V</kbd>.<br>
4. To delete the original track, click on the "Delete" button in the toolbar.

## Tips:
- You can also use the "Export" feature in Audacity to save the track to a new file.
- If you are having trouble copying or pasting the track, try closing any other programs that are running in the background.


