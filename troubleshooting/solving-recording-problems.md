# Solving Recording Problems

* [ ] [https://alphamanual.audacityteam.org/man/FAQ:Recording\_-\_Troubleshooting](https://alphamanual.audacityteam.org/man/FAQ:Recording\_-\_Troubleshooting)

## Error opening sound device / Error opening recording device

This error indicates a problem with the hardware, whether it is permissions, drivers, connections, or if you ask the device to do something it cannot do&#x20;

### Privacy permissions

Some operating systems may block access to the microphone for untrusted apps. You need to allow microphone access for Audacity in order to record.&#x20;

{% tabs %}
{% tab title="Windows" %}
1. Open **Settings**
2. Go to **Privacy** or **Privacy & Security**
3. Go to **Microphone**
4. Toggle on **Microphone Access**, **Allow apps to access your microphone**, and, if available, **Let desktop apps access your microphone**
{% endtab %}

{% tab title="MacOS" %}
1. On your Mac, choose **Apple menu > System Preferences** then click **Security & Privacy** in the left-hand menu and the click the **Privacy** tab.
2. Click **Microphone** in the left-hand menu.
3. Select the checkbox next to an application (Audacity) to allow it to access the microphone.
{% endtab %}

{% tab title="Linux" %}
If you have installed Audacity as a Snap or Flatpak, you may need to go to the System settings > Application settings
{% endtab %}
{% endtabs %}

### Enable the microphone

Your operating system may disable the microphone in general. You need to enable it in order to record.&#x20;

{% tabs %}
{% tab title="Windows" %}
1. Open the **Sound** control panel and select the **Recording** tab
2. Make sure that **Show Disabled Devices** is selected
3. Look for your microphone and **Enable** it

![Enabling Microphone using Windows Sound control panel](<../.gitbook/assets/Recording #3.gif>)

After enabling your microphone use the Audacity **Transport - Rescan Audio Devices** option to update the list of available devices.
{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

### Update sound device drivers and firmware

It is recommended to update drivers for audio devices you are using.  The way to do that depends on the specific device but in general it is recommended to visit the manufacturer support website.

Some audio devices install a complementary application that provides options to check for firmware and driver updates.&#x20;

#### Using Windows Device Manager

Windows users can try to manually update drivers using **Device Manager**, before looking for drivers on the Internet. This is easiest, but may not necessarily find the latest or most appropriate drivers.

* **Windows 10 / Windows 11**: Right click the **Start** button and select **Device Manager**
* **Windows 8 / Windows 7 / Windows Vista:** Click Start > Control Panel then using the "Category" view, click "Hardware and Sound", find "Devices and Printers" near the top of the screen then click on "Device Manager" (the last item in the list underneath). "Icons" views have a direct link to Device Manager, as does "Classic View" on Windows Vista only.

Then expand **Sound, video and game controllers** by clicking on the + sign, right-click over the sound device and click **Update driver**.

![Using Device Manager to manually update drivers for an audio device](<../.gitbook/assets/Device Manager - Manually update driver.png>)

After the update (even if more recent drivers were not found), you should right-click over the device again, click Properties and then on the Driver tab to check the "Driver Provider". You don't want drivers from Microsoft - in most cases these are only generic drivers, not specifically matched to your hardware. This often leads to problems such as not being able to select the correct input, or recordings not being made correctly. These must be replaced with drivers made by the manufacturer of your hardware, so they are correctly matched to that hardware.

If you have now got updated non-Microsoft drivers, try them and see if your recording problem is solved.

### Check physical connections

Use the **Recording Meter** **Toolbar** to check the audio level that Audacity is receiving from the selected **Recording Device**.  Click on the toolbar to Start/Stop monitoring the audio level.

![Recording Meter Toolbar displaying the audio level for a microphone](<../.gitbook/assets/Recording Meter Toolbar.png>)

If there is no level present on the meter you could check if your device provides some physical  control to mute or set the audio level.

![USB Sound Card with Microphone Mute and Level controls](<../.gitbook/assets/USB Sound Card Microphone mute control (1).jpg>)

![USB Interface with Microphone and Instrument gain controls](<../.gitbook/assets/USB Interface Gain Control.jpg>)

If the controls on your device are properly set you should check the connections between the computer and the recording device.

### WASAPI and USB devices

Due to a Windows limitation, you cannot use WASAPI on a USB device while listening back on an onboard audio card. Use MME or DirectSound instead, or use the USB device for both the input and output (if possible).

## Only the left channel is recording

Most microphones are mono microphones, so they by default record on the left channel only. To hear your audio on both channels, make sure you record in mono.

## Audacity is not detecting the audio device I just connected

### **External audio devices**

If you connect an external audio device (such as a USB microphone or USB headset) to your computer while Audacity is already running, it won't be detected automatically by Audacity.

To solve this, make sure the device is [detected by the operating system](https://alphamanual.audacityteam.org/man/FAQ:Recording\_-\_Troubleshooting#detect), then select **Transport >** [**Rescan Audio Devices**](https://alphamanual.audacityteam.org/man/Transport\_Menu#rescan\_audio\_devices) from the Audacity [Menu Bar](https://alphamanual.audacityteam.org/man/Menu\_Reference).  The new device should appear as an option on the Recording or Playback device selection dropdown in the Device toolbar.

## I can't hear what I’m recording?

Enable the **Software Playthrough** option to listen what is being recorded.  You will hear the audio through the selected playback device.

You can turn **Software Playthrough** on and off in the **Transport >** [**Transport Options**](https://alphamanual.audacityteam.org/man/Transport\_Menu:\_Transport\_Options) menu.

{% hint style="info" %}
Please be aware that you will hear what you are recording a noticeable time afterwards.  This delay is called latency.
{% endhint %}

If you want to listen to the input when not recording it first enable **Software Playthrough** and then click in the [Recording Meter Toolbar](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#recording) to turn on [monitoring](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#monitoring).

{% hint style="info" %}
Software Playthrough can also be enabled In the [Recording](https://alphamanual.audacityteam.org/man/Recording\_Preferences) section of the Preferences window.  Check the **Software playthrough of input** box and click OK.
{% endhint %}

{% hint style="warning" %}
Using **Software Playthrough** when [recording desktop audio](../basics/recording-desktop-audio.md#2.-check-if-everything-is-set-up-correctly) is not recommended.
{% endhint %}

## Why is there a delay or echo when listening to what I am recording?

[Software playthrough](https://alphamanual.audacityteam.org/man/Recording\_Preferences#playthrough) usually causes a delay (latency) of the live recording input due to the time it takes to reach your headphones. To prevent this, turn software playthrough off. This can be done by choosing Transport > Transport Options > [Software Playthrough (on/off)](https://alphamanual.audacityteam.org/man/Transport\_Menu:\_Transport\_Options#software\_playthrough\_onoff) and clicking it to remove the check (tick) mark.

To listen to the live recording input without playthrough latency requires **hardware** monitoring - that is; the input signal must be routed directly through the audio device from the input to the output rather than being passed through software from input to output.

Enabling hardware monitoring is not possible with all audio devices. In particular it can only be achieved when the same device is used for input and output. For example, monitoring a USB microphone through headphones that are plugged into a different audio device will always have latency. If hardware playthrough is not available with your hardware it may be necessary to listen to the audio source directly (acoustically) rather than through the computer.

For some typical examples of how to set up equipment to record without playthrough latency, see this Tutorial about [Recording overdubs](https://alphamanual.audacityteam.org/man/Tutorial\_-\_Recording\_Multi-track\_Overdubs).

## Why do I get crackles, pops, or distortion when the recording is loud?

If you hear crackles, pops, or distortion when the recording is loud, or if the waveform is clearly touching the top and bottom edges of the track, you probably have [clipping](https://alphamanual.audacityteam.org/man/Audacity\_Waveform#clip), which means that the signal has exceeded the maximum allowed level.

Try lowering the recording level using the Audacity [Mixer Toolbar](https://alphamanual.audacityteam.org/man/Mixer\_Toolbar) or the slider in the operating system. You can also check to see if you can lower the volume on the input source itself (such as the **tape deck**, **record player** or **microphone**). Many sound cards and USB turntables or USB tape decks have an independent volume control for the playback signal level. See [Recording with USB turntables or USB cassette decks](https://alphamanual.audacityteam.org/man/Recording\_with\_USB\_turntables) for more help with USB turntables or tape decks.

When recording, try to aim for a maximum peak of around –6 [_**dB**_](https://alphamanual.audacityteam.org/man/Glossary#decibel) in the [Recording Meter](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#recording) so as to prevent the meter's [red clipping warning](https://alphamanual.audacityteam.org/man/Meter\_Toolbar#annotated) coming on. If the meters are set to [_**linear**_](https://alphamanual.audacityteam.org/man/Glossary#linear), the equivalent level to aim for is 0.5. Clicking and dragging on the meter's right edge lets you expand the meter to gauge levels more easily. After recording, you can boost the level safely using the [Amplify](https://alphamanual.audacityteam.org/man/Amplify) or [Normalize](https://alphamanual.audacityteam.org/man/Normalize) effects.

{% hint style="info" %}
**Help with repairing clipped recordings:** If there is only a small amount of [_**clipping**_](https://alphamanual.audacityteam.org/man/Glossary#clipping) (just the tops of a few isolated peaks), Effect > [Clip Fix](https://alphamanual.audacityteam.org/man/Clip\_Fix) can be applied to just the clipped sections. This will attempt to reconstruct the missing peaks by [_**interpolating**_](https://alphamanual.audacityteam.org/man/Glossary#interpolate) the lost signal. In other cases where there is mild distortion throughout a recording, using Effect > [Filter Curve EQ](https://alphamanual.audacityteam.org/man/Filter\_Curve\_EQ) or Effect > [Graphic EQ](https://alphamanual.audacityteam.org/man/Graphic\_EQ) to reduce the higher frequencies can help to mitigate the damage. Sometimes a bass cut will help also by making the result sound less "muddy".
{% endhint %}

## Vertical red lines in the recording

This is a visual indication that your recording has [clipping](https://alphamanual.audacityteam.org/man/Audacity\_Waveform#clip). See the immediately previous question above.

The vertical red lines show where the clipping has occurred; these clipping indicators can be turned on and off _(Audacity default setting is "off")_ by selecting **View >** [**Show Clipping (on/off)**](https://alphamanual.audacityteam.org/man/View\_Menu#showclippingonoff).

![A waveform with clipping](../.gitbook/assets/TrackExampleClipping.png)

## Why is the Audacity recording slider grayed out on maximum?

The recording slider in [Mixer Toolbar](https://alphamanual.audacityteam.org/man/Mixer\_Toolbar) is purposely disabled if it cannot directly manipulate the operating system's slider for the sound device, or if that device has no system slider. Turning down the Audacity slider to prevent distortion would be inadequate unless it also turned down the system slider. It would only make existing distortion quieter instead of removing it.

If the slider is disabled, check first in [Device Toolbar](https://alphamanual.audacityteam.org/man/Device\_Toolbar) that you are selecting the correct device. Audacity should be able to control the recording level of most built-in sound devices subject to the device having appropriate [Sound Device Drivers](https://wiki.audacityteam.org/wiki/Updating\_Sound\_Device\_Drivers).

If necessary look in the operating system mixer or in the audio interface's control panel for an input slider. For Windows see [Windows: accessing the Windows Sound controls](https://alphamanual.audacityteam.org/man/Windows:\_accessing\_the\_Windows\_Sound\_controls). To locate the system mixer for Mac and Linux see the help on our Wiki for [Mac](https://wiki.audacityteam.org/wiki/Mac\_OS\_X) or [Linux](https://wiki.audacityteam.org/wiki/Linux\_System\_Mixer).

External recording devices such as [USB turntables or tapedecks](https://alphamanual.audacityteam.org/man/Recording\_with\_USB\_turntables) or interfaces may not have an operating system slider, especially on Mac. For all cases where there is no system slider, try to adjust the playback level on the recording device itself.
