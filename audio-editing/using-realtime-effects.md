---
description: Audacity 3.2 and onwards supports realtime effects
---

# 🆕 Using realtime effects

{% hint style="warning" %}
This feature is only available in the Audacity 3.2 Alpha.&#x20;

This article is still a work-in-progress
{% endhint %}

## Downloading & installing realtime effects

While Audacity doesn't yet ship with realtime effects, you can download plugins for it. Currently supported plugin formats are Audio Units (macOS only), VST2, VST3, LV2, and LADSPA. We have collected some plugins which we know to work on [plugins.audacityteam.org](https://app.gitbook.com/o/-MhmG2mhIIHTtQPuHV\_k/s/klCVENFte0GRy5IqVz0W/) but you can find many more across the web.&#x20;

{% content-ref url="https://app.gitbook.com/o/-MhmG2mhIIHTtQPuHV_k/s/klCVENFte0GRy5IqVz0W/" %}
[Audacity Plugins](https://app.gitbook.com/o/-MhmG2mhIIHTtQPuHV\_k/s/klCVENFte0GRy5IqVz0W/)
{% endcontent-ref %}

{% content-ref url="../basics/installing-plugins.md" %}
[installing-plugins.md](../basics/installing-plugins.md)
{% endcontent-ref %}

## Adding effects to a track

You can add them by clicking the "Effects" button in the track controls.&#x20;

{% hint style="info" %}
**Note:** Realtime effects always apply to an entire track.&#x20;
{% endhint %}

## Changing realtime effects

There are three ways to change an effect:&#x20;

* Change the effect settings.
* Change the order.&#x20;
* Replace one effect with another.

## Applying an effect stack to the waveform

Once you're happy with the sound, you can apply the effect stack to the waveform by first selecting the track and then going to **Tracks > Mix > Mix and Render**. Alternatively, the effect stack is always applied to the waveform when **** [**exporting the audio**](../basics/saving-and-exporting-projects.md#exporting-audio).&#x20;

{% hint style="warning" %}
**Caution:** When selecting several tracks at once, the Mix and Render option will mix all tracks together.
{% endhint %}
