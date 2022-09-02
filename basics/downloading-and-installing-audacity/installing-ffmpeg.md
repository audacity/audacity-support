# Installing FFMPEG

Due to patent restrictions, FFMPEG cannot be distributed with Audacity itself. However, FFMPEG is required to import and export a variety of audio formats, including M4A and WMA.

{% hint style="info" %}
**Note:** In previous versions of Audacity, LAME was required to export MP3 files. It is now included with Audacity by default on Windows and macOS. Make sure you are using the latest version of Audacity if you're getting any LAME errors.&#x20;
{% endhint %}

You can download and install FFMPEG as follows:

{% tabs %}
{% tab title="Windows" %}
### Recommended installer

1.  Download FFMPEG (**FFmpeg v2.2.2 INSTALLER (.EXE)**) from a third party site, for example [https://lame.buanzo.org/ffmpeg64audacity.php](https://lame.buanzo.org/ffmpeg64audacity.php)&#x20;

    Note: This is the 64-bit Windows download page, if your Audacity version is 32-bit, choose a different download from [https://lame.buanzo.org/](https://lame.buanzo.org/)
2. Run the downloaded installer (in this case, _FFmpeg\_v2.2.2\_for\_Audacity\_on\_Windows\_64bit.exe_). You can ignore the "unknown publisher" warning.&#x20;
3. Read and accept the license
4. Finish the installation. The installer will install FFMPEG into  **C:\Program Files\FFmpeg for Audacity**
5. Restart Audacity.

Audacity should now automatically detect FFMPEG and allow you to use it.&#x20;

### Other FFMPEG builds

The installer above installs a quite old version of FFMPEG. While it works for most file formats and Audacity versions, you may want to install more recent versions of FFMPEG to take advantage of newer codecs or bug fixes.&#x20;

Newer versions can be found for instance on:

* [https://github.com/BtbN/FFmpeg-Builds/releases](https://github.com/BtbN/FFmpeg-Builds/releases)&#x20;
* [https://www.gyan.dev/ffmpeg/builds/#release-builds](https://www.gyan.dev/ffmpeg/builds/#release-builds)
* Or by compiling it from source as described here: [https://trac.ffmpeg.org/wiki/CompilationGuide](https://trac.ffmpeg.org/wiki/CompilationGuide)&#x20;

{% hint style="info" %}
**Note:**&#x20;

* Audacity 3.1 and later supports avformat-55.dll, avformat-57.dll and avformat-58.dll. Audacity 3.2 and later supports also avformat-59.dll. You can check which dll is in which FFMPEG release [here](https://ffmpeg.org/download.html).&#x20;
* Make sure you download full FFMPEG copies, not just the avformat-\*.dll's individually. Further, make sure to download or build the **shared** versions as only those contain .dll's.&#x20;
{% endhint %}



### Manual installation

{% embed url="https://youtu.be/ROk5Hw_MWDE" %}
Video guide
{% endembed %}

If you have installed FFMPEG from a different source, or installed it in a different location, you'll need to tell Audacity where to find it. To do this:&#x20;

1. Go to **Edit > Preferences > Libraries**
2.  Click on the **Locate...** button.&#x20;

    ![](<../../.gitbook/assets/ffmpeg prefs.png>)
3.  **If the following message appears**, Audacity has automatically identified FFMPEG:

    ![](<../../.gitbook/assets/ffmpeg success.png>)

    You can click **No** as Audacity already knows where to find FFMPEG.&#x20;

    If this message **does not appear**, proceed with the next steps.
4.  In this dialog window, click **Browse...** to locate the avformat-\*.dll from the FFMPEG folder you downloaded/installed elsewhere&#x20;

    ![](<../../.gitbook/assets/ffmpeg locate.png>)
5. Once you've found it, click **Open**, then **OK**, then **OK** again to close the preferences.&#x20;
{% endtab %}

{% tab title="macOS" %}
### Homebrew

The easiest way to do this is using [**homebrew**](https://brew.sh/). Once you have it installed, running the following in the terminal installs FFMPEG for you:

```bash
brew install ffmpeg
```

### Installer for Intel systems

{% hint style="warning" %}
**Caution:** If you're using an Apple Silicon ("M1", "M2") system, this installer will not work.&#x20;

Further, the installer will install a fairly old version of FFMPEG, which works for most file formats and most Audacity versions. If you need a newer version, for compatibility with newer files or bugfixes, choose an alternative method instead.
{% endhint %}

1. Download FFMPEG (**ffmpeg\_64bit\_osx.pkg**) from a third party site, for example [https://lame.buanzo.org/#lameosx64bitdl](https://lame.buanzo.org/#lameosx64bitdl)&#x20;
2. When you have finished downloading, double-click the **"ffmpeg\_64bit\_osx.pkg"** in your **Downloads** folder.
3. You will be guided through the installation
4. Click through the steps in the installer. This will install the **ffmpeg.55.64bit.dylib** file in the system library at **/Library/Application Support/audacity/libs/**.
   * _On some Macs the process may look as though it has stalled on "Validating packages" - just be patient and wait for it to complete._
5. Restart Audacity if it was running when you installed FFmpeg then Audacity should detect FFmpeg automatically.

If you have problems with Audacity detecting FFmpeg, follow the steps below to **manually locate FFmpeg**.

### Compiling other versions

You can download or compile FFMPEG yourself as described here: [https://trac.ffmpeg.org/wiki/CompilationGuide/macOS](https://trac.ffmpeg.org/wiki/CompilationGuide/macOS)&#x20;

{% hint style="info" %}
**Note:**&#x20;

* Audacity 3.1 and later supports **avformat 55, 57** and **58**. Audacity 3.2 and later supports also **avformat 59**. On mac, the avformat files usually are called **ffmpeg.5\*.64bit.dylib**
* Make sure to download or build the **shared** versions as only those can be used by Audacity.&#x20;
{% endhint %}

### Manual installation

If you have installed FFMPEG from a different source, or installed it in a different location, you'll need to tell Audacity where to find it. To do this:&#x20;

1. Go to **Audacity > Preferences > Libraries**
2. Click on the **Locate...** button.&#x20;
3.  If a "**Success**" message appears, Audacity has successfully found FFMPEG. \
    You can click **No** as Audacity already knows where to find FFMPEG.&#x20;

    If this message **does not appear**, proceed with the next steps.
4. In the "**Locate FFMPEG**" dialog, click **Browse...** to locate the **avformat-\*.dylib** from the FFMPEG folder you downloaded/installed elsewhere.
5. Once you've found it, click **Open**, then **OK** and **OK** again to close the preferences.&#x20;
{% endtab %}

{% tab title="Linux" %}
On Linux, you generally can install FFMPEG as well as LAME through the package manager. You can use the following command in your Terminal/Console to install it:

|                                |                                                                                                                                                                               |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Debian, Ubuntu, Pop\_OS!, Mint | `sudo apt install ffmpeg lame`                                                                                                                                                |
| Fedora, Redhat, CentOS         | <p>First install the <a href="https://rpmfusion.org/Configuration">RPM Fusion repository</a> and check for updates, then </p><p><code>sudo dnf install ffmpeg lame</code></p> |
| Arch, Manjaro                  | `sudo pacman -Syu ffmpeg lame`                                                                                                                                                |

Once you have installed FFMPEG and LAME, restart Audacity. It will automatically try to detect them.&#x20;

{% hint style="warning" %}
**Caution:** Audacity supports FFMPEG's libavformat in version 55 (all Audacity versions), 57 and 58 (Audacity 3.1+) and 59 (Audacity 3.2+). If your distribution ships with a different version, it may not get detected, or may not work correctly. In that case, you may need to uninstall FFMPEG again and make a **shared build** of a supported version [from source](https://ffmpeg.org/download.html#releases).&#x20;
{% endhint %}

### Manual installation

If your FFMPEG or LAME installation didn't get detected, you'll need to tell Audacity where to find it. To do this:&#x20;

1. Go to **Edit > Preferences > Libraries**
2. Click on the **Locate...** button of the relevant library.&#x20;
3.  If a "**Success**" message appears, Audacity has successfully found the library. \
    You can click **No** as Audacity already knows where to find the library.&#x20;

    If this message **does not appear**, proceed with the next steps.
4. _In case of FFMPEG:_\
   In the "**Locate FFMPEG**" dialog, click **Browse...** to locate the **libavformat.so.\*** from the FFMPEG folder you downloaded/installed elsewhere.\
   _In case of LAME:_\
   In the "**Locate LAME**" dialog, click **Browse...** to locate the **libmp3lame.so** that you downloaded/installed elsewhere.
5. Once you've found it, click **Open**, then **OK** and **OK** again to close the preferences.&#x20;
{% endtab %}
{% endtabs %}
