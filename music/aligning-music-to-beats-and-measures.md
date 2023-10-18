# 🆕 Aligning music to beats and bars

{% hint style="info" %}
**Note:** A measure and a bar are the same thing. Audacity uses "bar" in places where "measure" would be too long. &#x20;
{% endhint %}

## Detecting tempo (BPM)

To align music to the beats and bars grid, you first need to know the tempo of the song, usually measured in beats per minute (BPM).&#x20;

* If you're recording music on your own, try playing to a metronome to ensure you stay in tempo.
* If you're using music downloaded from the web, try figuring out its tempo. In some cases, a web search for _`song title`_` ``tempo` is sufficient.
* You also can download a bpm detection plugin. The [Vamp plugin pack](https://www.vamp-plugins.org/pack.html) features several tempo detection plugins, such as:
  * _IBT - INESC Beat Tracker_
  * _Simple Fixed Tempo Estimator_ form the Vamp SDK example library
  * _Tempo and Beat Tracker: Tempo_ from the Queen Mary University of London

{% hint style="info" %}
Audacity is not yet able to handle midway tempo changes during a song.
{% endhint %}

## Preparing clips for snapping

Audacity will snap the beginning of the clip to the beats and bars grid, depending on your tempo and snapping setting. If your first beat doesn't start exactly at the start of the clip, you can trim the beginning of the clip. To trim a clip, simply drag the upper edge of it inwards.

<figure><img src="../.gitbook/assets/clip trim right.png" alt="" width="191"><figcaption></figcaption></figure>

{% hint style="info" %}
When trimming a clip, you may need to turn off snapping to make finer adjustments.
{% endhint %}

## Aligning to beats and bars

Once you have everything set up and snapping enabled, simply dragging your clips will align them to the beat and bars grid.&#x20;

<figure><img src="../.gitbook/assets/snap options.png" alt=""><figcaption><p>The snapping toolbar with its dropdowns. </p></figcaption></figure>
