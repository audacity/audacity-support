# Prompt Basics (SAL)

```
{{Nyquist Basics|This page explains how to use the Audacity Nyquist Prompt to test-run Nyquist code snippets using the SAL syntax. For Audacity versions below 1.3.13 (Beta), SAL syntax is not supported in the Nyquist Prompt... command, so you should use LISP syntax as described in [[Nyquist Basics: The Audacity Nyquist Prompt]].}}
```

\_\_TOC\_\_

### Setting up <a href="#setting_up" id="setting_up"></a>

Make sure you are using Audacity 1.3.13 or higher. If not, please visit Nyquist Basics: The Audacity Nyquist Prompt.

The Audacity Nyquist prompt appears in Audacity's `{{Menu|Effect}}`{=mediawiki} menu, which is activated only if an Audacity audio track exists and at least some audio in it is selected. `{{Hint|For testing generate commands in Nyquist, you can add [https://web.audacityteam.org/nyquist/generate.zip Nyquist Generate Prompt] to the Audacity "Plug-Ins" folder.}}`{=mediawiki}

#### Load a Sound File <a href="#load_a_sound_file" id="load_a_sound_file"></a>

Sound files are imported into Audacity via:

```
{{Menu|File > Import > Audio}}
```

or the shortcut `{{Shortcut|CTRL + SHIFT + I}}`{=mediawiki}

If you have no pre-existing sound files to work with, you can create your own mono or stereo tracks via the Audacity `{{Menu|Generate}}`{=mediawiki} menu.

#### Create a Mono Track <a href="#create_a_mono_track" id="create_a_mono_track"></a>

Click `{{Menu|Generate > Tone}}`{=mediawiki}. Leave everything as-is and just click "OK". A mono track will appear in the Audacity window:

#### Create a Stereo Track <a href="#create_a_stereo_track" id="create_a_stereo_track"></a>

**1.** Create an empty stereo track. Click `{{Menu|Track > Add New... > Stereo Track}}`{=mediawiki}.

An empty stereo track will appear in the Audacity window.

**2.** Now click `{{Menu|Generate > Tone}}`{=mediawiki}. Leave everything as-is and just click "OK". The stereo tracks will become filled with the generated sound.

### The Nyquist Prompt <a href="#the_nyquist_prompt" id="the_nyquist_prompt"></a>

Select the track(s) and click `{{Menu|Effect > Nyquist Prompt}}`{=mediawiki}. Effects are not activated until at least a portion of the track(s) have been selected. You can select all tracks by pressing `{{Shortcut|CTRL + A}}`{=mediawiki} on the keyboard.

The Nyquist Prompt appears like this:

#### The Nyquist Interpreter <a href="#the_nyquist_interpreter" id="the_nyquist_interpreter"></a>

In the Nyquist Prompt window, type

```
return "hello"
```

into the text field as follows:

When you click OK, you should get a message box displaying the word hello:

The message box disappears when you click "OK".

This, as you have learned, is how you can send messages to the user.

#### The Nyquist Debugger <a href="#the_nyquist_debugger" id="the_nyquist_debugger"></a>

After clicking OK in the "hello" message box, go back to `{{Menu|Effect > Nyquist Prompt}}`{=mediawiki}, and this time, type

```
return hello
```

this time leaving off the quotes around "hello":

**Important:** This time, click "Debug" instead of "OK".

You should first get a window displaying a "Nyquist did not return audio" or a similar message:

After clicking "OK" in the window above, a second window appears, displaying the error messages that Nyquist returned. Notice that there are two parts to the message. The first line says what went wrong. Here, HELLO is interpreted as a variable, but the variable has no value, which is an error. Starting with the second line is a "traceback" which tells where in the program the error occurred. MAIN refers to any top-level command. If you defined a function and the error occurred within the function, this would be indicated in the traceback.

```
{{Hint|'''NOTE:''' The "Nyquist output" window only appears if you click "Debug" in the "Nyquist Prompt" window. If you click "OK", then, even with a Nyquist error, only the first window will appear.}}
```

#### Basic Nyquist Commands <a href="#basic_nyquist_commands" id="basic_nyquist_commands"></a>

The current Nyquist manual introducing SAL syntax is here: [Nyquist 3.02 Reference Manual](http://www.cs.cmu.edu/\~rbd/doc/nyquist/).

Audacity uses the **\*TRACK\*** variable to reference the current audio file/selection. Thus, you can use basic commands such as 'mult' or 'sum' with **\*TRACK\*** and the Nyquist prompt will replace the file/selection with the result (or as Audacity calls it, "returned audio").

#### Simple Examples <a href="#simple_examples" id="simple_examples"></a>

```
{{Hint|'''NOTE:''' These examples are focused upon using Audacity to manipulate digital signals (clearly Audacity is better suited to audio, but features such as Nyquist can open many other uses).
For those interested, the signal used is an [http://en.wikipedia.org/wiki/Consumer_IR infra red] (IR) sample from a remote control.}}
```

```
{{Hint|'''NOTE:''' Each code example will be shown once using SAL syntax, and again using LISP syntax. Either form can be used, but never try to mix them in a single program or prompt!}}
```

**Applying a DC offset to a signal**

Original Signal before command.

Type the following into the Nyquist Prompt (using SAL syntax):

&#x20;`return *track* + 1`

Or type the following equivalent LISP command:

&#x20;`(sum *track* 1)`

The whole signal has now moved up to above zero.

**Modulating with a carrier frequency**

To multiply a signal with a generated carrier signal, you can use the following commands:

&#x20;`return *track* * hzosc(19000)`

Or the LISP equivalent:

&#x20;`(mult *track* (hzosc 19000))`

The (hzosc 19000) produces 19kHz sine wave carrier.

&#x20;`return *track* * osc-pulse(19000, 0)`

Or the LISP equivalent:

&#x20;`(mult *track* (osc-pulse 19000 0))`

The osc-pulse(19000, 0) produces a 19kHz square wave carrier (note the 0 is the bias or 50/50 duty cycle, -1 to 1 = 0%-100% pulse-width ). Applying the 19kHz square wave carrier obtains this result.

The top and bottoms of the signal can then be clipped using the Hard Limiter option from the effects menu (0dB limit and Wet level 1) if required.

The above examples show how you can use the many Nyquist commands to perform basic signal processing without using scripts.

```
{{Hint|'''NOTE:''' Unfortunately, this isn't the end of the road for this sample; it is near, but the curved "head/tail" of the signal causes a problem for the digital signal being produced [and it was also upside-down, too...].  This will hopefully form the basis of some more complex examples, since I shall need to use Nyquist to:
#Find the zero crossing points
#Then only apply the carrier frequency to those regions above zero.
Or find another suitable command...}}
```

_Thanks to_ [_Forum_](https://forum.audacityteam.org/) _moderators stevethefiddle & kozikowski for their help with Audacity & Nyquist._
