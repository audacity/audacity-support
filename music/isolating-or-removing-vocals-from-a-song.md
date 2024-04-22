---
description: This page describes some methods to try to isolate vocals in stereo tracks.
---

# Isolating or removing vocals from a song

## Using AI to separate vocals

{% hint style="info" %}
This functionality is only available on Windows and Linux
{% endhint %}

You can use the Intel OpenVINO Music Separation plugin to separate vocals from music. To do that, first download and install the plugin as described here.&#x20;

{% embed url="https://plugins.audacityteam.org/ai-plugins/ai-plugins" %}
Download and installation instructions
{% endembed %}

Once installed and Audacity is restarted, you can find it in **Effect -> OpenVINO AI Effects -> OpenVINO Music Separation**.&#x20;

<figure><img src="../.gitbook/assets/openVINO music separation.png" alt=""><figcaption><p>OpenVINO plugin</p></figcaption></figure>

Here, choose the appropriate separation mode. The 2 stem - Instrumental and Vocal works well on most songs, while the 4 stem version can be useful to extract only drums and bass, if a song happens to feature these instruments.&#x20;

The Inference Device setting lets you choose what processor should do the work:&#x20;

* CPU always works, but is typically slowest
* GPU is typically fastest on high-end computers
* NPU can only be used on modern Intel processors, and is similarly fast as GPU.

{% hint style="info" %}
Note: This effect takes a lot of computing power, as do all AI effects. It tends to be faster on a second run, after the model has warmed up.
{% endhint %}

## Manually separating the stereo field

A faster, but typically less reliable method of removing vocals is to take advantage of their typical position in a stereo field

1. Select **Split Stereo to Mono** from the stereo audio track dropdown menu\
   ![](<../.gitbook/assets/Remove vocals - Split Stereo to Mono.png>)
2. After splitting the stereo track you will end up with 2 mono tracks similar to this:![](<../.gitbook/assets/Remove vocals - 2 Mono tracks.png>)
3. Invert one of the mono tracks by **selecting** it and then choosing **Effect -> Invert**
4. Play back the result.&#x20;

This will remove everything panned in the center, not just vocals and returns a dual mono result (both channels have the same audio). In some music this could mean removing instrumental parts. Removal of the vocals can often be incomplete leaving artifacts behind; this is especially true where there are backing vocals or where reverb (echo) has been applied as this spreads sound sources and makes them very hard to extract from each other.

## Alternative AI models

{% hint style="info" %}
**Note:** This is an experimental feature not part of the normal Audacity installation.
{% endhint %}

To use AI models in Audacity, you first need to download the current alpha with this feature from [https://interactiveaudiolab.github.io/project/audacity](https://interactiveaudiolab.github.io/project/audacity)&#x20;

Once you have installed this version, you can download and apply AI models via **Effects → Deep Learning Effects**.&#x20;
