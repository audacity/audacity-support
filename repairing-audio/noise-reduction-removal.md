---
description: >-
  Removing background noise is core to most audio cleanup operations. Audacity
  has several tools to aid in this.
---

# Noise reduction & removal

{% hint style="success" %}
**Best Practice**: While it's possible to rescue an otherwise unusable file with noise reduction techniques, your recording will sound best if you take steps to ensure a noise-free environment _before_ recording.
{% endhint %}

## Noise Reduction

The Noise Reduction effect works best to remove a constant source of noise, like the hiss of fans, the hum of fridges, or whines, whistles and buzzes.

&#x20;To use it, use the following steps:&#x20;

1. Locate a section of your recording that's just your background noise, preferably a few seconds long, and select it.
2. Go to **Effects > Noise Reduction** and press the "**Get noise profile**" button.
3. Select all the audio for which you want to reduce the noise.
4. Go to **Effects > Noise Reduction** again. You now can tweak the settings of the reduction to your liking.\
   **Tip:** While tuning the settings, use the "Residue" toggle to hear what sound will be removed.&#x20;
5. Once you're satisfied with the result, click **OK** to apply it to the selected audio.\
   **Note:** If you used the Residue toggle before, make sure to switch it back to Reduce before pressing OK.

{% hint style="info" %}
**Tips:**&#x20;

* If you set the sensitivity too low, or use a noise profile that doesn't properly represent the noise throughout your track, you may experience **artifacts** (random bursts of very short tones).&#x20;
* If you don't need to tweak the settings after setting the noise profile, you can press `Ctrl+R`/`Cmd+R` to immediately apply the effect to your selection.
{% endhint %}

## Noise Gate

The Noise Gate effect attenuates any sound quieter than a certain threshold while leaving sounds louder completely unaffected. To use it

1. Select a part of the audio that's just background noise.
2. Go to **Effects > Noise Gate...** to open the effect.
3. Click **Select Function: Analyse Noise Level** and press **OK**. Audacity will now tell you where your noise level lies and recommending a threshold.&#x20;
4. Select the audio you want to apply the effect to.
5. Go back into **Effects > Noise Gate...**, set it back to Select Function: Gate, and enter the threshold level from earlier.&#x20;
6. Tweak the other parameters as sound best to you.&#x20;
7. Press OK to apply the noise gate.

{% hint style="success" %}
**Best practice:** Use the noise gate after applying noise reduction. This way, you can use less aggressive noise reduction settings, which may grant you a cleaner end result.
{% endhint %}

## Notch Filter

The notch filter removes a hum or whistle at a specific frequency. To use it:&#x20;

1. Select the audio you want to apply the effect on
2. Go to **Effects > Notch Filter** to open the effect.
3. Enter the frequency you want to reduce, together with the Q-value (how many frequencies around the main one you want it to affect - the higher the number, the less frequencies).
4. Press OK to apply the effect.

{% hint style="info" %}
**Tips:**&#x20;

* The "Mains hum" of the electricity grid is 60Hz in north and middle America, and 50Hz in most other countries.
* Use **Analyze > Plot Spectrum...** to find the offending frequency if you're not sure where it is.
* Sounds often have harmonics or overtones. They are at a multiple of the main frequency, so for a 50Hz sound, you may need to apply the notch filter as well at 100Hz, 150Hz, and so on to remove it fully.
{% endhint %}
