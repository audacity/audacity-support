---
description: This page describes some methods to try to isolate vocals in stereo tracks.
---

# Isolating or removing vocals from a song

{% hint style="warning" %}
**Note:** There is no reliable way of separating vocals. The methods described in the article depend on the position of the vocal track in the stereo field.&#x20;
{% endhint %}

## Vocal Removal with vocals in the center and instruments spread around them

<details>

<summary>Manual steps</summary>

1. Select **Split Stereo to Mono** from the stereo audio track dropdown menu\
   ![](<../.gitbook/assets/Remove vocals - Split Stereo to Mono.png>)
2. After splitting the stereo track you will end up with 2 mono tracks similar to this:![](<../.gitbook/assets/Remove vocals - 2 Mono tracks.png>)
3. Invert one of the mono tracks by **selecting** it and then choosing **Effect -> Invert**
4. Play back the result.&#x20;

This will remove everything panned in the center, not just vocals and returns a dual mono result (both channels have the same audio). In some music this could mean removing instrumental parts. Removal of the vocals can often be incomplete leaving artifacts behind; this is especially true where there are backing vocals or where reverb (echo) has been applied as this spreads sound sources and makes them very hard to extract from each other.\




</details>

If the vocals are panned in the center of a stereo track this method can _sometimes_ be effective by removing what is common to both tracks (that is, the vocals), leaving behind what is different (that is, the instrumentals).

Audacity includes the **Vocal Reduction and Isolation** effect which provides the **Remove Vocals** option that you can use to try to remove vocals from a stereo track.

![Remove Vocals option parameters](<../.gitbook/assets/Remove vocals - Nyquist Vocal Reduction and Isolation - Remove vocals.png>)

**Vocal Reduction and Isolation** also lets you specify the audio frequency range for vocals (by default 120 to 9000 Hz). This can help cure the common problem where center-panned bass or Hi-hat is also removed when removing vocals.

## Isolating Vocals

You can also use the [Vocal Reduction and Isolation](https://alphamanual.audacityteam.org/man/Vocal\_Reduction\_and\_Isolation) effect to attempt to isolate the vocals by choosing one of the Isolate Vocals options from the [Action](https://alphamanual.audacityteam.org/man/Vocal\_Reduction\_and\_Isolation#action) dropdown menu in the dialog.

![Select Isolate Vocals from the Action dropdown menu](<../.gitbook/assets/Remove vocals - Vocal Isolation - Isolate Vocals.png>)

Note that the end result may not be total vocal isolation or even satisfactory isolation of the vocals; it all depends on how the original recording was engineered.

## Using AI models to separate vocals

{% hint style="info" %}
**Note:** This is an experimental feature not yet part of the normal Audacity installation.
{% endhint %}

To use AI models in Audacity, you first need to download the current alpha with this feature from [https://interactiveaudiolab.github.io/project/audacity](https://interactiveaudiolab.github.io/project/audacity)&#x20;

Once you have installed this version, you can download and apply AI models via **Effects → Deep Learning Effects**.&#x20;

{% hint style="danger" %}
**Deep Learning Effects are computationally very intensive**. Depending on the model used and your computer, it can take several minutes to hours to apply the effect to a single song. It is highly recommended to test out whether the model is satisfactory on a short section (less than 10 seconds) before applying it to an entire track.&#x20;
{% endhint %}
