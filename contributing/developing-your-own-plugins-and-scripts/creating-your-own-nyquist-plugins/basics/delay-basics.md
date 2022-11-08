# Delay Basics

```
{{Nyquist Basics| This page explains how to use Nyquist to add a feedback delay effect in Audacity. }}
```

\_\_NOTOC\_\_

```
{{Hint|'''Note:''' All [comments] and [explanations] are written in square brackets, so they cannot be confused with (Lisp code).}}
```

### Adding a Feedback Delay Effect to an Audacity Track <a href="#adding_a_feedback_delay_effect_to_an_audacity_track" id="adding_a_feedback_delay_effect_to_an_audacity_track"></a>

To add a feedback delay effect to an Audacity track with Nyquist, the easiest way is to use the Nyquist "feedback-delay" function:

&#x20; (**feedback-delay** _sound delay feedback_)

The "feedback-delay" function applies feedback delay to _sound_. The _delay_ must be a number (in seconds). The sample rate is the maximum from _sound_ and _feedback_ (if feedback is also a sound). The amount of _feedback_ should be less than 1 to avoid an exponential increase in amplitude. Also since output is truncated at the stop time of _sound_, you may want to append some silence to _sound_ to give the filter time to decay. `{{Hint|'''Hint:''' See [[Nyquist Basics: The Audacity Nyquist Prompt|The Audacity Nyquist Prompt]] for an explanation how the Nyquist prompt works.}}`{=mediawiki} **Example:**

**1.** First either load a sound file into Audacity or create an audio track with `{{Menu|Generate > Tone}}`{=mediawiki} in the menu.

**2.** Now click `{{Menu|Effect > Nyquist Prompt}}`{=mediawiki}. A window with a text field will appear where you can type in:

```
;;"(sine 440)" generates a sinusoidal sound wave at 440Hz to be used as the feedback 
(feedback-delay *track* 0.7 (sine 440)) 
```

```
{{Hint|'''Important:''' Do not forget to type the parens. The parens are part of the Lisp language Nyquist is based on. Without the parens the Nyquist Lisp interpreter will not be able to understand your code.}}
```

After clicking "OK" in the "Nyquist Prompt" window the "feedback-delay" function will take the Audacity sound and return a output sound with a feedback delay of 0.7s throughout the sound. The result of the last computation of the Nyquist code always gets automatically returned to Audacity. `{{Hint|'''Note:''' The '''*TRACK*''' variable is the Audacity "'''sound'''" [the selected part of the Audacity track]. Nyquist in Audacity always understands '''*TRACK*''' as the Audacity sound variable.}}`{=mediawiki}

Try "feedback-delay" with longer or shorter _delay_ times as well as different sounds for _feedback_. Nyquist provides many more functions to generate sounds besides the simple "sine" function. Look at [Functions: Sound Synthesis](http://www.cs.cmu.edu/\~rbd/doc/nyquist/part8.html#85%7CNyquist) for the complete list of these functions.
