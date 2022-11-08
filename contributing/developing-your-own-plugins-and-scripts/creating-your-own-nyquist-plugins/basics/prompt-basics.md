# Prompt Basics

```
{{Nyquist Basics|This page explains how to use the Audacity Nyquist Prompt to test-run Nyquist code snippets. }}
```

```
{{ednote|'''Steve 07Apr18''' P1 Images need updating
*'''Peter 21Jul19:''' Done - by trimming off the TCPs (to aid future generalization against future TCP changes).  And added the indentations that Connie likes.}}
```

\_\_TOC\_\_

### Setting up <a href="#setting_up" id="setting_up"></a>

```
{{note|1=This article uses [https://en.wikipedia.org/wiki/Lisp_(programming_language) LISP] syntax for Nyquist commands. For an introduction using SAL syntax, see [[Nyquist Basics: The Audacity Nyquist Prompt With SAL]].}}
```

The Audacity Nyquist prompt appears in Audacity's "Tools" menu. `{{Hint|For testing generate commands in Nyquist, you can install the [http://wiki.audacityteam.org/wiki/Nyquist_Generate_Plugins#Nyquist_Generate_Prompt Nyquist Generate Prompt] plug-In, or simulate the behavior of a generate type plug-in in the [http://manual.audacityteam.org/man/nyquist_prompt.html Nyquist Prompt] effect.}}`{=mediawiki}

#### Load a Sound File <a href="#load_a_sound_file" id="load_a_sound_file"></a>

Sound files are imported into Audacity via:

```
{{Menu|File > Import > Audio}}
```

or the shortcut `{{Shortcut|CTRL + SHIFT + I}}`{=mediawiki}

If you have no pre-existing sound files to work with, you can create your own mono or stereo tracks via the Audacity "Generate" menu.

#### Create a Mono Track <a href="#create_a_mono_track" id="create_a_mono_track"></a>

**1.** Click `{{Menu|Tracks > Add New > Mono Track}}`{=mediawiki}. An empty mono track will appear in the Audacity window:

**2.** Click `{{Menu|Generate > Tone}}`{=mediawiki}. Leave everything as-is and just click `{{button|OK}}`{=mediawiki}. The mono tracks will become filled with the generated sound.

:&#x20;

#### Create a Stereo Track <a href="#create_a_stereo_track" id="create_a_stereo_track"></a>

**1.** Create an empty stereo track.

* click `{{Menu|Tracks > Add New > Stereo Track}}`{=mediawiki}.

An empty stereo track will appear in the Audacity window.

**2.** Now click `{{Menu|Generate > Tone}}`{=mediawiki}. Leave everything as-is and just click "OK". The stereo tracks will become filled with the generated sound.

:&#x20;

```
<div id="prompt">
```

```
</div>
```

### The Nyquist Prompt <a href="#the_nyquist_prompt" id="the_nyquist_prompt"></a>

```
{{alert|Recent versions of Audacity have an option to '''"Use legacy (version 3) syntax"''' in the Nyquist Prompt. Ensure that option is '''NOT''' enabled for these examples.}}
```

Select the track(s) and click `{{Menu|Tools > Nyquist Prompt}}`{=mediawiki}.

The Nyquist Prompt appears like this:

:&#x20;

#### The Nyquist Interpreter <a href="#the_nyquist_interpreter" id="the_nyquist_interpreter"></a>

In the Nyquist Prompt window, type `(print "hello")` into the text field with the parentheses and quotes, as follows:

:&#x20;

```
{{Hint|'''NOTE:''' The Nyquist Prompt must see an open parenthesis as the first non-space character; otherwise it will assume this is written using [[Nyquist Basics: The Audacity Nyquist Prompt With SAL|SAL syntax]]. Otherwise, we might have just typed <tt>"hello"</tt>, which worked in earlier versions of Audacity.}}
```

When you click OK, you should get a message box displaying the word hello:

:&#x20;

The message box disappears when you click OK.

This, as you have learned, is how you can send messages to the user.

#### The Nyquist Debugger <a href="#the_nyquist_debugger" id="the_nyquist_debugger"></a>

Go back to `{{Menu|Tools > Nyquist Prompt}}`{=mediawiki}, and this time, type `(print hello)` with the parentheses but without the quotes:

:&#x20;

**Important:** This time, click `{{button|Debug}}`{=mediawiki} instead of `{{button|OK}}`{=mediawiki}.

A "debug window" appears, displaying the error messages that Nyquist returned:

:&#x20;

```
{{Hint|'''NOTE:''' The Nyquist debug window only appears if you click {{button|Debug}} button. If you click {{button|OK}} button, then errors are printed to the [https://manual.audacityteam.org/man/help_menu_diagnostics.html#show_log Audacity log].}}
```

#### Basic Nyquist Commands <a href="#basic_nyquist_commands" id="basic_nyquist_commands"></a>

The current Nyquist manual is here: [Nyquist Reference Manual](https://www.cs.cmu.edu/\~rbd/doc/nyquist/).

A useful index of Nyquist commands is here: [Nyquist Language reference](https://www.cs.cmu.edu/\~rbd/doc/nyquist/indx.html)

Audacity uses the **\*TRACK\*** variable to reference the current audio file/selection. Thus, you can use basic commands such as **mult** or **sum** with **\*track\*** and the Nyquist prompt will replace the file/selection with the result (or as Audacity calls it, "returned audio"). `{{note|Prior to version 4 syntax, the variable '''S''' was used instead of '''*TRACK*'''. You may encounter this in some old plug-ins or old documentation. The old syntax is obsolete and should not be used in new code.}}`{=mediawiki}

#### Simple Examples <a href="#simple_examples" id="simple_examples"></a>

```
{{Hint|'''NOTE:''' These examples are focused upon using Audacity to manipulate digital signals (clearly Audacity is better suited to audio, but features such as Nyquist can open many other uses).
For those interested, the signal used is an [http://en.wikipedia.org/wiki/Consumer_IR infra red] (IR) sample from a remote control.}}
```

```
{{Hint|'''NOTE:''' Each code example will be shown once using LISP syntax, and again using SAL syntax. Either form can be used, but never try to mix them in a single program or prompt! ''Prior to Audacity Version 1.3.13 (Beta), only LISP syntax works.''}}
```

**Applying a DC offset to a signal**

:&#x20;

Original Signal before command.

Type the following into the Nyquist Prompt (using LISP syntax): `{{code|(sum *track* 1)}}`{=mediawiki} Or type the following equivalent SAL command: `{{code|return *track* + 1}}`{=mediawiki}

:&#x20;

The whole signal has now moved up to above zero.

**Modulating with a carrier frequency**

To multiply a signal with a generated carrier signal, you can use the following commands: `{{code|(mult *track* (hzosc 19000))}}`{=mediawiki} Or the SAL equivalent: `{{code|return *track* * hzosc(19000)}}`{=mediawiki} The (hzosc 19000) produces 19kHz sine wave carrier.

```
{{code|(mult *track* (osc-pulse 19000 0))}}
```

Or the SAL equivalent: `{{code|return *track* * osc-pulse(19000, 0)}}`{=mediawiki} The (osc-pulse 19000 0) produces 19kHz square wave carrier (note the 0 is the bias or 50/50 duty cycle, -1 to 1 = 0%-100% pulse-width ). Applying the 19kHz square wave carrier obtains this result.

:&#x20;

The top and bottoms of the signal can then be clipped using the Hard Limiter option from the effects menu (0dB limit and Wet level 1) if required.

The above examples show how you can use the many Nyquist commands to perform basic signal processing without using scripts.

```
{{Hint|'''NOTE:''' Unfortunately, this isn't the end of the road for this sample; it is near, but the curved "head/tail" of the signal causes a problem for the digital signal being produced [and it was also upside-down, too...]. This will hopefully form the basis of some more complex examples, since I shall need to use Nyquist to:
#Find the zero crossing points
#Then only apply the carrier frequency to those regions above zero.
Or find another suitable command...}}
```

_Thanks to_ [_Forum_](https://forum.audacityteam.org/) _moderators stevethefiddle & kozikowski for their help with Audacity & Nyquist._
