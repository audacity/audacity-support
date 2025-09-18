# Macros Palette

You can apply any of the existing macros using the **Macros Palette**. To open it you can either:

* Use the menu **Tools > Apply Macros >** [**Palette**](https://manual.audacityteam.org/man/tools\_menu\_apply\_macro.html), or
* Use the **Shrink** button in the [Manage Macros](https://manual.audacityteam.org/man/manage\_macros.html) dialog

![Macros Palette showing several user-added Macros as well as the as-shipped MP3 Conversion and Fade Ends Macros](../../.gitbook/assets/macrospalette.png)

{% hint style="info" %}
Once invoked, the Macros Palette window will remain on-screen, actively available, at all times unless and until you dismiss it or close Audacity.
{% endhint %}

### Select Macro

In the "Macro" list, **left-click** on a Macro (or use **Up** or **Down** keyboard arrow) to select the Macro you want to apply.

### Apply Macro to

#### Project

Use the **Project** button to apply the selected Macro to the current project.

The typical purpose of this option is **effect automation** - apply a sequence of effects to the project, using effect parameters and an order of applying the effects that you have found to work well for the type of audio you are processing. This saves time and provides consistency in your workflow.

The effects in the Macro are applied to the [selected](https://manual.audacityteam.org/man/audacity\_selection.html) region of [waveform](https://manual.audacityteam.org/man/audacity\_waveform.html) in the selected [audio tracks](https://manual.audacityteam.org/man/audio\_tracks.html). Usually the selected Macro would _**not**_ include an [export](https://manual.audacityteam.org/man/exporting\_audio.html) command so as to use the greater flexibility of the [Export Audio Dialog](https://manual.audacityteam.org/man/file\_export\_dialog.html).

If an export command is included in the Macro, the entire project audio is exported irrespective of track or region selection. Therefore if the project contains multiple audio tracks, they will be [mixed](https://manual.audacityteam.org/man/mixing.html) together, unless any of the tracks are muted on the [Track Control Panel](https://manual.audacityteam.org/man/audio\_tracks.html#panel).

* If the project has been Saved, then the exported files will be saved in a folder named **macro-output**. The macro-output folder will be in the location specified in [Directories Preferences](https://manual.audacityteam.org/man/directories\_preferences.html).
* If the audio in the project came from an imported file as its initial step _(that is, it is a named project)_, the **macro-output** folder will also be in the location specified in [Directories Preferences](https://manual.audacityteam.org/man/directories\_preferences.html).
* If the project has not been saved and is un-named, the normal [Export Audio](https://manual.audacityteam.org/man/file\_export\_dialog.html) dialog will appear enabling you to choose the name and location of the exported file.

{% hint style="info" %}
Macros will work on pre-existing selections you make in your project prior to running the Macro. But the selection can be over-ridden by your Macro itself as there are macro commands available to effect selections in the audio. In particular **All(Select All)** will select the entire project and **Select** which is parameterizable (see the provided **Fade Ends** Macro for an example where the first and last one seconds of the audio are selected for the fades).
{% endhint %}

#### Files...

The typical purpose of this option is **batch processing** - apply the Macro to multiple audio files so as to apply one or more effects to them, and/or convert them to another file format. You can convert from any file format [supported by Audacity](https://manual.audacityteam.org/man/faq\_opening\_and\_saving\_files.html#foreign) to WAV, MP3, OGG or FLAC.

Use the **Files...** button to apply the selected Macro to selected external audio files that are in a single directory.

If you already have audio in the current project window, you must save and close that project using **File >** [**Close**](https://manual.audacityteam.org/man/file\_menu.html#close) before applying a Macro to files.

{% hint style="info" %}
You cannot apply a Macro to multiple Audacity AUP3 project files, instead you need to use Python scripting.
{% endhint %}

{% hint style="info" %}
The selected Macro _**must**_ include an **Export** step, otherwise the processed audio will not be retained.
{% endhint %}

You cannot process [multi-channel audio files](https://manual.audacityteam.org/man/file\_export\_dialog.html#compare) (for example, 5.1 surround sound files) using Macros, even if [Import / Export Preferences](https://manual.audacityteam.org/man/import\_export\_preferences.html#export) has been set to "Use custom mix". Any multi-channel files you import will be mixed down on export.

* A standard File Open dialog box will appear. Choose a directory then you can select one or any number of supported audio files in that directory, including older AUP project files _(but **not** AUP3 project files)_.
  * You cannot select files outside that directory, and files in folders inside that directory will not be processed.
  * It is convenient therefore to first put all the audio files you want to process into one folder before applying the Macro.
* After selecting the audio files you want to process, choose Open.
* Each file will be imported into Audacity and processed, exported to the format you chose in the Macro, then the processed audio will be removed so as to clear the temporary disk space that had been used.
* The exported files will be saved in a folder named "**macro-output**" in the folder specified in the **Macro output** field in [Directories Preferences](https://manual.audacityteam.org/man/directories\_preferences.html). The original files are _**not**_ altered.
* If you leave the entry for **Macro output** blank in Directories Preferences then Audacity will default to creating a folder called "**macro-output**" in:
  * **Windows:** C:\Users\\\<your username>\Documents\Audacity
  * **Mac:** /Users/\<your username>/Documents
  * **Linux:** /home/\<your username>/Documents

{% hint style="info" %}
When a Macro is applied to files, the only option is to import and process the entire file. Thus the entire file will be exported unless an action or effect in the Macro (such as [Cut](https://manual.audacityteam.org/man/edit\_toolbar.html#cut) or [Truncate Silence](https://manual.audacityteam.org/man/truncate\_silence.html)) removes some audio.

* If modifying the audio before exporting, the [Select Time](https://manual.audacityteam.org/man/extra\_menu\_scriptables\_i.html#select\_time) function may be useful to select audio to remove or modify.
* Some optional [Nyquist plugins](https://wiki.audacityteam.org/wiki/Nyquist\_Plug-ins) have parameters to [trim or extend audio by a specific length](https://wiki.audacityteam.org/wiki/Download\_Nyquist\_Plug-ins#time) and Nyquist can do calculations too, so it may be helpful to use Nyquist plugins from within a macro.
{% endhint %}

{% hint style="info" %}
It is recommended not to process more than 500 files at a time.
{% endhint %}

### The buttons

#### Expand

Use the Expand to return to the full-size, full-function [Manage Macros](manage-macros.md) dialog.

The apply Macro buttons are also available on the [Manage Macros](manage-macros.md) dialog - so all Macro operations can be made from that full dialog.

#### Cancel to exit the dialog

To dismiss the dialog simply click on the Cancel button

Otherwise the dialog will remain open on the screen, but allowing you to perform other Audacity functions.
