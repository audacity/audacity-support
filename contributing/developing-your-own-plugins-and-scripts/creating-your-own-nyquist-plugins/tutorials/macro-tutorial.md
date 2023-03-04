---
description: >-
  Nyquist-Macros are a special kind of Nyquist plugin that instruct Audacity to
  perform tasks using Audacity's scripting interface.
---

# Macro Tutorial

To use this feature effectively, it is necessary to use the correct commands and syntax, and also understand that when Nyquist is used in this way, Nyquist is not allowed, or able, to modify the project. Nyquist-Macros may instruct Audacity to modify the project, but unlike ''ordinary'' Nyquist plugins, Nyquist cannot itself modify the project.

Nyquist-Macros are potentially far more powerful than normal [Macros](https://manual.audacityteam.org/man/macros.html) in that they may make use of logic, loops and conditionally executing code, rather than only running through a simple list. They can also accept user input via the usual [Nyquist plugin GUI](../plugin-reference.md), and most other features of Nyquist plugins.

### About This Tutorial <a href="#about_this_tutorial" id="about_this_tutorial"></a>

Nyquist Macros are a fairly advanced topic, so this tutorial is aimed at users with an intermediate to advanced level of experience with Nyquist programming.

In this tutorial, we will be reimplementing Audacity's [**Tone**](https://manual.audacityteam.org/man/tone.html) generator as a Nyquist Macro. During the course of the tutorial, many of the abilities and core concepts of Nyquist Macros will be discussed, along with tips and potential pitfalls to watch out for in your own programming.&#x20;

{% hint style="warning" %}
Nyquist Macros are a powerful extension of Audacity's features. With great power comes great responsibility. Nyquist Macros bypass much of Audacity's built-in validation, so it is relatively easy to pass invalid commands that can cause Audacity to crash. Test your Nyquist Macros thoroughly before using them for important production work.
{% endhint %}

## Overview

Audacity provides a rich set of scripting commands, which are documented in the [Scripting Reference](https://manual.audacityteam.org/man/scripting\_reference.html) section of the Audacity manual. These commands may be sent from Nyquist, to tell Audacity what to do, using the function call "**AUD-DO**". As a very simple example, Nyquist can tell Audacity to start playing by sending the command "Play:"

&#x20;`(aud-do "Play")`

Some things to note:

* The command "Play:" is a string (text).
* The command is case sensitive. It must be capitalized exactly as stated in the [Scripting Reference](https://manual.audacityteam.org/man/scripting\_reference.html).
* The Nyquist function is AUD-DO, which like any other Nyquist function is case insensitive, and usually written in lower case in code.
* The function AUD-DO takes exactly one parameter, which is the command string.

As Nyquist cannot modify the project when used to send Macro scripting commands, most Nyquist-Macros will be written as "tool" type plugins.

## Passing Commands to Audacity <a href="#passing_commands_to_audacity" id="passing_commands_to_audacity"></a>

{% hint style="info" %}
The examples in this section may be run in the [Nyquist Prompt](https://manual.audacityteam.org/man/nyquist\_prompt.html), but ensure that you make a [selection ](https://manual.audacityteam.org/man/audacity\_selection.html)in an audio track first.
{% endhint %}

As described above, the "AUD-DO" function takes exactly one argument (parameter), which is the command that will be sent to Audacity. However, we may sometimes want to send a command that has multiple parameters. For example, to generate a 10 second, 200 Hz, 0.5 amplitude sine tone, the Macro Scripting command is:

&#x20;`Tone: Frequency=200 Amplitude=0.5 Waveform="Sine"`

With AUD-DO we can send the command, including it's parameters, as one string:

&#x20;`(aud-do "Tone: Frequency=200 Amplitude=0.5 Waveform=Sine")`

Using the above example, the macro command string could be passed as the value of a variable:

{% hint style="info" %}
As with other Nyquist commands, a string argument does not need to be a [string literal](https://en.wikipedia.org/wiki/String\_literal), it may be a variable that evaluates to a string.
{% endhint %}

`(setf command "Tone: Frequency=200 Amplitude=0.5 Waveform=Sine")`\
`(aud-do command)`

In this slightly more complex example we use the [FORMAT](https://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-121.htm) command to construct the command string. This approach is very useful if scripting command parameters are to be generated programmatically or obtained from user input.

```lisp
(setq hz 200)
(setq amplitude 0.5)
(setq type "Sine")

(setq command (format nil "Tone: Frequency=~a Amplitude=~a Waveform=~s"
                      hz
                      amplitude
                      type))

(aud-do command)
```

If we incorporate this code in an installable Nyquist Macro, we see that we are getting close to re-implementing Audacity's [Tone](https://manual.audacityteam.org/man/tone.html) generator as a Nyquist macro.

Here is a simplified implementation of Audacity's Tone Generator:

```lisp
;nyquist plug-in
;version 4
;type tool
;name "Nyquist Tone"

;control type "Waveform" choice "Sine,Square,Sawtooth,Square, no alias" 0
;control hz "Frequency" real "Hz" 440 1 10000
;control amplitude "Amplitude" real "0 to 1" 0.8 0 1

(case type
  (0 (setf type "Sine"))
  (1 (setf type "Square"))
  (2 (setf type "Sawtooth"))
  (t (setf type "Square, no alias")))


(setq command (format nil "Tone: Frequency=~a Amplitude=~a Waveform=~s"
                     hz
                     amplitude
                     type))

(aud-do command)
```

Some important things to note in this example Nyquist Macro:

* The plugin type is "tool". If it were set as a "generate" type, running the plugin without a track would crash because of the duplicate attempt to create a new track (once from the plug-in being a generate type, and again from the Audacity scripting command).
* This simplified version does not provide a "Duration" control, so the generated tone will be the length of the selection (if there is a selection), or 30 seconds (default).
* In the Scripting command, the **Waveform** parameter must be quoted because its value may include a space. We therefore use **\~S** rather than **\~A** in the FORMAT function.

## Importing Scripting Functions <a href="#importing_scripting_functions" id="importing_scripting_functions"></a>

If you are familiar with Nyquist's LISP syntax, you will have noticed that the syntax described above is not very Lisp-like. The ''magic string'' commands are case sensitive, and constructing the strings is inelegant. However, for many of the scripting commands, a lisp equivalent exists.

Each of these functions have names beginning '''AUD-''', suffixed with the scripting command name. The scripting command parameters are passed as keyword arguments.

{% hint style="info" %}
There is a small performance penalty when using these LISP syntax commands, so for performance critical applications (such as batch processing many small files), it may be preferred to use the AUD-DO versions.''
{% endhint %}

In Audacity 2.3.2 and later, the following scripting commands have equivalent LISP functions:

* [Generate menu](https://manual.audacityteam.org/man/generate\_menu.html) effects.
* [Built-in](https://manual.audacityteam.org/man/effect\_menu\_built\_in.html) effects.
* [Scriptables I](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_i.html).
* [Scriptables II](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_ii.html).

{% hint style="info" %}
Tip: Remember that Nyquist Macros cannot call Nyquist effects.&#x20;
{% endhint %}

**Example:** The scripting command for Audacity's built-in "Amplify" effect is:

&#x20;`Amplify: Ratio=<number>`

The equivalent imported LISP function for Audacity's built-in Amplify effect is:

&#x20;`(aud-amplify :ratio <number>)`

In both versions, the ratio is a floating point number representing the gain on a linear scale. If we want to Amplify by -3 dB, we can apply the Amplify effect:

```lisp
(setq val (db-to-linear -3.0))
(aud-amplify :ratio val)
```

{% hint style="info" %}
Tip: Although the imported function names, and keys are case insensitive, note that if the keyword value is a string, the value is case sensitive.
{% endhint %}

In this next code sample, we reproduce the simple "Tone" generator from above, using the imported AUD-TONE function:

```lisp
;nyquist plug-in
;version 4
;type tool
;name "Nyquist Tone"

;control type "Waveform" choice "Sine,Square,Sawtooth,Square, no alias" 0
;control hz "Frequency" real "Hz" 440 1 10000
;control amplitude "Amplitude" real "0 to 1" 0.8 0 1

(case type
  (0 (setf type "Sine"))
  (1 (setf type "Square"))
  (2 (setf type "Sawtooth"))
  (t (setf type "Square, no alias")))

(aud-tone :frequency hz :amplitude amplitude :waveform type)
```

## Length of Generated Sounds <a href="#length_of_generated_sounds" id="length_of_generated_sounds"></a>

Unlike Nyquist's generator functions, Audacity's built-in [generator functions](https://manual.audacityteam.org/man/scripting\_reference.html#Generate\_Menu) do not have a parameter for the duration of the sound that is generated. Instead, the duration is set by the length of the track selection. If there is no track selection, then the length defaults to 30 seconds.

One limitation of Nyquist plugins that we cannot yet work around, is that the plugin UI is not dynamic and cannot be changed programmatically. Where as Audacity's built-in Tone generator will automatically show the length of the selected audio, this is not yet possible for Nyquist plugins. As a compromise solution, we can:

* Add a "Duration" control.
* If there is no selection, create a selection of the length specified by the Duration control.
* If there is a selection, ignore the Duration control and generate into the selection.

{% hint style="info" %}
Note: In order to generate audio into a selection, there has to be a ''track'' selection before running the generate command. It is not enough to have a time selection without a track being selected.
{% endhint %}

As we want to mimic the behaviour of Audacity's Tone generator, we need to handle cases where:

1. There is a selection in an audio track.
2. There is a time selection but no track selection.
3. There is a track selection but no time selection.

While is is possible to find what is selected using the scripting command [GetInfo:](https://manual.audacityteam.org/man/scripting\_reference.html#Extra:\_Scriptables\_II), a simpler way is to use the Nyquist global property list \*SELECTION\*.

```lisp
(get '*selection* 'start)   ;start of time selection in seconds
(get '*selection* 'end)     ;end of time selection in seconds
(get '*selection* 'tracks)  ;list of selected tracks. NIL if no audio tracks selected
```

In Audacity 2.3.0 and later, there is a "\[Nyquist\_Plug-ins\_Widgets#Time\_Widget time widget]", which greatly simplifies handling durations, and is in keeping with Audacity's built-in effects.

&#x20;`;control duration "Duration" time "" 30 0 nil`

Then we want to check if an audio track is selected, and if not, add a new track. Note that there isn't a LISP function for adding a new track, so we fall back on AUD-DO instead:

```lisp
(unless (get '*selection* 'tracks)
  (aud-do "NewMonoTrack:"))
```

And to handle the time selection:

```lisp
(let ((start (get '*selection* 'start))
      (end (get '*selection* 'end)))
  (unless (> (- end start) 0)
    (aud-selecttime :end duration :relativeto "SelectionStart")))
```

## Putting It All Together <a href="#putting_it_all_together" id="putting_it_all_together"></a>

The completed Nyquist Macro plug-in:

```lisp
;nyquist plug-in
;version 4
;type tool
;name "Nyquist Tone"

;control type "Waveform" choice "Sine,Square,Sawtooth,Square, no alias" 0
;control hz "Frequency" real "Hz" 440 1 10000
;control amplitude "Amplitude" real "0 to 1" 0.8 0 1
;control duration "Duration" time "" 30 0 nil

(case type
  (0 (setf type "Sine"))
  (1 (setf type "Square"))
  (2 (setf type "Sawtooth"))
  (t (setf type "Square, no alias")))

;; A track is required so that we can make a selection.
(unless (get '*selection* 'tracks)
  (aud-do "NewMonoTrack:"))

;; A selection is required to set the length of the generated tone.
;; Use the current selection if there is one, otherwise select user supplied value.
(let ((start (get '*selection* 'start))
      (end (get '*selection* 'end)))
  (unless (> (- end start) 0)
    (aud-selecttime :end duration :relativeto "SelectionStart")))

;; Now generate the tone.
(aud-tone :frequency hz :amplitude amplitude :waveform type)
```

## Tips

When using built-in effects or "Scriptable" commands, it is recommended to use the optional LISP functions. Not only are they more Lisp-like and convenient to use, they also provide a little more error checking, which can be very helpful when debugging. Note however that there is a small performance penalty when using these LISP syntax commands. For performance critical applications (such as batch processing many small files), it may be preferred to use the AUD-DO versions.

Be flexible in your thinking. Scripting commands are available for many, but not all of Audacity's functions. If you need to do something that appears to be missing from the available commands, consider other ways to achieve the desired result.

If you get stuck, ask for help. As with other aspects of Nyquist programming, support requests may be made on the Nyquist board of the [Audacity forum](https://forum.audacityteam.org/viewforum.php?f=69).

See also:&#x20;

{% embed url="https://manual.audacityteam.org/man/nyquist_macros.html" %}
