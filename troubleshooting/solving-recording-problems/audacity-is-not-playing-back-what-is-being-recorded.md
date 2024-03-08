---
description: Learn about causes and fixes for this problem.
---

# Audacity is not playing back what is being recorded

## Causes

By default, Audacity doesn't play back the input.

## Fixes

Go to **Transport ->** **Transport Options -> Enable audible input monitoring**.

{% hint style="info" %}
**Notes:**&#x20;

* You will hear what you are recording a noticeable time afterwards. This delay is called latency. You can somewhat reduce this latency as described in [latency-compensation.md](latency-compensation.md "mention") but it cannot be fully removed if you're using input monitoring in Audacity - you will need an audio interface with realtime monitoring capabilities to completely remove latency when monitoring a recording.
* If you want to listen to the input before recording, click the microphone in the recording meter and then **Enable silent monitoring**.&#x20;
* Input monitoring can also be enabled In the Recording section of the Preferences window.&#x20;
{% endhint %}

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
