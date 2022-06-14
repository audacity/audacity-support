---
description: >-
  Manage Macros allows you to edit, remove or rename existing Macros or add a
  new Macro. It also allows you to apply Macros to you project or a set of
  files.
---

# Manage Macros

Any [built-in](https://manual.audacityteam.org/man/effect\_menu.html#built-in), [LADSPA](https://manual.audacityteam.org/man/effect\_menu\_ladspa.html), [LV2](https://manual.audacityteam.org/man/effect\_menu\_lv2.html), [Nyquist](https://manual.audacityteam.org/man/effect\_menu\_nyquist.html), [VST](https://manual.audacityteam.org/man/effect\_menu\_vst.html) or [Audio Unit](https://manual.audacityteam.org/man/effect\_menu\_audiounit.html) (Mac) effect shown in the [Effect Menu](https://manual.audacityteam.org/man/effect\_menu.html) can be added to a Macro. You can also add plug-ins in any format that are shown in the [Generate](https://manual.audacityteam.org/man/generate\_menu.html) or [Analyze](https://manual.audacityteam.org/man/analyze\_menu.html) Menus (including [Vamp](https://manual.audacityteam.org/man/analyze\_menu.html#vamp) analysis effects), the built-in [Find Clipping](https://manual.audacityteam.org/man/find\_clipping.html) analyzer and a number of export commands.

Macros may be applied to either the entirety of the current project or to a selection of files using the Tools > [Macros...](../using-macros-to-automate-frequent-tasks.md) command.

It is possible to use [Noise Reduction](https://manual.audacityteam.org/man/noise\_reduction.html) in Macros but see [Noise Reduction Tips](https://manual.audacityteam.org/man/noise\_reduction.html#macros) for how the Noise Profile is captured.

{% hint style="info" %}
The full list of all Macro commands, with descriptions, is available at Scripting Reference.
{% endhint %}

### Accessing Macros

You can access the **Manage Macros** dialog by using either:

* The menu [**Tools**](https://manual.audacityteam.org/man/tools\_menu.html) **> Macros...**, or
* The Expand button in the [Macros Palette](macros-palette.md) dialog.

![Manage Macros dialog](<../../.gitbook/assets/Manage Macros.png>)

### Select Macro

_**Select Macro**_ contains a list of already defined Macros. You can define the name of a new Macro and select which Macro is active.

The left hand box in the dialog (labeled **Select Macro**) contains a list of already defined Macros. Until you add a new Macro, it only has built-in **MP3 Conversion** and **Fade Ends** Macros.

Use left-click _(or use the Up or Down keyboard arrows)_ to select the Macro you want to work on

* **New**: Adds a new Macro to the list.
* **Remove**: Remove the selected Macro from the list - _grayed out when the Macros that ship as part of Audacity are selected_.
* **Rename...**: Rename the selected Macro - _grayed out when the Macros that ship as part of Audacity are selected_.
* **Restore**: Resets any Audacity provided Macro to its default settings - _grayed out when user-provided Macros are selected_.
* **Import...**: Enables you to import a Macro from a TXT file.
* **Export**: Exports the selected Macro to a TXT file.

### Edit Steps in the Macro

_**Edit Steps**_ lists the sequence of commands in order of first to last (End) for the Macro selected in the [**Select Macro**](manage-macros.md#select-macro) box to left.

* The Macro can include a number of common Audacity functions and effects to be executed in any order you specify.
* To create an audio file as part of the Macro process you must include an "Export" command (such as [**Export as WAV**](https://manual.audacityteam.org/man/manage\_macros.html#export)).
  * The Export command will use the settings you used the last time you used the same command from the **File > Export > Export...** menu command, or default settings if you have never used that command from the menu.
* In many cases the parameters for each command in the Macro can be specified within the **Manage Macros** dialog.

You can:

* Add or remove commands for the selected Macro
* Change the order in which the commands execute in the Macro
* Edit the parameters for some effects in the Macro

#### Command

* **Insert**: Insert a new command into the list
* **Edit...**: Edit the parameters of the currently selected command
* **Delete**: Delete the currently selected command in the list
* **Move Up**: Move the currently selected command up in the list
* **Move Down**: Move the currently selected command down in the list
* **Save**: This button is only active when you have made edits to a Macro. It enables you to save those changes.

{% hint style="info" %}
You can also edit an existing command by double-clicking it, or using the **Up** or **Down** keyboard arrow to select it and then pressing Space. The parameter settings dialog for that command will be displayed.
{% endhint %}

#### Inserting a new command

A few commands are intentionally omitted from the Macro Manager (such as **Close:**) because they are unsuitable for use in Macros.

To insert a new command in a Macro, left-click or use the **Up** or **Down** keyboard arrow to select an existing command and then press **Insert**. The new command will be placed above this selected command.

* The **Select Command** dialog appears, listing all the available commands. Double-click a command from the list to insert it in the "Command" box, as shown in the image below after inserting "Normalize".

Alternatively, use the **Up** or **Down** keyboard arrow to select the command, then press Space.

![Use the Select Command dialog to choose a command to be inserted into the macro](<../../.gitbook/assets/Select Command - Macros.png>)

The full list of all commands, with descriptions, is available at [**Scripting Reference**](https://manual.audacityteam.org/man/scripting\_reference.html).

* Some _scriptable_ commands are particularly useful for Macros. See these pages for details:
  * [Extra Menu: Scriptables I](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_i.html) - most commonly useful scriptables.
  * [Extra Menu: Scriptables II](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_ii.html) - less commonly useful scriptables, but also including **Select** and **Set Track**, which combine functionality of several scriptables.
* If the command has editable parameters, the **Edit Parameters** button will be active. Clicking this button will bring up the dialog box for the effect where you can set the parameters as if you were applying the standalone effect.
* If you have previously created [user presets](https://manual.audacityteam.org/man/manage\_presets.html) for an effect you can use the Use Preset to select one for use with that effect in the Macro.
* Choose OK in the effect dialog to accept the parameters you entered, or Cancel to revert to the default parameters.
* Choose OK in the **Select Command** dialog to add the command to the Macro.

#### Macro Command Parameters

{% hint style="info" %}
It is strongly recommended that you set parameters for the commands that you use in a Macro. Otherwise Audacity will use the last-used parameter setting(s) when you ran the effect(s) manually.
{% endhint %}

Also note carefully that settings used in Macros will not affect or change the last-used parameter settings for any effect when next run manually.

![Command parameters example: Set Track Status](<../../.gitbook/assets/Set Track Status command parameters.png>)

This example shows the **Set Track Status** command.

The tick boxes on the left determines whether a feature should be used. When not selected, that feature does nothing.

The second tick box determines whether the feature is set to "on" or "off".

This shows:

1. The track name will not be changed
2. Track selectedness will be set to **Not Selected**
3. Track focus will be set to **Focused**

Commands that call Effects, Generators, Analyzers or Tools, use the same familiar graphical interface (GUI) as appears when they are used from the normal top level menus.

Many of the other commands provide a simple GUI comprised of checkboxes and text entry boxes. Typical examples can be seen in the [Scriptables I](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_i.html) and [Scriptables II](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_ii.html) menus.

#### Selections in Macros applied to Project

Macros will work on pre-existing selections you make in your project prior to running the Macro. But the selection can be over-ridden by your Macro itself as there are Macro commands available to effect selections in the audio.

* In particular **All(Select All)** will select the entire project
* **Select** which is parameterizable _(see the provided **Fade Ends** Macro for an example where the first and last one seconds of the audio are selected for the fades)_.

{% hint style="info" %}
If you want to select all tracks, maintaining your current time selection, use "**Select: First=0 Last=100**". It will not waste time twiddling its thumbs on the tracks that are not there.
{% endhint %}

#### Selections in Macros applied to Files

When applying a Macro to files there is no pre-existing selection so you will need to create a selection in the Macro if your Macro requires audio to be selected to act on (and most Macros do).

#### Commands for Exporting audio files

* There are four basic export commands available: **Export as WAV**, **Export as MP3**, **Export as FLAC** and **Export as Ogg**.
  * See [Macros Palette](macros-palette.md) for details of naming and location of exported files.

{% hint style="info" %}
Parameters for export formats cannot be set in Manage Macros. To configure export parameters for the Macro, click **File > Export > Export Audio...** to access the **Export Audio** Dialog, click **Options**, set the parameters, press **OK** then **Cancel** the export. An audio track must be on screen in order to open the **Export Audio** Dialog.
{% endhint %}

#### Special Export command

There is also a special Export command [**Export2**](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_ii.html#export2) which enables you to export to a specific target file and format. When using **Export2** you have to give the _**full**_ file name (including path and filename extension).

Note carefully that the filename is not dynamically changeable when running the Macro, once set in the Export2 parameters, so you may wish to create several Macros the Export2 each targeting different file locations, names and filetype.

Example:

**"C:\Users\\\<username>\Desktop\my file.flac"** _(this works)_

Not: C:\Users\\\<username>\Desktop\my file.flac _(the file name is not quoted)_

Not: "my file.flac" _(no path given)_

Not: "C:\Users\\\<username>\Desktop\myfile" _(no file extension)_

The quote marks around the file pathing are supplied by Audacity once the Export2 command has been edited in setting up or editing the Macro

When entering the pathing data in the edit parameters dialog for the command you do not put the quote marks for example: **C:\Users\\\<username>\Desktop\my file.flac**

#### Deprecated Export commands

The following two commands are now deprecated and may well be removed in future versions of Audacity. They were part of "**CleanSpeech**" _(which has long been removed from Audacity)_.

* The **Export as MP3 56k before** and **Export as MP3 56k after** commands can be used respectively to export "before" and "after" [_**MP3**_](https://manual.audacityteam.org/man/glossary.html#mp3) files at 56 kbps [_**bit rate**_](https://manual.audacityteam.org/man/glossary.html#bit\_rate) at any point in the Macro processing. This allows you to compare the result of one or more effects, or provide files for different purposes with and without a particular effect.

{% hint style="info" %}
The name of the MP3 exported by the "Export as MP3 56k before" command is prefixed by "MasterBefore\_" followed by the date and time. The name of the MP3 exported by the "Export as MP3 56k after" command is prefixed by "MasterAfter\_" followed by the date and time.
{% endhint %}

#### Comments in Macros

Comments be added to Macros to enable you to document what is happening in the Macro.

Add a comment to your macro using the **Comment** command and edit its parameters to type the text of your comment.

![Add a comment to your macros using the Comment command](../../.gitbook/assets/macros\_comments.png)

### The buttons

#### Shrink - reduced Macros Palette dialog

Use the **Shrink** button to show a reduced Macros Palette dialog with a simple list of the existing Macros, enabling you to apply the Macros but not edit them.

This smaller version is useful for presets. It stays open after applying a macro, so it is a palette of custom functions, and you can pick another and apply that.

Using the Expand button on this reduced dialog will return you to the full [Manage Macros](manage-macros.md) dialog.

For more details see the [Macros Palette](macros-palette.md) page.

#### Apply Macro to

**Apply Macro to** enables you to make a Macro operate on either your current open Project or a set of selected external Files.

{% hint style="info" %}
It is recommended not to process more than 500 files at a time
{% endhint %}

See [**Macros Palette**](macros-palette.md) for details of how these two buttons operate.

#### Close to exit the dialog

To dismiss the dialog simply click on the Close button.

If there any unsaved changes you will be asked if you want to save them or not.

### [Macros Examples](macros-examples.md)

See the [Macros Examples](macros-examples.md) page for examples of using Macros.

### Error: Batch command not recognized

This error may sometimes occur for one or more commands in a Macro when updating from a previous Audacity version. The error may also occur if users sharing Macro have different Audacity versions or different versions of the plug-ins used in the Macro. The error will occur if:

* any command in the Macro uses a different text format than that recognized by the version of Audacity in use
* any plug-ins listed in the Macro are missing, in an incorrect location or are incompatible with the version of Audacity in use.

To resolve these errors, ensure you have compatible versions of all required plug-ins and that the plug-ins are [installed correctly](https://manual.audacityteam.org/man/faq\_installation\_and\_plug\_ins.html#plug-ins). If necessary, use the **Manage Macros** dialog to delete the command that fails then insert a replacement command for the same effect from the **Select Command** dialog.
