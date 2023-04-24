# 🆕 Aligning music to beats and measures

{% hint style="info" %}
**Notes:**&#x20;

* As of Audacity 3.3, these features are still in beta.
* A measure and a bar are the same thing. Audacity uses "bar" in places where "measure" would be too long. &#x20;
{% endhint %}

## Setting up for music workflows

You can enable a more musical view in Audacity as follows:&#x20;

1. Right-click the Timeline Ruler and select **Beats and Measures**. \
   ![](<../.gitbook/assets/timeline beats.png>)
2. Go to **View -> Toolbars** and enable **Time Signature Toolbar (beta)**.
3. In the Time widget, select beats or for more subdivisions, beats and 16th. \
   ![](<../.gitbook/assets/time toolbar beats.png>)
4. Enable Snapping, and set the snapping interval to a musical option (eg 1/4, 1/8 or 1/16).\
   ![](<../.gitbook/assets/snap to 16.png>)

Once you have enabled all of them, your Audacity may look something like this:

<figure><img src="../.gitbook/assets/music edit example.png" alt=""><figcaption><p>Audacity with the timeline ruler set to Beats &#x26; Measures, Time Signature Toolbar enabled, snapping to 16th notes, and the Time and Selection toolbars set to beats, and beats and 16th, respectively. </p></figcaption></figure>

## Detecting tempo (BPM)

It is important to enter a tempo that matches your content, otherwise none of the features outlined above work properly.

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

Audacity will snap the beginning of the clip to the beats and measures grid, depending on your tempo and snapping setting. If your first beat doesn't start exactly at the start of the clip, you can trim the beginning of the clip. To trim a clip, simply drag the upper edge of it inwards.

<figure><img src="../.gitbook/assets/trim_clip.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
When trimming a clip, you may need to turn off snapping to make finer adjustments.
{% endhint %}

## Aligning to beats and measures

Once you have everything set up and snapping enabled, simply dragging your clips will align them to the beat and measures grid.&#x20;
