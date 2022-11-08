# Volume Basics

```
{{Nyquist Basics| This page explains how to use Nyquist to change the volume of Audacity tracks in different ways. }}
```

\_\_TOC\_\_

```
{{Hint|'''Note:''' All [comments] and [explanations] are written in square brackets, so they cannot be confused with (Lisp code).}}
```

### Changing the Volume of an Audacity Track <a href="#changing_the_volume_of_an_audacity_track" id="changing_the_volume_of_an_audacity_track"></a>

To change the volume of an Audacity track with Nyquist, the easiest way is to use the Nyquist [**SCALE**](http://www.cs.cmu.edu/\~rbd/doc/nyquist/part8.html#index371) function:

&#x20; (**scale** _number sound_)

The "scale" function multiplies the amplitude \[volume] of the "sound" by the given "number". A number of 0.5 will make the sound become only half as loud as before, while a number of 2 will make the sound become double as loud as before.

**Example:** \`\{{Hint|'''Hint:''' See \[\[Nyquist Basics: The Audacity Nyquist Prompt|The Audacity Nyquist Prompt]] for an explanation how the Nyquist prompt works.

* To run this example in the Nyquist Prompt, ensure that "Use legacy (version 3) syntax" is ''not'' selected.
* For more information about the '''_track_''' keyword, refer to the \[\[Nyquist\_Plug-ins\_Reference#.2ATRACK.2A|Nyquist Plug-ins Reference]]\}}\`{=mediawiki}

**1.** First either load a sound file into Audacity or create an audio track, e.g. with "Tone" from the Audacity "Generate" menu.

**2.** Now click `Tools > Nyquist Prompt`. A window with a text field will appear where you can type in:

```
(scale 0.5 *track*)
```

```
{{Hint|'''Important:''' Do not forget to type the parentheses. The parentheses are part of the Lisp language Nyquist is based on. Without the parentheses the Nyquist Lisp interpreter will not be able to understand your code. If you think you should type something like scale(0.5, *track*), then see [[Nyquist Basics: Changing the Volume in SAL]].}}
```

After clicking "OK" in the "Nyquist Prompt" window the "scale" function will take the Audacity sound and return a "scaled-down" sound with half the volume to Audacity. The result of the last computation of the Nyquist code always gets automatically returned to Audacity.

If you try "scale" with big numbers you will notice that you can return sounds with volumes taller than the Audacity track which will sound very distorted if you play them afterwards in Audacity. So an important lesson to learn is that Nyquist gives you the freedom to do whatever you want but it's now on you to take care that the result will still sound good afterwards.

An alternative command for amplifying a sound is the [**MULT**](http://www.cs.cmu.edu/\~rbd/doc/nyquist/part8.html#index617) command.

**MULT** may be used with numbers, sounds or multi-channel sounds. When using MULT with a sound and a number, each sample value in the selected sound is multiplied by the number, which is essentially the same as using the **SCALE** command.

```
(mult *track* 0.5)
```

[Category:Nyquist:Tutorials](Category:Nyquist:Tutorials)
