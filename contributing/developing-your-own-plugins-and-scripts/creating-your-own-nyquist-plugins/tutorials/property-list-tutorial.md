# Property List Tutorial

## Variables and Property Lists <a href="#variables_and_property_lists" id="variables_and_property_lists"></a>

In general terms, a _variable_ is a symbol which contains a _value_. The symbol can be any valid name, and its value may be changed (hence "variable"). In Nyquist, the _value_ may be of any data type (for example, a number, a character, or even a _sound_) and may be changed from one data type to another. Unlike some programming languages, variables do not need to be _declared_ before use - they can just be set, and then they exist.

In addition to the value of the variable, one or more "properties" may also be attached to the symbol. Each "property" has a name and a value. The properties are known collectively as the symbol's "property list".

Setting the value of a symbol "binds" the value to the symbol. A symbol that has no value (not even "nil") is said to be "unbound".

In addition to the _value_ of a symbol, we can also attach _properties_. This is a way of associating a list of items, each with their own value, to a single variable. Each item is called a _key_ or _indicator_, and we can give each _key_ a value. This list of items is called a _"property list"_ (or _plist_ for short).

To get the value of a property, we use the **GET** command.

When getting the value of a property, we do NOT want to evaluate either the variable (symbol) or the key symbol, so we must "quote" both symbols to prevent evaluation.

{% code title="LISP" %}
```lisp
(get 'varaiable-name 'property-name)
```
{% endcode %}

{% code title="SAL" %}
```clike
set v = get(quote(varaiable-name ), quote(property-name))
```
{% endcode %}

## Examples

{% hint style="info" %}
The following examples may be run in the [Nyquist Prompt](https://manual.audacityteam.org/man/nyquist\_prompt.html).

For a full list of global properties, see the [Plugin reference](../plugin-reference.md).
{% endhint %}

### \*TRACK\* NAME Property <a href="#track_name_property" id="track_name_property"></a>

When the type of a plugin is _process_ or _analyze_, Audacity sets the value of **\*TRACK\*** to the currently selected audio, and sets a lists of properties related to that track. The plugin processes one track at a time in sequence, and the \*TRACK\* variable is set each time for the track that is being processed.

The _value_ of \*TRACK\* provides direct access to the selected audio, and its _property list_ provides access to other properties of the track. The **NAME** property provides the name of the Audacity track that is currently being processed. To access the value of the NAME property, we use the [GET](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-130.htm) command.

```lisp
;codetype lisp
(get '*TRACK* 'NAME)

;codetype sal
return get(quote(*TRACK*), quote(NAME))
```

The GET command returns the value of the property (the name of the track), which may be assigned to another variable and used elsewhere in the code. For example, to print a pretty message:

```lisp
;codetype lisp
(setf track-name (get '*TRACK* 'NAME))
(format nil "The name of the current track is ~s." track-name)
```

{% hint style="info" %}
Although we can change the value of the NAME property (using [PUTPROP](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-209.htm)), doing so will NOT change the name of the Audacity track. The value of the NAME property is only a copy of the track name, created by Audacity when the plugin runs. If required, the name of the track could be changed using the scripting command [SetTrackStatus](https://manual.audacityteam.org/man/scripting\_reference.html#Extra:\_Scriptables\_I).\
More generally, modifying a \*_TRACK\*_ property does not modify the track.

See also [Property List Functions](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-man/xlisp-man-014.htm) in the XLisp manual.
{% endhint %}

### \*TRACK\* CLIPS Property <a href="#track_clips_property" id="track_clips_property"></a>

This property contains a list of start and end times of each audio clip in the track. This property is more likely to find uses in [Nyquist Macros ](macro-tutorial.md)than in standard Nyquist plugins. Note that this property refers to the entire selected track, and not only the selected portion of the track.

#### **\*TRACK\* CLIPS data for mono tracks**

For mono tracks, the CLIPS property is a list, containing a two element list for each clip in the selected track. A mono track with two audio clips will look like `((s1 e1)(s2 e2))` where s1 and s2 to are the start times of the two clips, and e1 and e2 are the end times.

This code snippet will print the start and end times of the first audio clip in a mono track:

```lisp
(setf track-clips (get '*track* 'clips))
(print (first track-clips))
```

It is important to remember that Nyquist sees the start of the current selection as "time=zero". Thus if we wish to actual track times in Nyquist, we must offset the times by the start time of the current selection. We can create a point label at time=0 with `(list (list 0 0 ""))`, but this is relative to the start of the current selection. If we want to create a label at time=zero as shown in the [Timeline](https://manual.audacityteam.org/man/timeline.html) regardless of where the selection starts, then we must offset the label times by the start time of the selection.

Fortunately it is easy to find the absolute start time of the selection by using "START" property of the \*SELECTION\* variable: `(get '*selection* 'start)`. We can create a label at an absolute time (relative to Audacity's Timeline) like this:

```lisp
(setf label-time 10) ;the absolute time for the label is at the 10 second mark
(setf offset (get '*selection* 'start))
(list (list (- label-time offset)(- label-time offset) ""))
```

We can now put this all together and create a label for each audio clip in the selected track:

```lisp
;type analyze
(setf track-clips (get '*track* 'clips))
(setf start (get '*selection* 'start))

(let (labels) ;initialise "labels" variable with NIL value.
  (dolist (c track-clips labels)
    (setf label
      (list (- (first c) start)
            (- (second c) start)
            ""))
    (push label labels)))
```

#### **\*TRACK\* CLIPS data for stereo tracks**

Just as stereo sounds are represented as an array of sounds, so the track "clip" data for stereo tracks is an array of lists (one list per channel). A stereo track with two audio clips in each channel will look like: `#(((s1 e1)(s2 e2))((s3 e3)(s4 e3)))` where s1 to s4 to are the start times, and e1 to e4 are the end times.

This code snippet will print the start and end times of the first audio clip in the left channel of a stereo track:

```lisp
(setf track-clips (get '*track* 'clips))
(setf left-channel (aref track-clips 0)) ; the list of clips in the left channel
(print (first left-channel))
```

In a similar manner to the mono example, we can create a label for each clip in a stereo track:

```lisp
;type analyze
(setf track-clips (get '*track* 'clips))
(setf start (get '*selection* 'start))
(setf labels ())  ;an empty list

(defun add-labels (data text)
  (dolist (c data)
    (setf label
      (list (- (first c) start)
            (- (second c) start)
            text))
    (push label labels)))

(multichan-expand #'add-labels track-clips #("Left" "Right"))
labels ;Reurn labels
```
