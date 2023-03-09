# Strings & translatable code

## Format strings

Format strings are often used in Audacity to insert variables into pre-defined strings. So for example:

```cpp
   wxString::Format( _("There were %d buffer underruns, last near %f seconds."), underruns, last_underrun )
      //Renders as: There were 2 buffer underruns, last near 14.234 seconds.
```

* `wxString::Format` is wxWidget's implementation of a [C++ printf](https://www.cplusplus.com/reference/cstdio/printf/) return.
* `_()` is for translatable strings (see below)
* `%d` and %f are placeholders which get replaced by the parameters (here: `underruns`, `last_underrun`)

If you need to switch up the order of the placeholder relative to the order the parameters are listed in, insert a `%1$` between the `%` and letter of the placeholder:

```cpp
   wxString::Format( _("The buffer underrun near %%2$f seconds was the last of %%1$d.") underruns, last_underrun )
```

## Translatable strings

Audacity uses gettext for translations. Because of this, the following rules apply:

* Translatable strings look like this: `_("Translate me")`
* Untranslatable strings look like this: `wxT("do not translate")`
* Strings which should be extracted for translation, but not translated at runtime look like this: `XO("extract only")`
* Empty strings must be untranslatable: `wxT("")`
* Mark all strings as either translatable or untranslatable, even if it's just `_("%s: %s")` - some languages have different punctuation conventions.
* All whitespace within strings gets rendered, both in Audacity and translation software.
* Long strings may stay as long strings, or be broken up with `\`. So for example:

```cpp
      _("this is a very long long string \
that continues here, without any indent, because whitespace gets rendered.")
```

* Different languages prefer different word orders, so keep strings in one piece using format substitutions. For example:

```cpp
   wxString::Format( _("Open file %s now?"), fileName );
   /*DONT USE:*/ _("Open file") + filename + _("now?")
```

* Use the wxPLURAL macro for for [grammatical number](https://en.wikipedia.org/wiki/Grammatical\_number#Types\_of\_number) (ie singular/plural - some languages do it differently):

```cpp
   wxString::Format( wxPLURAL("%d hour", "%d hours", iHours), iHours ) 
      //Note: you don't need the _() or wxT() prefixes here, it's built into the macro
   /*DONT USE:*/ iHours == 1 ? _("%d hour") : _("%d hours")
```

## HTML & Wiki Syntax.

Some parts of the code use HTML.

* Don't mark HTML tags as translatable.
* Avoid using HTML inside of translatable strings.

Some parts use Wiki syntax for links (ie `[[page name|link title]]`).

* Only the link title gets translated.

## Menu items

Menu items may have access keys, denoted with an & in the string. For example: `_("&Loop Play")` renders as Loop Play in the menu when the user is navigating with access keys.

* It's up to translators which letter becomes the access key, as long as it doesn't conflict with other access keys in the same menu.
* The Effects menu, the Generate menu and the Analyze menu do not use access keys.
