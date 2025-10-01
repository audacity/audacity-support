# Reducing dynamic range (Compressor / Limiter)

A high [dynamic range](https://en.wikipedia.org/wiki/Dynamic_range_compression) can lead to quiet parts of a track being too quiet compared to its loud parts, causing the listener to constantly adjust the volume to keep things at an acceptable level. Audacity has several tools to help reduce the dynamic range and increase the loudness of a track.

## Compressor

<figure><img src="../.gitbook/assets/Audacity4_47NDb3klpc.png" alt=""><figcaption><p>Audacity's compressor</p></figcaption></figure>

This effect can be found in **Effects** button -> **Add Effect** button -> **Audacity** -> **Compressor**, or as a destructive effect in **Effect -> Volume and Compression -> Compressor.**

The compressor can be used to reduce the dynamic range by a certain ratio for all sounds that exceed the threshold. Doing so will make the resulting audio quieter, so you need to add make-up gain to make up for that - or, alternatively, normalize your track in a second step. The knee width and smoothing parameters are there to reduce distortion.

{% hint style="success" %}
### Best practices

* To get started, try a **factory preset** from the **preset dropdown**. This effect comes with useful presets for a variety of content.
* Use this effect as a [master effect or realtime effect](using-realtime-effects.md) to see a graph of it working in realtime. In the example shown above, you can see the effect engaging three times (where the yellow line goes down)
* Lower the threshold if the compressor isn't doing anything. However, you typically don't want the compressor to _always_ be engaged.&#x20;
{% endhint %}

## Limiter

<figure><img src="../.gitbook/assets/Audacity4_ytuAxQqden.png" alt=""><figcaption><p>Audacity's limiter</p></figcaption></figure>

A limiter is effectively identical to a compressor, with the difference that it's much harsher: While a compressor uses a low ratio and may let a sound exceed the line drawn on the curve temporarily, a limiter does not allow any sound to exceed the threshold.

{% hint style="success" %}
### Best practices

* To get started, try a **factory preset** from the **Presets & settings** button. This effect comes with useful presets for a variety of content.
* Use this effect as a [master effect](using-realtime-effects.md) to see a graph of it working in realtime, and to prevent your project from clipping.
* Typically, limiters are used as a "last line of defense" to prevent clipping.&#x20;
{% endhint %}
