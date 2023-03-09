---
description: >-
  Apply this normalization effect to set the target loudness required by podcast
  platforms, television/radio programmes and some websites
---

# Loudness Normalization

Audacity provides you with two different built-in normalization effects available through the **Effect -> Volume and Compression** menu:

* **Loudness Normalization**
* **Normalize**

## Normalize

**Normalize** is a peak normalization effect which apply gain or reduction to the selected audio so the level of the peak is changed to the desired level.  You set the desired level of the peak (in dBFS) before applying the effect. This effect does not take into account the perceived loudness of the selected audio only the desired peak level.

<figure><img src="../.gitbook/assets/image (4).png" alt=""><figcaption><p>Use the <strong>Normalize peak amplitude to</strong> field to set the desired level.</p></figcaption></figure>

<figure><img src="../.gitbook/assets/Peak Normalization -3dBFS.png" alt=""><figcaption><p>Audio track normalized to -3dB. Note that the peak level of the audio track is -3dB</p></figcaption></figure>

## Loudness Normalization

By comparison **Loudness Normalization** will calculate the perceived loudness of the selected audio and then apply gain or reduction to the audio so a desired loudness level is reached.  You set the desired loudness (in LUFS, Loudness Units relative to Full Scale).

To apply **Loudness Normalization:**

* Select the region containing the audio that you want to normalize. It could be an audio clip or the entire track.
* Click **Effect -> Volume and compression -> Loudness Normalization...** to open the **Loudness Normalization** window

<figure><img src="../.gitbook/assets/image (7).png" alt=""><figcaption><p><strong>Loudness Normalization</strong> effect window</p></figcaption></figure>

* Set the target loudness in LUFS units using the **Normalize perceived loudness to** field.
* Keep **Normalize stereo channels independently** disabled If you are normalizing a stereo track (Left and Right channels) with the audio levels already balanced as this mode will preserve its original stereo balance.
* Disable **Treat mono as dual-mono (recommended)** if you are normalizing a mono track.

<figure><img src="../.gitbook/assets/Loudness Normalization -23LUFS.png" alt=""><figcaption><p>Same audio track with loudness normalization applied, -23LUFS</p></figcaption></figure>

{% hint style="success" %}
**Best practice:** Adjusting the audio's amplitude with this effect is normally best performed as a final editing step prior to export of the production audio.
{% endhint %}
