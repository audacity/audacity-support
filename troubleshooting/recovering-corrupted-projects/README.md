---
description: Using the Audacity Project Tools to recover corrupted projects
---

# Recovering corrupted projects

This article addresses the following error codes in Audacity:

* Error code 11
* Error code 13
* Error code 101
* "Audacity failed to read a file in C:" (or D:, E:, ...)

Make sure you use the latest version of Audacity. See [downloading-and-installing-audacity.md](../../basics/downloading-and-installing-audacity.md "mention") for more information.

Sometimes, just opening the file in the latest version automatically recovers the project. If not, proceed with the following steps:

First, download the latest version of the Audacity Project Tools:

{% embed url="https://github.com/audacity/audacity-project-tools/releases" %}

After downloading, follow the instructions relevant to your system. Note: macOS is not supported yet.

{% hint style="warning" %}
**Caution:** Make sure you have plenty of space left on your computer. You will need roughly 4 times the size of your .aup3 for a successful recovery. If you have a 10GB file, you should have at least 40GB available.
{% endhint %}

{% tabs %}
{% tab title="Windows" %}
1. In your Downloads folder, create a new sub-folder "AudRepair".
2. **Unzip** the audacity-project-tools zip which you downloaded
3. **Move** the two .exe files from the unzipped folder into AudRepair.
4. **Copy** your defective .aup3 project file into the AudRepair folder.
5. **Rename** the file to `broken.aup3`.
6. Press `Windows-key + R`, and type `cmd`. A (black) cmd screen will appear.
7. Navigate to your AudRepair folder by typing `cd Downloads\AudRepair` and pressing `Enter`.
8. Type `dir` and press `Enter`. The following three files should be listed: `audacity-project-tools.exe`, `broken.aup3`, and `sqlite3.exe`
9. Type `audacity-project-tools -drop_autosave broken.aup3` and press `Enter`.
10. The message "Project requires Audacity 3.0.0" will appear.
11. When the command prompt (`C:\Users\(yourname)\Downloads\AudRepair\>`) reappears, type `dir` again.
12. If a `broken.recovered.aup3` file appears, open it in Audacity.\
    \
    If that file works as expected, go to **File -> Save As...** and save it to your usual location. The recovery process is now over, you can continue working as normal.\
    \
    If that file does not appear, or is still broken, continue with the following steps:
13. Type `audacity-project-tools -recover_db -recover_project broken.aup3` and press `Enter`.
14. The messages "`Project requires Audacity 3.0.0`", and "`Using 'sqlite3.exe' for recovery`" will appear. Later the message "`Executing query #xxxx....`" will appear as the rescued file is being recreated.\
    **Note:** This process can take quite a while depending on your specific machine. There is no status (or % completion) indicator, so you just have to **be patient**.\
    You should plan 15-30 minutes per GB, though it may be faster if you have a fast PC.\
    **Keep an eye on available disk space**.\
    \
    Due to a glitch, sometimes a single character can appear when the program is done, eg "`z`". If this happens, simply press **Backspace**.
15. When the process completes, your should be able to **open** the "broken.recovered.aup3" in Audacity.\
    The message "File not saved properly" will appear the first time you open the recovered project. This is normal and you can ignore this message.

If the messages "`Invalid block xxxx: Block not found`", check to see if some audio was silenced - typically near your most recent edits. Usually these messages are spurious.
{% endtab %}

{% tab title="Linux" %}
1. In your downloads folder, create a new sub-folder called "AudRepair".
2. **Unzip** the audacity-project-tools ZIP file that you downloaded
3. **Move** the unzipped files into AudRepair
4. **Copy** your defective .aup3 project file into AudRepair
5. **Rename** the .aup3 file to broken.aup3
6. Open the **Terminal** or **Konsole** program.
7. Navigate to the AudRepair folder by typing `cd ~/Downloads/AudRepair` and pressing `Enter`
8. Type `ls` and press `Enter`. \*\*\*\* The following three files should be listed: `audacity-project-tools`, `broken.aup3` and `sqlite3`
9. Make the audacity project tools and sqlite3 executable by typing `chmod +x audacity-project-tools sqlite3` and pressing `Enter`.
10. Type `./audacity-project-tools -drop_autosave broken.aup3` and press `Enter`.
11. The message "Project requires Audacity 3.0.0" will appear.
12. When the command prompt (`you@pc:~/Downloads/AudRepair$`) reappears, type ls again.
13. If a `broken.recovered.aup3` file appears, open it in Audacity.\
    \
    If that file works as expected, go to **File -> Save As...** and save it to your usual location. The recovery process is now over, you can continue working as normal.\
    \
    If that file does not appear, or is still broken, continue with the following steps:
14. Type `./audacity-project-tools -recover_db -recover_project broken.aup3` and press `Enter`.
15. The messages "`Project requires Audacity 3.0.0`", and "`Using 'sqlite3' for recovery`" will appear. Later the message "`Executing query #xxxx....`" will appear as the rescued file is being recreated.\
    **Note:** This process can take quite a while depending on your specific machine. There is no status (or % completion) indicator, so you just have to **be patient**.\
    You should plan 15-30 minutes per GB, though it may be faster if you have a fast PC.\
    **Keep an eye on available disk space**.\
    \
    Due to a glitch, sometimes a single character can appear when the program is done, eg "`z`". If this happens, simply press **Backspace**.
16. When the process completes, your should be able to **open** the "broken.recovered.aup3" in Audacity.\
    The message "File not saved properly" will appear the first time you open the recovered project. This is normal and you can ignore this message.

If the messages "`Invalid block xxxx: Block not found`", check to see if some audio was silenced - typically near your most recent edits. Usually these messages are spurious.
{% endtab %}
{% endtabs %}

{% hint style="info" %}
**Note:**

* There is no guarantee that all content will be able to be restored, or any at all.
* Some additional commands for the Audacity Project Tools can be found [on Github](https://github.com/audacity/audacity-project-tools#using-the-audacity-project-tools).
* If a section of audio is missing, you may need to manually re-record it. See [re-recording-a-section.md](../../repairing-audio/re-recording-a-section.md "mention") for more information.
{% endhint %}
