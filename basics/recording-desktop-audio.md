---
description: >-
  Audacity can record computer audio (including sound from YouTube, Spotify and
  more).
---

# Recording desktop audio

## 1. Select the loopback device

{% tabs %}
{% tab title="Windows" %}
1. Use the **Audio Setup** toolbar to select **Windows WASAPI** as the Host and then select the output you want to use (the device you're using to listen) as the input. It will be marked with a (loopback) after it's name.

![Select the loopback device to record desktop audio](<../.gitbook/assets/WASAPI Select Loopback Device.gif>)

{% hint style="info" %}
When using the (default) MME device, you may find a virtual microphone called _Stereo Mix_, _What you hear_ or similar in it. This also will record your desktop audio.
{% endhint %}

![Selecting Stereo Mix as an alternative to record desktop audio](<../.gitbook/assets/MME Stereo Mix Audio Setup.gif>)
{% endtab %}

{% tab title="macOS" %}
[https://github.com/mattingalls/Soundflower/releases/](https://github.com/mattingalls/Soundflower/releases/)&#x20;

{% hint style="warning" %}
Caution: Soundflower is not compatible with Apple Silicon-based machines
{% endhint %}
{% endtab %}

{% tab title="Linux" %}
When using PulseAudio (default for Ubuntu, Linux Mint, and others):

1. Install PulseAudio Volume Control (pavucontrol). This should be in your repository already.
2.  Use the **Audio Setup** toolbar to select **ALSA** as the audio host and select **pulse** as the recording device.

    If your system uses Pulse by default, the pulse device may be called **default**.
3.  Enable the recording meter by selecting **Start Monitoring**.

    <figure><img src="../.gitbook/assets/image (4) (1).png" alt=""><figcaption><p>Click the Microphone icon to start monitoring the recording level</p></figcaption></figure>
4. Open **PulseAudio Volume Control** and choose the **Recording** tab.
5.  In the **Capture from** dropdown, select the "Monitor" option of the playback device used by the application you want to record from

    <figure><img src="../.gitbook/assets/image (2) (2) (1).png" alt=""><figcaption><p>PulseAudio Volume Control - Select <strong>Capture from:</strong> Monitor of device</p></figcaption></figure>
6. Launch the application that you wish to record and begin playback.
7. In the "Recording" tab of PulseAudio Volume Control, drag the volume sliders so that the recording level in Audacity's Recording Meter is to left of 0 dB (-6 dB is a good level to aim for).
{% endtab %}
{% endtabs %}

## 2. Check if everything is set up correctly

Recording the desktop audio will record all desktop audio, including notification-pings, games, and Audacity itself (for example, other tracks in the timeline if you're using overdub) . So unless you specifically want these noises, make sure to turn them off.

{% hint style="danger" %}
**DON'T use software playthrough** when recording desktop audio. Make sure it's off in the menu: Transport > Transport Options > Software playthrough (on/off) - The :heavy\_check\_mark:checkmark next to it must be turned off. You can turn off overdub here as well.&#x20;
{% endhint %}

## 3. Record

Hit the record button to record your desktop audio.&#x20;
