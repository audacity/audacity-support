---
description: >-
  This is a suite of Audacity tools and process to help you produce an audiobook
  reading that reaches ACX Technical Compliance.
---

# Audiobook Mastering

{% hint style="info" %}
See[#notes-and-comments](audiobook-mastering.md#notes-and-comments "mention") at the end for general information about this process
{% endhint %}

## Install the ACX Check plugin

Download and install the [ACX Check](https://plugins.audacityteam.org/analyzers/analysis-plugins#acx-check) plugin which will help you check the levels of your recording.

{% hint style="info" %}
Check [#installing-nyquist-plugins](../basics/customizing-audacity/installing-plugins.md#installing-nyquist-plugins "mention")for instructions on how to install the ACX Check plugin
{% endhint %}

If you are using a version of Audacity previous to 2.4.1 you will also need to download and install [rms-normalize](https://forum.audacityteam.org/viewtopic.php?p=325078#p325078)

## Setup

Start this process with an unedited recording. No processing, adjustments or fixes.

Export a WAV (Microsoft) 16-bit sound file of your raw reading and save it in a safe place—ideally not on the machine. You should never be stuck reading a chapter again because of an accident. Saving an Audacity Project is not recommended for this.

## Process

These instructions are in short-form: Menu > Tool : Options > Apply

Select the whole reading or chapter by clicking the **Select** button at the bottom of the Track Control Panel.

* Effect > EQ and Filters > Filter Curve EQ... : Presets & settings > Factory Presets > Low roll-off for speech > Apply.
* Effect > Volume and Compression > Loudness Normalization... : Normalize RMS to -20dB > Apply.
* Effect > Volume and Compression > Limiter... : Soft Limit, 0.00, 0.00, -3.50dB, 10.00, No > Apply.
* Analyze > ACX Check.

The first two readings, Peak (no louder than -3dB) and RMS (between -18dB and -23dB) should be nearly perfect. If the noise is quieter than about -65dB (-60dB limit), and the show sounds reasonable, you may be done.

The tool settings are sticky and you don't have to keep typing them in. If you do no other editing, mastering a chapter comes down to:

* Select the audio track or clip.
* Effect > EQ and Filters > Filter Curve... > Apply.
* Effect > Volume and Compression > Loudness Normalization... > Apply.
* Effect > Volume and Compression > Limiter... > Apply.

If you fail noise, then the process can be a great deal more interesting. See [#noise-compliance](audiobook-mastering.md#noise-compliance "mention")below.

## Notes and Comments

ACX has their own help pages, tutorials and videos: [https://help.acx.com/](https://help.acx.com/)

This mastering suite addresses technical considerations. Nothing here will address theatrical errors such as harsh sibilance, gritty voice or wet mouth noises. There is no acting filter. You have to know how to read aloud.

The quality of the original recording is very important. It's easy to record mistakes that can't be fixed later. Record to a reasonable volume (occasional peaks at -6dB) in a quiet room with no echoes.

When you get done with a chapter, **File > Export** the work as WAV (Microsoft, 16-bit) and save the sound file with a unique name somewhere safe. That's your emergency backup so you don't have to read it again if you damage the work or lose your edit.

Only then start editing, processing, filtering and correcting. Keep testing the work with the **ACX Check** plugin as you go. Select the work and **Analyze > ACX Check**.

### ACX Technical requirements for each submitted audio file

* Peaks no louder than -3dB.
* RMS (performance loudness) between -18dB and -23dB.
* Noise no louder than -60dB.

Those are the three values displayed in the ACX Check panel

<figure><img src="../.gitbook/assets/ACX Check plugin analysis result.png" alt=""><figcaption><p><strong>ACX Check</strong> plugin analysis result</p></figcaption></figure>

<details>

<summary>Aside: What these values mean</summary>

**Peak.** Look at the blue waves on the timeline. The very tips of the waves are _never_ allowed to go all the way up or down. That’s overload (1.0 on the timeline – 0dB on the bouncing sound meters). That can cause audible crunching and distortion. ACX doesn’t even want you to get close, so that’s their -3dB (70%) limit.

**RMS.** Loudness. Root Mean Square is a standard electrical measurement which, when applied to audio, happens to work out to loudness. RMS should be between -18dB and -23 dB.

**Noise.** How loud is the show when you stop talking? This can be a combination of dogs barking next door, air conditioner noise, and the ffffffff noise the microphone is making. All of it lumped into one number. Noise should be quieter than -60dB.

And yes, it’s perfectly possible to have a performance that won’t meet all three at the same time. It’s pretty common for home readers.

It’s also possible to pass ACX-Check and still fail acceptance. If you got there by heavily processing and beating your voice to death, the work will fail **Human Quality Control**. The voice is distorted and the failure is “Overprocessing.”

</details>

Human Quality Control at ACX (the theatrical test after you pass ACX-Check technical test) does not like heavy processing. You should be as gentle as you can with as few corrections as possible. Don't even think of submitting readings that sound like a bad cellphone, speaking into a wineglass or reading in a bathroom.

{% hint style="info" %}
The Audiobook metaphor is listening to someone telling you a story over cups of tea. Anything that distracts from that ideal should be avoided.
{% endhint %}

## Noise Compliance

We assume you've already been through Audiobook Mastering and failed ACX Technical Compliance because of noise (louder than -60dB) or your performance has odd background sounds you don't like. Noise is common in a home studio.

### Microphone Hiss

{% file src="../.gitbook/assets/NoisyMicrophone.mp3" %}
Microphone hiss sound sample
{% endfile %}

This is a gentle spring rain in the trees sound behind your voice. Microphone systems make noises like this naturally and it's your job to make your voice loud enough so nobody notices the noise, but not so loud your voice distorts.

If the hiss isn't too bad, try a gentle correction such as Noise Reduction of the Beast (6, 6, 6) or **Edit > Undo** and try 9, 6, 6. You can hear the hiss getting quieter and recede into the background as you increase the first number.  Apply Nose Reduction and then try ACX Check again. If you need reduction as high as 12, 6, 6, your voice may get wine-glassy or honky and the show may not pass ACX inspection.

{% hint style="info" %}
See [noise-reduction-removal.md](../repairing-audio/noise-reduction-removal.md "mention") for further details.
{% endhint %}

The solution may be to change your announcing style or even the microphone. You should be about a shaka away from the microphone...

![Suggested distance from the microphone](http://www.kozco.com/tech/audacity/pix/ShakaMicSpacing.png)

... or as close as a fist (louder and more intimate) but you may need a pop and blast filter.

![Use a pop filter when in close proximity to the microphone](http://kozco.com/tech/audacity/pix/LaptopMixerMicrophone.jpg)

### Machine Noise

Computer fan, air conditioning, refrigerators or other machines.

If possible turn off fans or machines while you're presenting. And yes, we understand the contradiction of needing to watch the Audacity screen, remove the noisy computer from your room and keep the computer one USB cable away from your USB microphone all at the same time.&#x20;

People have done it by extending the keyboard, mouse and monitor outside their studio, but you are warned against extending a USB cable, particularly with audio (or video) production.

Do not block computer vent holes.

If machine noises are constant and not seriously loud, they may respond to **Effect > Noise Removal and Repair > Noise Reduction...**

Try a gentle correction such as Noise Reduction of the Beast (6, 6, 6) or UNDO and try 9, 6, 6. You can hear the hiss getting quieter and recede into the background as you increase the first number: Nose Reduction. Try ACX-Check. If you need reduction as high as 12, 6, 6, your voice may get wine-glassy or honky and the show may not pass ACX inspection.

{% hint style="info" %}
See [noise-reduction-removal.md](../repairing-audio/noise-reduction-removal.md "mention") for further details.
{% endhint %}

### Mosquito Whine

Some computers and USB microphones hate each other and produce mosquito whine sound.

{% file src="../.gitbook/assets/USBMicrophoneWhineClip.mp3" %}
USB microphone whine sound sample
{% endfile %}

Whine doesn't respond well to **Effect > Noise Removal and Repair >** **Noise Reduction**.

Get and install [Mosquito-Killer4](https://forum.audacityteam.org/t/usb-whine-filtering-yeti-curse/45601/35).

**Effect > n / a > Mosquito-Killer4**: ...Mosquitoes to kill?: 8 > Apply.

We expect the tool to make common USB whine vanish, but there are some versions of whine that don't perfectly respond. Listen carefully and if Mosquito\_Killer4 fails or doesn't work enough, **Edit > Undo** and post a help message on the [Audacity Forum](https://forum.audacityteam.org/) or the [Audacity Server](https://discord.gg/audacity) on Discord with a sample of the work.

{% hint style="warning" %}
Follow the instructions provided to [post an audio sample](https://forum.audacityteam.org/viewtopic.php?f=49\&t=72887)
{% endhint %}

I don't know of any easy, foolproof way to permanently fix a USB microphone once you have the whine sound. The most likely fix is change the computer. ACX did it by not using a USB microphone. They used a very high quality analog microphone plugged into a stable USB interface.

### Permanent or Impossible Noise

There are no tools to remove noises that constantly change. If jets overhead, traffic noises, dogs barking and the TV next door are included in your show, they are now your permanent performance partners. Read the work again in a quieter room. Gating doesn't help.

### Combo Pack

Nobody said you can't have more than one noise. The ACX Audiobook noise test can be rough to pass with a home recording system. If you just can't get there with the above tools, or you can't get your voice to sound right, post to the [Audacity Forum](https://forum.audacityteam.org/) or the [Audacity Server](https://discord.gg/audacity) on Discord with a sound sample and send a clean, raw clip. Mention the three-digit Audacity number.

{% hint style="warning" %}
Follow the instructions provided to [post an audio sample](https://forum.audacityteam.org/viewtopic.php?f=49\&t=72887)
{% endhint %}
