# Removing clicks & pops

## Using the Click Removal effect

The click removal effect can automatically remove clicks across an entire track.&#x20;

![The Click Removal Effect Dialog](../.gitbook/assets/click\_removal.png)

To use it:&#x20;

1. Select the audio you want to remove the clicks from.\
   Tip:&#x20;
2. Go to **Effect > Click Removal**
3. Set the threshold and max spike width. The default should work in most cases. You can preview the effect to get a feel of how it'll affect the track.&#x20;
4. Click **OK** to apply the effect.&#x20;

{% hint style="warning" %}
**Caution**:&#x20;

* The Click Removal effect requires a somewhat large audio selection (4096 samples) to function. It may not work when selecting single clicks.&#x20;
* If you have rapid soft clicks (such as the crackling of Vinyl), using [#noise-reduction](noise-reduction-removal.md#noise-reduction "mention")may work better.
{% endhint %}

## Repairing individual clicks

The Repair effect can be used to repair short clicks. To use it:

1. Select a short (max 128 samples) part of audio.\
   Tip: You can set the selection clocks in the bottom toolbar to display start and length of the selection, and change the clocks to display samples rather than milliseconds.&#x20;
2. Go to **Effect > Repair**.

## Silencing the section

In most cases, having brief amounts of silence is preferable to loud clicks, so completely muting clicks is a valid strategy if other methods fail. For this, simply select the click and press the ![](<../.gitbook/assets/image (12).png>) **Silence button** (Shortcut: `Ctrl+L` / `Cmd+L`).
