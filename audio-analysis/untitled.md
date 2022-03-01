# Spectral Analysis

* [x] Spectrogram View
* [ ] Plot Spectrum

Audacity has several powerful spectral analysis tools:

* Spectrogram View shows how the audio spectrum changes over time
* Plot Spectrum shows

## Spectrogram View

Each track in Audacity can be viewed in a Spectrogram view:

![Spectrogram view of a track](<../.gitbook/assets/image (24).png>)

To access it, click on the **track menu dropdown** and select **Spectrogram.**

The track menu also features Spectrogram settings, where you can tweak the scale, the colors, the used algorithms and the window size.

![The Track Menu dropdown](<../.gitbook/assets/image (8).png>)

{% hint style="info" %}
**Tip:** To view the waveform and the spectrogram at the same time, choose **Multi-view** instead.
{% endhint %}

### Increasing Accuracy in Spectrogram View

You may notice that the spectrogram is somewhat blurry usually, where even if you have a precise frequency, the spectrogram makes it look like a whole range of frequencies is being played. This is an inherent mathematical tradeoff related to the window size:

![Different window sizes in comparison](../.gitbook/assets/Audacity\_u0lMBchIkj.png)

Depending on what you're after, you can change the window size to fit your analysis: Smaller window sizes benefit time resolution, larger window sizes benefit frequency resolution.

{% hint style="info" %}
**Tip:** If you change the algorithm from **Frequencies** to **Reassignment**, Audacity will attempt to sharpen both time and frequency resolution using the method of reassignment. This works best for signals that are separable in time and frequency with respect to the analysis window.
{% endhint %}

You can change both the window size and the algorithm in the spectrogram settings found in the Track Menu dropdown.&#x20;

### Zooming in on specific frequencies

You can zoom vertically in Spectrogram View by **right-clicking the frequency scale**.

Additionally, while hovering over the frequency scale, you can&#x20;

* Ctrl+Scroll to zoom in/out on the frequency scale and
* Shift+Scroll to scroll up/down while staying on the same zoom level.&#x20;

## Plot Spectrum

TODO
