---
description: >-
  This page explains how to use Nyquist to change the volume of left and right
  stereo channels independently.
---

# Independent Stereo Volume Basics

As discussed previously, the audio data `<sound>`from an Audacity track is passed to Nyquist in a variable '`*track*`'. If the track is mono (just one channel) then the `<sound>` is simply the _value_ given to the variable '`*track*`'. However, for a stereo track there are two sounds, and these are passed to Nyquist as two elements of an array. The name of the array is '`*track*'`.

To access a specific element of an array we use the [(aref)](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-029.htm) command.

As a stereo track has 2 channels, the array '`*track*`' has two elements which are numbered 0 and 1. the 0th element is the audio data from the left channel and the other element contains the audio data from the right channel.

To access the audio data from the left channel we can use:

```lisp
(aref *track* 0)
```

To access the audio data from the right channel we can use:

```lisp
(aref *track* 1)
```

As described in the previous tutorial we can amplify a sound using the (scale) function. For a mono track if we want to halve the amplitude of the sound we simply type

```lisp
(scale 0.5 *track*)
```

If we use this instruction on a stereo track the function is applied to each element of '\*track\*' in turn, so both channels are amplified to half of their original amplitude. However if we want to access the channels individually then we also need to know how to send two different sounds back to the same track in Audacity.

To send two different sounds to a stereo track in Audacity we must create an array with two elements. The first element will contain the `<sound>`{=html} for the left channel and the second element will contain the sound for the right channel. The easiest way to do this is to use the [vector](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-296.htm) function.

```lisp
(vector <left channel> <right channel>)
```

`<left channel>`and `<right channel>` will be the sounds that we are sending from Nyquist.

To try this out we will amplify the left channel only of a stereo track.

1. Open a short stereo track.
2. From the Effect menu select "Nyquist Prompt" and enter the following code:

```lisp
(vector
   (scale 2.0 (aref *track* 0))
   (aref *track* 1)
)
```

{% hint style="info" %}
Notice that the two elements are within the ellipses of the "vector" function.
{% endhint %}

The 0th element in this array is the original left channel `(aref *track* 0)` that has been scaled \[amplified] by 2. This will be the new left channel. The next element in this array is the original right channel `(aref *track* 1)` which is sent back unaltered as the new right channel.

Instead of using the function `(scale)` we could use the function [mult](http://audacity-forum.de/download/edgar/nyquist/nyquist-doc/manual/part6.html#index244). This is virtually identical to using the function [scale](http://audacity-forum.de/download/edgar/nyquist/nyquist-doc/manual/part6.html#index258) except that we do not need to specify the multiplication factor first. `(mult 2.0 *track*)` is identical to `(mult *track* 2.0)`.

For our second example we will amplify the left channel to half of its original amplitude and the right channel to double its original amplitude:

```lisp
(vector
   (mult (aref *track* 0) 0.5)
   (mult (aref *track* 1) 2.0))
```
