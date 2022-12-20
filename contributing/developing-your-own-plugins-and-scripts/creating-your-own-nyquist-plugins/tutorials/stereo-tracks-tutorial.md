---
description: >-
  This tutorial provides a brief introduction to using stereo tracks in Nyquist
  programming.
---

# Stereo Tracks Tutorial

If a sound from an Audacity stereo track was given to Nyquist, the **\*TRACK\*** variable contains an array of sounds. Because all Nyquist "snd-..." low-level functions only can process mono signals, to use such a function, the **\*TRACK\*** array first must be split into single mono signals and afterwards be re-combined into an array before it is given back to Audacity.

In Sal, one could write:

```clike
if arrayp(*track*) then
 return vector(snd-function(*track*[0]), snd-function(*track*[1]))
else
 return snd-function(*track*)
```

Or in LISP, one could write:

```lisp
(if (arrayp *track*)
    (vector
        (snd-function (aref *track* 0))   ; left stereo channel
        (snd-function (aref *track* 1)))  ; right stereo channel
    (snd-function *track*))               ; mono signal
```

* (arrayp \*track\*) - tests if '\*track\*' is an array
* (vector ... ) - re-combines the two mono signals into a stereo signal. A "vector" is an one-dimensional array
* (aref \*track\* 0) - the left stereo channel \[the 0-th slot of the array]
* (aref \*track\* 1) - the right stereo channel \[the 1-st slot of the array]

{% hint style="warning" %}
**Important:** The Nyquist interface within Audacity can handle a maximum of two channels simultaneously \[Audacity stereo tracks]. If in Audacity more than one audio track were selected, each of the selected tracks will be given sequentially, one after the other, with a maximum of two channels simultaneously \[stereo] to Nyquist for processing. It is not possible with Nyquist in Audacity e.g. to copy audio signals from one Audacity track into another track.
{% endhint %}

## multichan-expand <a href="#multichan_expand" id="multichan_expand"></a>

In the "nyquist.lsp" file in the Audacity "nyquist" sub-directory, there is a function "multichan-expand" defined, which simplifies the handling of multi-channel sounds \[e.g. stereo tracks]:

&#x20;`(multichan-expand function &rest arguments)`

So the "arrayp" constuct from above can also be written:

```lisp
 return multichan-expand(quote(snd-function), *track*) ;; in SAL
 (multichan-expand #'snd-function *track*) ;; in LISP
```

This may look a bit more cryptic at first, but it can help to avoid long-winded audio processing functions.
