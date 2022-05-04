---
description: >-
  Punch-in repair of recordings is an easy and fast way to fix short sections of
  a recording by re-recording it.
---

# Re-Recording a Section

## Fixing bad sections as they occur (Punch-and-roll recording)

{% hint style="success" %}
**Best Practice:**&#x20;

* Make sure that Overdubbing is turned on in **Transport > Transport Options.**
* Make sure that your latency settings are correct.&#x20;
{% endhint %}

If your audio recording broke and you immediately noticed it (for example because you misspoke your script or had to cough), it is possible to stop the recording and immediately fix the mistake by using Punch-and-roll recording. To use it:&#x20;

1. Record as normal until you make the mistake.
2. Stop the recording.
3. Choose a splicing point by clicking into the audio before the mistake happens. For spoken content, this should be between words so you can drop in easier. \
   **Note:** All audio on the track after the splicing point will be deleted.&#x20;
4. Start a Punch-and-roll recording with **Transport > Recording > Punch and roll record** (`Shift+D`). This will playback a couple of seconds of your recording so you can find the right rhythm and tone as before, and at the splicing point you set in step 3, it will switch to recording mode and make a crossfade.&#x20;
5. From here on out you can continue recording as usual. If you make the same mistake again, you can stop the recording and undo (Ctrl+Z / Cmd+Z) and try again. If you make another mistake later on, you can do another Punch and Roll recording by repeating the steps above.&#x20;

{% hint style="info" %}
Tip: You can change the amount of pre-roll audio and crossfade in the **Preferences > Recording** in the Punch and Roll recording section.&#x20;
{% endhint %}

## Fixing a bad section afterwards

If your audio recording broke at one specific point in time (for example because an ambulance drove by), but you only notice it after having recorded everything, it is possible to re-record this section using punch-in repair.&#x20;

{% hint style="success" %}
**Best Practice:** &#x20;

* Make sure that Overdubbing is turned on and Software Playthrough is turned off. Both settings can be found in **Transport > Transport Options**
* **Always create a backup** of your project before editing it. For a continuous recording, this typically is best done by [#exporting-audio](../basics/saving-and-exporting-projects.md#exporting-audio "mention").
{% endhint %}

To use it:&#x20;

1. Select the bad part of the recording and silence it. You can do this by clicking the ![](<../.gitbook/assets/image (12).png>) **Silence Audio Selection** button (found next to the _undo_ and _cut/copy/paste_ buttons), or by pressing `Ctrl+L` (`Cmd+L`)
2.  Select a couple of seconds of audio before and after the bad part. With overdubbing turned on, recording will playback the recording back to you and help you match the timing.

    ![](<../.gitbook/assets/bad section.png>)
3. Do the re-recording on a new track. To do this, **Shift-click the record button** or press `Shift+R`. It will automatically start recording from the beginning of your selection.

## Related pages

* To hide the cut a bit better, a crossfade may help: [making-crossfades.md](../audio-editing/making-crossfades.md "mention")
* If your new take is slightly longer or shorter than the gap left in the original recording, you can split the clip: [#splitting-up-clips](../basics/audacity-editing.md#splitting-up-clips "mention")
* You can use a similar technique to continuously fix mistakes as they occur during a recording session using [testing-latency.md](../todo/testing-latency.md "mention")
