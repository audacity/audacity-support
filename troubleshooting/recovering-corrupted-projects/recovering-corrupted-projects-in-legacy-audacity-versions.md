# Recovering corrupted projects in legacy Audacity versions

{% hint style="info" %}
This article only applies to Audacity versions up to 2.4.2.
{% endhint %}

If Audacity crashes or the computer loses power, Audacity should normally [recover the projects automatically](https://manual.audacityteam.org/man/recovery.html) when you restart. The steps on this page describe how to recover audio from the project's \_data folder or Audacity's temporary folder if:

* Automatic Crash Recovery does not work correctly
* You saved a project without apparent crash, but Audacity was shut down before the AUP project file was written or you do not have a usable AUP file.

The steps on this page will only recover unedited recordings (and stereo recordings may be recovered with sections of left and right channel in the wrong channel).

{% hint style="danger" %}
**Do not close or save the project** if the automatic crash recovery fails to properly recover your project.

* If you need to shut down the computer before manually fixing an incorrect Automatic Crash Recovery, force quit Audacity in the system task manager. This will preserve the temporary data for next launch of Audacity.
* If you had successfully saved the project just before the crash, it may be simpler to discard the unsaved project in the Automatic Crash Recovery dialog then open the saved AUP file.
{% endhint %}

## Location of the project \_data folder

If you saved an AUP project file, the \_data folder you need to recover from will be in the directory to which you originally saved the AUP file.

## Location of Temporary Folder

If you never saved an AUP project file, you need to recover from Audacity's temporary folder. You can see the exact location in Directories Preferences, otherwise you can see the location in the "TempDir" line in the audacity.cfg settings file. By default the Audacity temporary folder should be as follows.

* Windows: C:\Users\\\<your username>\AppData\Local\Audacity\SessionData
* Mac: /Users/\<your username>/Library/Application Support/audacity/SessionData
* GNU/Linux: /var/tmp/audacity-\<your username>

If you are upgrading from previous Audacity, that version's temporary directory may be changed to the relevant safe location above if the previous location was known to be prone to deletion by cleanup applications or system restart.

{% hint style="info" %}
**Tip:** In order to see the default location of the Audacity temp folder on Windows or Mac you need to show hidden files and folders or type the folder location into your file manager's address bar.
{% endhint %}

{% tabs %}
{% tab title="Windows" %}
In the tree on the left of Explorer, double-click "Users" then double-click your username, then on the right, open the AppData or Application Data folder, then the "Local" or "Locale Settings" folder and finally the "Temp" folder.

If you cannot see those folders, you can type %localappdata% into the Explorer address bar then look for the "Temp" folder. Otherwise, see how to [show hidden files and folders](http://www.bleepingcomputer.com/tutorials/how-to-see-hidden-files-in-windows/).
{% endtab %}

{% tab title="macOS" %}
* Open Finder, use the "Go" menu, choose "Go to Folder" and type the required path.

If that does not work, try to make the Finder show its hidden files and folders by entering the following commands in the terminal:

```bash
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
```


{% endtab %}
{% endtabs %}

## Manual recovery

If you only have a few AU files to recover, use the "Import Audio" command to open all the .au files from the Audacity temporary folder or project \_data folder. Use shift-click or control-click to select multiple files. The files will be in approximately 6-second chunks and will be on separate tracks in the Audacity screen. Files from stereo tracks will alternate between left and right channels.

1. Click in the Track Control Panel (by the Mute/Solo buttons) of the topmost track.
2. Shortcut `Z` or Select > Region > Ends to Zero Crossings.
3. Edit > Remove Special > Trim.
4. Click in the Track Control Panel of the first track you want to join to the topmost track.
5. Shortcut Z or Edit > Find Zero Crossings.
6. Shortcut Z or Select > Region > Ends to Zero Crossings.
7. Click after the end of the topmost track.
8. Press End on the keyboard.
9. Click Edit > Paste and the cut track will attach to the end of the topmost track.
10. Repeat as necessary to join all the tracks onto the topmost track.

Play the result.

Cut and paste as needed if any files are found to be in the wrong order or the wrong channel.

## Automatic recovery tools

Tools written for legacy Audacity 1.2 can automate data recovery.

{% hint style="warning" %}
All these utilities require the .au files to be input in consecutive alphanumerical order. Audacity names files randomly so files will need to renamed.
{% endhint %}

Open Audacity's temporary or project \_data folder in your system file manager. Sort the files by timestamp order (earliest first), then rename them using a consecutive alphanumerical sequence, lowest number first. An arrangement looking something like this should work:

b001.au 15:56:02\
b002.au 15:56:02\
b003.au 15:56:10\
b004.au 15:56:10

### Utilities for renaming files to consecutive alphanumerical order

* On Windows, Explorer cannot rename to a sequence acceptable to the recovery tools. You can use instead the Mass Rename tool in the 21-day trial Professional or Ultimate versions of [xplorer2](http://zabkat.com/x2down.htm). These versions will let you recover an unedited stereo recording with exact allocation of left and right channels, if Windows is running the [NTFS](https://en.wikipedia.org/wiki/NTFS) file system. The [free version of xplorer2](http://zabkat.com/x2lite.htm) cannot guarantee correct channel allocation.
  1. _(only in the Professional and Ultimate versions)_ Click View > Raw Contents to enable maximum date resolution.
  2. Open the required folder in xplorer2 and sort the .au files by time modified as above.
  3. Ctrl + A to select all the files.
  4. File > Mass Rename.
  5. In the "Mass Rename Wizard", click in "Target name template" and type the letter e with a $ after the letter. For example, e$0001.au will rename the files to e0001.au, e0002.au and so on. Use enough zeros in the file name so that all the .au files will have the same number of digits.
  6. Press "Preview", and if the preview looks correct, hit "Rename"
* On Mac, try Applications > [Automator](http://www.macosxautomation.com/automator/).
* On Linux, try the file manager [Thunar](http://en.wikipedia.org/wiki/Thunar) included in the [xfce desktop](http://xfce.org/) See [here](http://www.ubuntugeek.com/switch-to-a-lightweight-filemanager.html) for help running Thunar on the Ubuntu desktop.

### Linux command-line alternatives for timestamp sorting

1. Open a terminal then "cd" into the directory that contains the .AU files.
2. Type the following command in a terminal to sort and rename the files into numerical timestamp order:\
   `mkdir "renamed" | find -type f -name "*.au" -printf "cp %h/%f renamed/%h/%TY%Tm%Td-%TH%TM%TS_%f\n"|sh`
3. The file names produced in the "renamed" folder are not in a consecutive sequence suitable for the Audacity recovery utilities. Instead, use the [Nyquist](https://wiki.audacityteam.org/wiki/Nyquist\_Plugins) plug-in [Append Import](https://forum.audacityteam.org/viewtopic.php?f=42\&t=59528) to import the files end-to-end into Audacity automatically in file name order.

### Limitations of automatic recovery utilities

* There is a 2 GB maximum size for any WAV file created from the reconstructed temporary files. This implies no more than 2000 .au files can be recovered. Sometimes (probably due to bugs in the utilities) there can be errors when recovering only 1000 or so files. In that case you would need to split the .au files in the temporary or\_data folder into two or more folders, each containing consecutively numbered files, and recover a separate WAV file from each folder.
* Recovery of unedited mono recordings should be correct in most cases.
* Recovery of unedited stereo recordings may recover with transposed left/right channels in places. Channel allocation will only be correct if you are using the NTFS (Windows) or [ext 4](https://en.wikipedia.org/wiki/Ext4) (Linux) file system and if your file manager supports sufficiently fine date resolution (see the Windows example above). This is because the files for each channel may have timestamps that are too close together to be correctly distinguished by other file systems.
* If any of the project data has been edited, it is unlikely to recover correctly.

## Other Tools / scripts

There is no implication that these tools will necessarily do what you want, nor have they necessarily been tested by Audacity Team.

### Scripts for GNU/Linux and Mac

**audacity\_rescue.sh**

This [shell script](https://gist.github.com/mef/2c90295920dc66f669a6) can reassemble a few thousand .au files. It may be simpler to apply (at a bash terminal) than some of the solutions mentioned on this page, particularly for mono recordings.

### **SoX**

1.  Using [SoX](http://sox.sourceforge.net/), make a copy of the temp directory and its files from a mono recording:

    `cp -r /tmp/audacity1.2-jbn ~/rescue`
2.  Convert the AU files into raw (headerless) files. The files must already be time-sorted and numbered with leading zeroes:

    `for f in *.au ; do sox ${f} -t raw ${f}.raw ; done`
3.  Concatenate the raw files together to make one long raw file. Concatenating the AU files together (each with its own header) would produce noise at the joins between each AU file.

    `cat *.raw > bigfile.raw`
4. Finally, import the raw file into Audacity specifying the appropriate encoding, endianness, channels and sample rate.
