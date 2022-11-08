# Widgets Reference

A Widget is an element of a graphical user interface (GUI), such as a button or slider, which facilitates user interaction. Audacity supplies a number of widget types for Nyquist plugins. Fortunately, Nyquist plugin developers are largely spared from the complexities of WxWidgets, and can simply select which widgets they need by adding the appropriate [header ](headers-reference.md)to the top of the plug-in script. The layout of a Nyquist plug-in GUI is a simple list of widgets, one above the other.

### Slider Widget <a href="#slider_widget" id="slider_widget"></a>

Slider widgets are supported in all Audacity Nyquist plug-in versions.

&#x20;`;control ``<i>`{=html}`variable-name``</i>`{=html} `"``<i>`{=html}`text-left``</i>`{=html}`" ``<i>`{=html}`variable-type``</i>`{=html} `"``<i>`{=html}`text-right``</i>`{=html}`" ``<i>`{=html}`initial-value``</i>`{=html} ` ``<i> `{=html}`minimum``</i>`{=html} ` ``<i> `{=html}`maximum``</i>`{=html}

* _variable-name_ : \[symbol] A Lisp symbol.
* _text-left_ : \[string] Text that will appear to the left of the slider.
* _variable-type_ : \[keyword] A "number" type, either int, float or real\*:
  * int : integer \[FIXNUM, an XLISP whole number]
  * float (or real\*) : floating point \[FLONUM, an XLISP number supporting decimal places]
* _text-right_ : \[string] Text that will appear to the right of the slider.
* _initial-value_ : \[int / float] Variable value \[and slider position] at the first start of the plug-in.
* _minimum_ : \[int / float] Numeric variable value when the slider is moved to the left border.
* _maximum_ : \[int / float] Numeric variable value when the slider is moved to the right border.

The variable value \[the slider position] can be referenced by the variable name in the plug-in code.

A text input box to the left of the slider allows the user to type in a value via the keyboard. As of Audacity 2.1.1, input values are validated to only allow input between minimum and maximum values.

* The "real" keyword is deprecated. New plug-ins should use "float" as the variable type for floating point input.

### Numeric Text Widget <a href="#numeric_text_widget" id="numeric_text_widget"></a>

The numeric text widget was introduced in Audacity 2.1.2.

&#x20;`;control ``<i>`{=html}`variable-name``</i>`{=html} `"``<i>`{=html}`text-left``</i>`{=html}`" variable-type "``<i>`{=html}`text-right``</i>`{=html}`" initial-value minimum maximum`

* _variable-name_ : \[symbol] A Lisp symbol.
* _text-left_ : \[string] Text that will appear to the left of the text box.
* _variable-type_ : \[keyword] A "number" type, either "int-text" or "float-text":
  * int-text : Integer \[FIXNUM, an XLISP whole number]
  * float-text : Floating point \[FLONUM, an XLISP number supporting decimal places]
* _text-right_ : \[string] Text that will appear to the right of the text box.
* _initial-value_ : \[int / float] Variable value at the first start of the plug-in.
* _minimum_ : \[int / float / NIL] Numeric minimum variable value that will pass validation.
* _maximum_ : \[int / float / NIL] Numeric maximum variable value that will pass validation.

Minimum and maximum may be numeric values or "NIL". The minimum / maximum is _not defined_ when set as "NIL" and is limited only by the numeric limit for the number type. The valid range for numbers depends on the computer platform. Typically the limits for integers are -2147483648 to 2147483647. The limits for floating point numbers are _very_ large.

**Examples of undefined minimum / maximum:**

&#x20;`;control ``<i>`{=html}`pos``</i>`{=html} `"``<i>`{=html}`Positive Integer``</i>`{=html}`" int-text "``<i>`{=html}`text-right``</i>`{=html}`" initial-value 0 nil`\
`;control ``<i>`{=html}`neg``</i>`{=html} `"``<i>`{=html}`Negative Integer``</i>`{=html}`" int-text "``<i>`{=html}`text-right``</i>`{=html}`" initial-value nil 0`\
`;control ``<i>`{=html}`num``</i>`{=html} `"``<i>`{=html}`Any number``</i>`{=html}`" float-text "``<i>`{=html}`text-right``</i>`{=html}`" initial-value nil nil`

### String Widget (text input) <a href="#string_widget_text_input" id="string_widget_text_input"></a>

The text input widget ("string widget") is supported in plug-ins version 2 or above.

&#x20;`;control ``<i>`{=html}`variable-name``</i>`{=html} `"``<i>`{=html}`text-left``</i>`{=html}`" string "``<i>`{=html}`text-right``</i>`{=html}`" "``<i>`{=html}`default-string``</i>`{=html}`"`

* _variable-name_ : \[symbol] A Lisp symbol.
* _text-left_ : \[string] Text that will appear to the left of the text input field.
* _variable-type_ : \[keyword] Declares a "string" input type widget.
* _text-right_ : \[string] Text that will appear to the right of the text input field.
* _default-string_ : \[string] The string will appear inside the text field.

The text typed in by the user in the text field of the plug-in window can be referred as a string variable from within the plug-in code. All string characters are valid, though care must be taken with escape characters if the string is to be evaluated.

Examples how to use the text input widget can be found in the source code of the Apropos Plug-in.

### Multiple-Choice Widget <a href="#multiple_choice_widget" id="multiple_choice_widget"></a>

The multiple choice input widget is supported in plug-ins version 3 or above.

&#x20;`;control ``<i>`{=html}`variable-name``</i>`{=html} `"``<i>`{=html}`text-left``</i>`{=html}`" choice "``<i>`{=html}`string-1,string-2,...``</i>`{=html}`" ``<i>`{=html}`initial-value``</i>`{=html}

* _variable-name_ : \[symbol] A Lisp symbol.
* _text-left_ : \[string] Text that will appear to the left of the multiple-choice list.
* _variable-type_ : \[keyword] Declares a "Multiple-Choice" type widget.
* _string-1,..._ : \[string] For every string an entry in a list to choose from will be produced.
* _initial-value_ : the number of the list entry that will be displayed as the default choice at the first start of the plug-in.

The list entries _string-1, string-2_, etc. are comma separated and internally represented by integer numbers. The first, top-most list entry _string-1_ will be represented by the number 0. The list entry chosen by the user can be determined by the integer value of the variable from within the plug-in code.

An example of the 'choice' widget can be found [sample-data-export.ny](https://github.com/audacity/audacity/blob/master/plug-ins/sample-data-export.ny)

### Time Widget <a href="#time_widget" id="time_widget"></a>

Introduced in Audacity 2.3.0.

&#x20;`;control variable-name`` `_`"text-left"`_` ``time`` `_`"text-right"`_` ```` `_`initial-value`_` ```` `_`minimum`_` ```` `_`maximum`_

* _variable-name_ : \[symbol] A Lisp symbol.
* _text-left_ : \[string] Text that will appear to the left of the time control.
* time : \[keyword] A "time" widget.
* _text-right_ : \[string] Text that will appear to the right of the time control.
* _initial-value_ : \[int / float] Default value. Number (float or integer) in seconds.
* _minimum_ : \[number] Minimum numeric value (float or integer) in seconds.
* _maximum_ : \[number] Maximum numeric value (float or integer) in seconds.

Minimum and maximum may be numeric values or "NIL". The minimum / maximum is not defined when set as "NIL" and is limited to a range of 0 and the maximum supported by the current widget view.

This widget is to input durations. The value set is converted to seconds and assigned as the value of the widget variable.

Example taken from the Pluck effect:

&#x20;`;control dur "Duration (60s max)" time "" 1 0.0 60`

In this example:

* _variable name_ is "dur",
* _text-left_ is "Duration (60s max)",
* _text-right_ is "" (empty string).
* _initial-value_ is 1 second.
* _minimum_ is 0.0 seconds.
* _maximum_ is 60 seconds.

### File-Button Widget <a href="#file_button_widget" id="file_button_widget"></a>

The File Button Widget requires Audacity 2.3.0 or later.

&#x20;`;control ``<i>`{=html}`variable-name``</i>`{=html} `"``<i>`{=html}`text-left``</i>`{=html}`" file "``<i>`{=html}`button-text``</i>`{=html}`" "``<i>`{=html}`default-file-path``</i>`{=html}`" "``<i>`{=html}`wildcard-filters``</i>`{=html}`" "``<i>`{=html}`flags``</i>`{=html}`"`

* _variable-name_ : \[symbol] A Lisp symbol.
* _text-left_ : \[string] Text that will appear to the left of the file button widget.
* _variable-type_ : \[keyword] Declares a "File-button" type widget.
* _button text_ : \[string] Text that appears on the button.
* _default-file-path_ : \[string] The default file path.
* _wildcard-filters_ : \[string] File types to show in file browser (based on file extensions).
* _flags_ : \[string] Option flags, based on [wxWidgets File Dialog _Styles_](https://docs.wxwidgets.org/3.1/classwx\_file\_dialog.html)).

```
{{advice|For more information about the File-Button Widget, see the [[Nyquist_File-Button_Tutorial|Nyquist File-Button Tutorial]].}}
```

### Text Widget <a href="#text_widget" id="text_widget"></a>

The text widget was introduced in Audacity 2.3.0. Although not actually a "control", it shares similar syntax to all other Nyquist plug-in widgets:

&#x20;`;control text`` `_`"string"`_

This widget adds a line of text (the [_"string"_](https://en.wikipedia.org/wiki/String\_\(computer\_science\))) to the plug-in [GUI](https://en.wikipedia.org/wiki/Graphical\_user\_interface). `{{advice|While it may seem convenient to add text to an interface to explain how the plug-in should be used, this widget should be used sparingly. Text descriptions should not be used as a substitute for good design. Plug-in developers should also be aware that it is not currently possible to provide localization (translations) of text in any widgets in third party plug-ins.}}`{=mediawiki}
