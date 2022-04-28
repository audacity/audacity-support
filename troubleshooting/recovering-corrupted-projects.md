---
description: Using the Audacity Project Tools to recover corrupted projects
---

# Recovering Corrupted Projects

This article addresses the following error codes in Audacity:&#x20;

* Error code 11
* Error code 13
* Error code 101
* "Audacity failed to read a file in C:" (or D:, E:, ...)

Make sure you use the latest version of Audacity. See[downloading-and-installing-audacity.md](../todo/downloading-and-installing-audacity.md "mention") for more information.

Sometimes, just opening the file in the latest version automatically recovers the project. If not, proceed with the following steps:&#x20;

First, download the latest version of the Audacity Project Tools:

{% embed url="https://github.com/audacity/audacity-project-tools/releases" %}

After downloading, follow the instructions relevant to your system. Note: macOS is not supported yet.&#x20;

{% hint style="warning" %}
**Caution:** Make sure you have plenty of space left on your computer. You will need roughly 4 times the size of your .aup3 for a successful recovery. If you have a 10GB file, you should have at least 40GB available.
{% endhint %}

{% tabs %}
{% tab title="Windows" %}
1. In your Downloads folder, create a new sub-folder "AudRepair".
2. **Unzip** the audacity-project-tools zip which you downloaded&#x20;
3. **Move** the two .exe files from the unzipped folder into AudRepair.
4. **Copy** your defective .aup3 project file.
5. **Paste** the copy into the AudRepair directory.
6. **Rename** the file to `broken.aup3`.
7. Press `Windows-key + R`, and type `cmd`. A (black) cmd screen will appear.
8. Navigate to your Downloads folder by typing in the line `cd Downloads` and pressing `Enter`.
9. Navigate to your AudRepair folder by typing `cd AudRepair` and pressing `Enter`.
10. Type `dir`. The following three files should be listed: `audacity-project-tools.exe`, `broken.aup3`, and `sqlite3.exe`
11. Type `audacity-project-tools -drop_autosave broken.aup3` and press `Enter`.
12. The message "Project requires Audacity 3.0.0" will appear.
13. When the command prompt (`C:\Users\(yourname)\Downloads\AudRepair\>`) reappears, type `dir` again.&#x20;
14. If a `broken.recovered.aup3` file appears, open it in Audacity.\
    \
    If that file works as expected, go to **File -> Save As...** and save it to your usual location. The recovery process is now over, you can continue working as normal. \
    \
    If that file does not appear, or is still broken, continue with the following steps:
15. Type `audacity-project-tools -recover_db -recover_project broken.aup3` and press `Enter`.
16. The messages "`Project requires Audacity 3.0.0`", and "`Using 'sqlite3.exe' for recovery`" will appear. Later the message "`Executing query #xxxx....`" will appear as the rescued file is being recreated. \
    **Note:** This process can take quite a while depending on your specific machine. There is no status (or % completion) indicator, so you just have to **be patient**. \
    You should plan 15-30 minutes per GB, though it may be faster if you have a fast PC. \
    **Keep an eye on available disk space**. \
    \
    Due to a glitch, sometimes a single character can appear when the program is done, eg "`z`". If this happens, simply press **Backspace**.&#x20;
17. When the process completes, your should be able to **open** the "broken.recovered.aup3" in Audacity. \
    The message "File not saved properly" will appear the first time you open the recovered project. This is normal and you can ignore this message.

If the messages "`Invalid block xxxx: Block not found`", check to see if some audio was silenced - typically near your most recent edits. Usually these messages are spurious.
{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

{% hint style="info" %}
**Note:**&#x20;

* There is no guarantee that all content will be able to be restored, or any at all.&#x20;
* Some additional commands for the Audacity Project Tools can be found [on Github](https://github.com/audacity/audacity-project-tools#using-the-audacity-project-tools).
* If a section of audio is missing, you may need to manually re-record it. See [re-recording-a-section.md](../repairing-audio/re-recording-a-section.md "mention") for more information.
{% endhint %}
