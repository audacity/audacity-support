# Headers Reference

Plug-in Headers are specially formatted [code comments](https://en.wikipedia.org/wiki/Comment\_\(computer\_programming\)) placed at the top of a Nyquist plug-in script.

Any line beginning with a semi-colon (";") is entirely ignored by Nyquist, but properly formatted "header" comments provide instructions that tell Audacity how to create the plug-in.

## Plugin header format

Plug-in headers are written as:

```
;keyword args
```

where _keyword_ is the header command, and _args_ is a list of values. For most header commands there must be the correct number of arguments.

Important:

* Nyquist plug-in headers normally begin with one single semicolon at the beginning of each line.
* Headers must be all lower-case except for quoted text (for example: "_name_") which may include upper-case characters.
* Malformed plug-in headers are ignored (treated as normal code comments).
* Audacity 2.3.0 adds a new style of header for plug-ins that are shipped with Audacity which provides multi-language translation support.

#### Locale Support

Translated headers begin with a dollar character ("$") rather than a semi-colon. The string to be translated is double quoted, and appears between (\_ and ).

{% hint style="info" %}
Multi-language support for a plug-in's [GUI](https://en.wikipedia.org/wiki/Graphical\_user\_interface) is available only to plug-ins that are shipped with Audacity, as the translations must be compiled into Audacity's language files.

See also: [Plug-in Translations.](plugin-reference.md#plug\_in\_translations)
{% endhint %}

Example:

```
$name (_ "Name of Effect")
```

### Header Syntax

All plug-in headers have the syntax: ;keyword _args_, where _args_ are the parameters ("arguments") for the header command.

| [Required plug-in headers:](broken-reference)                                     |                                                                                                                                                                                                                                                                         |
| --------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| These headers are required in all Nyquist plug-ins.                               |                                                                                                                                                                                                                                                                         |
| [;nyquist plug-in](broken-reference)                                              | Defines the text file as a Nyquist plug-in.                                                                                                                                                                                                                             |
| [;name](broken-reference) "_name_"                                                | Sets the name of the plug-in.                                                                                                                                                                                                                                           |
| [;type](broken-reference) "_type_"                                                | Specifies the _type_ of plug-in.                                                                                                                                                                                                                                        |
| [;version](broken-reference) _version_                                            | Specifies the Nyquist plug-in version.                                                                                                                                                                                                                                  |
| [Display Headers:](broken-reference)                                              |                                                                                                                                                                                                                                                                         |
| Display additional information about the plug-in. These headers are optional.     |                                                                                                                                                                                                                                                                         |
| [;author](broken-reference) "_text_"                                              | Name of plug-in developer. Shown in [the "About" section of Manage](https://manual.audacityteam.org/man/manage\_presets.html#About). Also used when effects are [sorted by "Publisher"](https://alphamanual.audacityteam.org/man/Effects\_Preferences#effect\_options). |
| [;copyright](broken-reference) "_text_"                                           | Copyright / license notice. Shown in [the "About" section of Manage](https://manual.audacityteam.org/man/manage\_presets.html#About).                                                                                                                                   |
| [;release](broken-reference) _version_                                            | Version / release number of the plug-in. Shown in [the "About" section of Manage](https://manual.audacityteam.org/man/manage\_presets.html#About).                                                                                                                      |
| [Functional Headers:](broken-reference)                                           |                                                                                                                                                                                                                                                                         |
| These headers may be used to provide additional functionality.                    |                                                                                                                                                                                                                                                                         |
| [;codetype](broken-reference) _type_                                              | Specifies if the Nyquist code uses SAL or LISP syntax.                                                                                                                                                                                                                  |
| [;debugbutton](broken-reference) _option_                                         | Specifies if the Debug button is visible.                                                                                                                                                                                                                               |
| [;debugflags](broken-reference) _flags_                                           | Sets the debug message behavior.                                                                                                                                                                                                                                        |
| [;helpfile](broken-reference) _"path to file"_                                    | Displays a Help button that links to a plug-in Help file.                                                                                                                                                                                                               |
| [;manpage](broken-reference) "_URL_"                                              | Displays a Help button that links to the plug-in Help page in the [Audacity manual](https://manual.audacityteam.org/).                                                                                                                                                  |
| [;maxlen](broken-reference) _integer_                                             | Sets the maximum number of samples to be processed.                                                                                                                                                                                                                     |
| [;mergeclips](broken-reference) _integer_                                         | Specifies the clip merge behavior.                                                                                                                                                                                                                                      |
| [;preview](broken-reference) _option_                                             | Specifies the plug-in Preview options.                                                                                                                                                                                                                                  |
| [;restoresplits](broken-reference) _integer_                                      | Specifies the clip split behavior.                                                                                                                                                                                                                                      |
| [Obsolete Headers:](broken-reference)                                             |                                                                                                                                                                                                                                                                         |
| These headers are no longer used by current versions of Audacity and are ignored. |                                                                                                                                                                                                                                                                         |
| [;action](broken-reference) "_text_"                                              | _Ignored_.                                                                                                                                                                                                                                                              |
| [;categories](broken-reference) "_text_"                                          | _Ignored_.                                                                                                                                                                                                                                                              |
| [;info](broken-reference) "_text_"                                                | _Ignored_.                                                                                                                                                                                                                                                              |
| [Control Headers:](broken-reference)                                              |                                                                                                                                                                                                                                                                         |
| These headers define the plug-in GUI.                                             |                                                                                                                                                                                                                                                                         |
| [;control](broken-reference) _\<args>_                                            | The parameters (_\<args>_) specify the type of widget and the widget's required arguments. See also: Nyquist Plug-ins Widgets                                                                                                                                           |

## Required plug-in headers

### **nyquist plug-in**

Tells Audacity "this is a Nyquist plug-in". This should normally be the first line as it defines the contents of the file.

```
 ;nyquist plug-in
```

### **name**

Name of the plug-in as it will appear in the Audacity menu:

```
 ;name "name"
```

Note that for plug-ins to be used in [Chains](https://manual.audacityteam.org/o/man/chains\_for\_batch\_processing\_and\_effects\_automation.html), the colon character ":" cannot be used (as it is a _special_ character in the Chain text file).

If the plug-in has an interface, the name should end with three dots so as to indicate that additional user action is required before the plug-in is applied. Plug-ins that act immediately without additional user action should not have dots at the end of the name.

### **type**

Only one ";type" line should be used.

A plug-in cannot appear in several Audacity menus at the same time, but it is possible to write several plug-ins with the same name and different ";type" lines. Each plug-in will then appear in the appropriate menu. Using the same name for more than one plug-in is not recommended and should generally be avoided.

| Type header    | Features                                       | Typical Role                                                                                                                                                        |
| -------------- | ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ;type analyze  | Plug-in appears in the Audacity Analyze menu.  | <ul><li>Analyzing selected track audio.</li><li>Durations are relative to the selection length.</li><li>Code iterates through each selected track.</li></ul>        |
| ;type generate | Plug-in appears in the Audacity Generate menu. | <ul><li>Generating audio.</li><li>Durations are absolute (1 "unit" of time = 1 second).</li><li>Code runs once only regardless of number of tracks.</li></ul>       |
| ;type process  | Plug-in appears in the Audacity Effect menu.   | <ul><li>Processing selected track audio.</li><li>Durations are relative to the selection length.</li><li>Code iterates through each selected track.</li></ul>       |
| ;type tool     | Plug-in appears in the Audacity Tools menu.    | <ul><li><a href="https://alphamanual.audacityteam.org/man/Nyquist_Macros">Nyquist Macros</a> / Other.</li><li>Nyquist cannot directly modify the project.</li></ul> |

Tool type plug-ins are typically [Nyquist Macros](https://alphamanual.audacityteam.org/man/Nyquist\_Macros) or plug-ins that don't fit well in any of the first three roles. They may also be combined with one of the other types:

| Type header         | Features                                                             |
| ------------------- | -------------------------------------------------------------------- |
| ;type tool analyze  | Appears in the Audacity Tools menu and behaves like an Analyze type. |
| ;type tool generate | Appears in the Audacity Tools menu and behaves like a Generate type. |
| ;type tool process  | Appears in the Audacity Tools menu and behaves like a Process type.  |

### **version**

Use only one ";version" line.

All new plug-ins should use the most recent version number so that all current features are available. The version line is required to allow Audacity to run the plug-in correctly and prevents plug-ins with new features from being loaded in an old Audacity program that is missing required features.

| Version header | Features                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ;version 1     | Slider Widget                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ;version 2     | Text input widget added                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ;version 3     | multiple-Choice widget added                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ;version 4     | <ul><li>Additional <a href="broken-reference">global variables</a> to pass additional information from Audacity to Nyquist.</li><li><p>New optional plug-in headers:</p><ul><li><a href="headers-reference.md#author">;author</a></li><li><a href="headers-reference.md#copyright">;copyright</a></li><li><a href="headers-reference.md#maxlen">;maxlen</a></li><li><a href="headers-reference.md#mergeclips">;mergeclips</a></li><li><a href="headers-reference.md#preview">;preview</a></li><li><a href="headers-reference.md#release">;release</a></li><li><a href="headers-reference.md#restoresplits">;restoresplits</a></li></ul></li></ul> |

## Display headers

### author

Name of the plug-in Author. If this line is added, its text will appear in the Audacity Effect Menu when sorted or grouped by "Publisher". The _author name_ string must be quoted.

```
 ;author "Name of Plug-in Author(s)"
```

### **copyright**

A short statement of the copyright/license terms. For plug-ins shipped with Audacity, this must be compatible with Audacity's GPL v2 license. The copyright string must be quoted.

Recommended text for GPL v2 license:

;copyright "Released under terms of the GNU General Public License version 2 or later"

Additional copyright details may be included in the plug-in code comments, but must not conflict with the terms declared in the copyright header.

```
 ;copyright "copyright text"
```

### **release**

Displays a release version number for the plug-in in the [Manage > About](https://manual.audacityteam.org/man/manage\_presets.html#About) menu.

Plug-ins that are shipped with Audacity have a release version number equivalent to the Audacity version at the time that the plug-in was last updated.

Plug-in authors may choose whichever [versioning scheme](https://en.wikipedia.org/wiki/Software\_versioning) they prefer, but should ensure that later versions of the plug-in always have a later version number. If the version number has spaces, it must be enclosed in double quotes.

Any one of the following are valid (though there should be only ONE release header in a plug-in):

release 1\
release 0.0.1\
release "1.0"\
release "3.5 beta"

### Functional headers

### **codetype**

Declaration of code syntax. May be either lisp or sal (lower case).

* For LISP syntax plug-ins this is usually omitted, but it should always be included for SAL syntax plug-ins.
* If the code type is not declared in the [Nyquist Prompt effect](http://manual.audacityteam.org/man/nyquist\_prompt.html), Audacity attempts to deduce the correct syntax from the code.
* The code type can only be Lisp syntax or SAL. It cannot be a mix of both.

```
 ;codetype type
```

### **debugbutton**

Show or hide the Debug button. The default is to show the button, but for plug-ins that are shipped with Audacity, or other plug-ins that are believed to be bug free, the Debug button may be hidden by setting this to "false" or "disabled"

```
 ;debugbutton false
```

or

```
 ;debugbutton disabled
```

### **debugflags**

| debugflags header      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ;debugflags trace      | <p>Sets <a href="http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-287.htm">*tracenable*</a> (LISP) or *sal-traceback* (SAL) and displays debug window if there is anything to show.</p><p>This may be useful when showing debug info is integral to what the plug-in does, or when debugging a script.</p>                                                                                                                                                               |
| ;debugflags notrace    | <p>Disables *tracenable* (LISP) / *sal-traceback* (SAL). This prevents the debug window from opening on error, unless the Debug button has been pressed.</p><p>If the Debug button has not been pressed and there is an error, the error message will be sent to Audacity's <a href="https://manual.audacityteam.org/man/help_menu_diagnostics.html#show_log">log</a>. Note that disabling *tracenable* limits the debug output to only the error message with little or no additional debugging information.</p> |
| ;debugflags compiler   | <p>Set *sal-compiler-debug* to 'true'.</p><p>Output from the SAL compiler is printed to the debug output. This may be viewed in the Debug window if enabled (for example, by clicking the Debug button), otherwise in the <a href="https://manual.audacityteam.org/man/help_menu_diagnostics.html#show_log">Audacity log</a>.</p>                                                                                                                                                                                 |
| ;debugflags nocompiler | <p>Set *sal-compiler-debug* to 'false'.</p><p>Disables compiler messages from SAL. Only debug and error messages are printed to the debug output.</p>                                                                                                                                                                                                                                                                                                                                                             |

These flags may be used in conjunction with the [debugbutton](broken-reference) header to provide a variety of behaviors.

* **debugbutton true, debugflags trace**: Debug window opens if debug button pressed or if Nyquist printed to the debug window.
* **debugbutton false, debugflags trace**: Debug button disabled, but debug window opens if Nyquist printed to the debug window.
* **debugbutton true, debugflags notrace**: Debug window opens only when Debug button is pressed. If Debug button has NOT been pressed, any error messages that arise are routed to the [Audacity log](https://manual.audacityteam.org/man/help\_menu\_diagnostics.html#show\_log).
* **debugflags compiler, debugflags trace**: (When using SAL syntax) The Debug window always opens to display the output from the SAL compiler.
* **debugflags compiler, debugflags notrace**: (When using SAL syntax) The Debug window only opens to display the output from the SAL compiler if Debug button is clicked, otherwise it is printed to the Audacity log.
* **debugflags nocompiler, debugflags trace**: (When using SAL syntax) The Debug window always opens to display debug and/or error messages. Output from the SAL compiler is suppressed.

### **helpfile**

A [Help button](http://manual.audacityteam.org/man/help\_button.html) may be added to the plug-in [GUI](https://en.wikipedia.org/wiki/Graphical\_user\_interface) by giving the relative path and name of a help file. As the button can only be created if the plug-in has a GUI, this header should not be used in plug-ins that do not have a GUI.

```
 ;helpfile path to file
```

The file path is relative to the plug-in search path. Normally the help file would be placed in the same location as the plug-in when it is installed. To support HTML files with images and/or media, the help file and its resources may be in a folder, and the folder included in the file path. For example, if the help file is called "my\_effect.html" and it includes images, then the html file and images may be placed in a folder called "my\_effect\_help", and the helpfile header would be:

```
 ;helpfile "my_effect_help/my_effect.html"
```

{% hint style="info" %}
If the help file is not found, the ? button will not appear.
{% endhint %}

### **manpage**

This is primarily intended for use by plug-ins that are shipped with Audacity. It is similar to the [#helpfile helpfile](broken-reference) header, except that it looks for the help file in the search path for Audacity's manual. As with "_;helpfile_" it should only be used in plug-ins that have a GUI. For more information, see [Location of Manual](http://manual.audacityteam.org/man/interface\_preferences.html)

```
 ;manpage URL
```

### **maxlen**

Specifies the maximum number of samples to be processed in ["process"](broken-reference) or ["analyze"](broken-reference) type plug-ins. This can help the progress bar if length that will be processed is determined by the plug-in rather than by the length of selection. It could also be used as a fail-safe for plug-ins that are specifically designed for short selections. This example limits the number of samples to 1 million:

```
 ;maxlen 1000000
```

When the MAXLEN header is used, the Nyquist global variable LEN is the maximum of "length of selection in samples" and "value set by MAXLEN".

{% hint style="info" %}
In "process" type effects, this may cause the selected audio to be truncated to the specified number of samples. In such cases it may be best to throw an error if "maxlen" is exceeded, for example:
{% endhint %}

```lisp
;maxlen 1000000

(defun isok ()
  ;; Return true if selection is less than "maxlen".
  (let ((start (get '*selection* 'start))
        (end (get '*selection* 'end)))
    (<= (truncate (* *sound-srate* (- end start))) len)))
```

### **mergeclips**

Allows Nyquist plug-ins to override Audacity's default "clip merge" behaviour. By default, when effects (including generator effects) are applied across one or more clip boundaries and the returned audio is a different length from the original selection, Audacity will add "split lines" at the ends of the returned audio. In all other cases, the returned audio is "merged" into the current audio.

This option only applies when the plug-in is applied across clip boundaries (including across "split lines").

#### Clip Merge Options

* \-1 Automatic clip merge behaviour (default)

```
 ;mergeclips -1
```

* 0 Don't merge clips. Effects that are applied across clip boundaries will not be merged into the existing audio (there will be split lines at the ends of the returned audio) whether the returned audio is the same length as the original selection or not.

```
 ;mergeclips 0
```

* 1 Always merge clips. The returned audio will always be merged into the existing audio (no split lines added).

```
 ;mergeclips 1
```

See also "restoresplits".

### **preview**

Provides options for previewing the effect. Multiple preview options may be defined to achieve the desired behaviour.

Preview Options

* enabled (default). Preview is enabled.

```
 ;preview enabled
```

* true Same as "enabled".

```
 ;preview true
```

* disabled Preview is disabled. If Audacity is unable to provide a meaningful preview, then preview should be disabled. This may be required for effects that affect specific time regions within the selection.

```
 ;preview disabled
```

* false Same as "disabled".

```
 ;preview false
```

* linear Provides an optimisation for previewing multiple tracks by mixing the selected tracks before applying the Nyquist code. This optimisation is disabled by default.

```
 ;preview linear
```

* selection When previewing, the Nyquist code is applied to the entire selection (not just the length that will be previewed). Audacity's "Preview" then plays the first few seconds of the processed audio. This may be required for effects that vary over the duration of the selection.

```
 ;preview selection
```

### **restoresplits**

Allows Nyquist plug-ins to override Audacity's default "split restore" behaviour. By default, when effects (including generator effects) are applied across one or more clip boundaries, Audacity will restore "split lines" at the position of the original clip boundaries.

This option only applies when the plug-in is applied across clip boundaries (including across "split lines").

Restore Splits Options

* 1 Splits at clip boundaries are restored (default)

```
 ;restoresplits 1
```

* 0 Splits at clip boundaries are not restored (clips are joined).

```
 ;restoresplits 0
```

Note: Nyquist plug-ins are not currently able to distinguish between silence and "empty space" within the selection, so gaps between audio clips will be treated as if the empty space is an additional "silent" audio clip.

See also "mergeclips".

## Obsolete plugin headers

{% hint style="warning" %}
These headers are obsolete and no longer used by Audacity. They should not be used in new plug-ins.

They may still be found in some old plug-ins, but are now treated by Audacity as ordinary "comments" and simply disregarded.
{% endhint %}

### **action**

Description shown in progress window.

```
 ;action "text"
```

### **categories**

Specifies an LV2 category for the plug-in.

```
 ;categories "text"
```

### **info**

A single line of text to be displayed at the top border of the plug-in window. For multiple lines of text, a two-character sequence "\n" may be used within "text" to create a line break.

```
 ;info "text"
```

## Control headers

If the plug-in includes at least one properly formed "Control" header, Audacity will launch the plug-in with a GUI.

Each valid "Control" header adds a widget to the GUI. If there are no "Control" headers, Audacity will attempt to run the effect without a GUI.

There can be several "control" lines in the plug-in header. Add one for each widget to appear in the dialog box. The ;control headers should normally be the final headers as they define variables used by the Nyquist code.

```
 ;control parameters
```
