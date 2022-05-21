# Volume Basics (SAL)

```
{{Nyquist Basics| This page explains how to use Nyquist to change the volume of Audacity tracks in different ways. }}
```

\_\_TOC\_\_

```
{{Hint|'''Note:''' All [comments] and [explanations] are written in square brackets, so they cannot be confused with (Lisp code).}}
```

### Changing the Volume of an Audacity Track in SAL <a href="#changing_the_volume_of_an_audacity_track_in_sal" id="changing_the_volume_of_an_audacity_track_in_sal"></a>

```
{{Hint|'''Note:''' What is SAL? SAL is a new alternative syntax to LISP. Although Nyquist is based on the LISP programming language, you can write almost any Nyquist program in SAL. Most people prefer SAL syntax to LISP syntax because SAL is a bit more like popular programming languages that include Java, C, and Python. Take your pick!}}
```

To change the volume of an Audacity track with Nyquist, the easiest way is to use the Nyquist "scale" function:

&#x20; **scale**(_number_, _sound_)

The "scale" function multiplies the amplitude \[volume] of the "sound" by the given "number". A number of 0.5 will make the sound become only half as loud as before, while a number of 2 will make the sound become double as loud as before.

**Example:** `{{Hint|'''Hint:''' See [[Nyquist Basics: The Audacity Nyquist Prompt|The Audacity Nyquist Prompt]] for an explanation how the Nyquist prompt works.}}`{=mediawiki}

**1.** First either load a sound file into Audacity or create an audio track, e.g. with "Tone" from the Audacity "Generate" menu.

**2.** Now click `{{Menu|Effect > Nyquist Prompt}}`{=mediawiki}. A window with a text field will appear where you can type in:

```
return scale(0.5, *track*)
```

```
{{Hint|'''Important:''' Do not forget to type the parens and comma. These are part of the SAL language. You might notice this is different from the example in [[Nyquist Basics: Changing the Volume]], which used the LISP language. You get to pick a language, LISP or SAL, but ''never'' mix the two in a single program.}}
```

After clicking "OK" in the "Nyquist Prompt" window the "scale" function will take the Audacity sound and return a "scaled-down" sound with half the volume to Audacity. The result of the last computation of the Nyquist code always gets automatically returned to Audacity. `{{Hint|'''Note:''' The "'''*TRACK*'''" variable is the Audacity "'''sound'''" [the selected part of the Audacity track]. Nyquist in Audacity always understands "'''*TRACK*'''" as the Audacity sound variable.}}`{=mediawiki}

If you try "scale" with big numbers you will notice that you can return sounds with volumes taller than the Audacity track which will sound very distorted if you play them afterwards in Audacity. So an important lesson to learn is that Nyquist gives you the freedom to do whatever you want but it's now on you to take care that the result will still sound good afterwards.
