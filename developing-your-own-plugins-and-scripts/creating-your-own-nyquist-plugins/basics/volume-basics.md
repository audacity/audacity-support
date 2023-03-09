---
description: >-
  This page explains how to use Nyquist to change the volume of Audacity tracks
  in different ways.
---

# Volume Basics

{% hint style="info" %}
**Note:** All \[comments] and \[explanations] are written in square brackets, so they cannot be confused with (Lisp code).
{% endhint %}

## LISP vs SAL

SAL is a new alternative syntax to LISP. Although Nyquist is based on the LISP programming language, you can write almost any Nyquist program in SAL. Most people prefer SAL syntax to LISP syntax because SAL is a bit more like popular programming languages that include Java, C, and Python.

You can specify which one you're using with the respective [codetype header](../headers-reference.md#codetype):

```lisp
;codetype lisp
;codetype sal
```

{% hint style="warning" %}
You can only use one or the other in your script.
{% endhint %}

### Changing the Volume of an Audacity Track <a href="#changing_the_volume_of_an_audacity_track" id="changing_the_volume_of_an_audacity_track"></a>

To change the volume of an Audacity track with Nyquist, the easiest way is to use the Nyquist [**SCALE**](http://www.cs.cmu.edu/\~rbd/doc/nyquist/part8.html#index371) function:

{% tabs %}
{% tab title="LISP" %}
```lisp
(scale number sound)
```
{% endtab %}

{% tab title="SAL" %}
**scale**(_number_, _sound_)
{% endtab %}
{% endtabs %}

The "scale" function multiplies the amplitude \[volume] of the "sound" by the given "number". A number of 0.5 will make the sound become only half as loud as before, while a number of 2 will make the sound become double as loud as before.

**Example:**

{% hint style="info" %}
See [Prompt Basics](prompt-basics.md) for an explanation how the Nyquist prompt works.
{% endhint %}

* To run this example in the Nyquist Prompt, ensure that "Use legacy (version 3) syntax" is **not** selected.
* For more information about the \*_**track\***_\*\* \*\* keyword, refer to the [Plugin Reference](../plugin-reference.md#track)

**1.** Create an audio track with some audio \[eg a short recording]

**2.** Now click **Tools > Nyquist Prompt**. A window with a text field will appear where you can type in:

{% tabs %}
{% tab title="LISP" %}
```lisp
(scale 0.5 *track*)
```

{% hint style="warning" %}
Important: Do not forget to type the parentheses. The parentheses are part of the Lisp language Nyquist is based on. Without the parentheses the Nyquist Lisp interpreter will not be able to understand your code.
{% endhint %}
{% endtab %}

{% tab title="SAL" %}
```clike
return scale(0.5, *track*)
```

{% hint style="warning" %}
Important: Do not forget to type the parens and comma. These are part of the SAL language.
{% endhint %}
{% endtab %}
{% endtabs %}

After clicking "OK" in the "Nyquist Prompt" window the "scale" function will take the Audacity sound and return a "scaled-down" sound with half the volume to Audacity. The result of the last computation of the Nyquist code always gets automatically returned to Audacity.

If you try "scale" with big numbers you will notice that you can return sounds with volumes taller than the Audacity track which will sound very distorted if you play them afterwards in Audacity. So an important lesson to learn is that Nyquist gives you the freedom to do whatever you want but it's now on you to take care that the result will still sound good afterwards.

An alternative command for amplifying a sound is the [**MULT**](http://www.cs.cmu.edu/\~rbd/doc/nyquist/part8.html#index617) command.

**MULT** may be used with numbers, sounds or multi-channel sounds. When using MULT with a sound and a number, each sample value in the selected sound is multiplied by the number, which is essentially the same as using the **SCALE** command.

{% tabs %}
{% tab title="LISP" %}
```lisp
(mult *track* 0.5)
```
{% endtab %}

{% tab title="SAL" %}
```clike
return mult(*track*, 0.5)
```
{% endtab %}
{% endtabs %}
