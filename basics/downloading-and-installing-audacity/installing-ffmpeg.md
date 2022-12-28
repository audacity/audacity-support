---
description: >-
  FFmpeg allows you import/export additional audio file formats into/from
  Audacity
---

# Installing FFmpeg

Due to patent restrictions, FFmpeg cannot be distributed with Audacity itself. However, FFmpeg is required to import and export a variety of audio formats, including M4A and WMA.

{% hint style="info" %}
**Note:** In previous versions of Audacity, LAME was required to export MP3 files. It is now included with Audacity by default on Windows and macOS. Make sure you are using the latest version of Audacity if you're getting any LAME errors.&#x20;
{% endhint %}

You can download and install FFmpeg as follows:

{% tabs %}
{% tab title="Windows" %}
### Recommended installer

1. Download the FFmpeg installer from [https://lame.buanzo.org/ffmpeg.php](https://lame.buanzo.org/ffmpeg.php)\
   For most computers, the 64-bit Windows version is correct.
2. Run the installer. You can ignore the "unknown publisher" warning.
3. Read and accept the license
4. Select the location to install FFmpeg. By default FFmpeg will be installed into **C:\Program Files\FFmpeg for Audacity**
5. Finish the installation
6. Restart Audacity

Audacity should now automatically detect FFmpeg and allow you to use it.&#x20;

### Other FFMPEG builds

If you prefer a manual installation of FFmpeg you can download a ZIP file from a different source:

* [https://github.com/BtbN/FFmpeg-Builds/releases](https://github.com/BtbN/FFmpeg-Builds/releases)&#x20;
* [https://www.gyan.dev/ffmpeg/builds/#release-builds](https://www.gyan.dev/ffmpeg/builds/#release-builds)
* Or by compiling it from source as described here: [https://trac.ffmpeg.org/wiki/CompilationGuide](https://trac.ffmpeg.org/wiki/CompilationGuide)&#x20;

{% hint style="info" %}
**Note:**&#x20;

* Audacity 3.1 and later supports avformat-55.dll, avformat-57.dll and avformat-58.dll. Audacity 3.2 and later supports also avformat-59.dll. You can check which dll is in which FFmpeg release [here](https://ffmpeg.org/download.html).&#x20;
* Make sure you download full FFmpeg copies, not just the avformat-\*.dll's individually. Further, make sure to download or build the **shared** versions as only those contain .dll's.&#x20;
{% endhint %}



### Manual installation

{% embed url="https://youtu.be/ROk5Hw_MWDE" %}
Video guide
{% endembed %}

If you have installed FFmpeg from a different source, or installed it in a different location, you'll need to tell Audacity where to find it. To do this:&#x20;

1. Go to **Edit > Preferences > Libraries**
2.  Click on the **Locate...** button.&#x20;

    ![](<../../.gitbook/assets/ffmpeg prefs.png>)
3.  **If the following message appears**, Audacity has automatically identified FFmpeg:

    ![](<../../.gitbook/assets/ffmpeg success.png>)

    You can click **No** as Audacity already knows where to find FFmpeg.&#x20;

    If this message **does not appear**, proceed with the next steps.
4.  In this dialog window, click **Browse...** to locate the avformat-\*.dll from the FFmpeg folder you downloaded/installed elsewhere&#x20;

    ![](<../../.gitbook/assets/ffmpeg locate.png>)
5. Once you've found it, click **Open**, then **OK**, then **OK** again to close the preferences.&#x20;
{% endtab %}

{% tab title="macOS" %}
{% hint style="warning" %}
**Caution:** If you're using an Apple Silicon ("M1", "M2") system, make sure that your FFMPEG and Audacity architectures match:&#x20;

* arm64 (Apple Silicon) Audacity needs arm64 FFmpeg,&#x20;
* x86\_64 (intel, also known as x64 and amd64) Audacity needs x86\_64 FFMPEG.&#x20;
{% endhint %}

### Recommended installer

This is a universal binary installer. It automatically matches your system architecture.

1. Download FFmpeg for macOS from  [https://lame.buanzo.org/ffmpeg.php](https://lame.buanzo.org/ffmpeg.php)
2. When you have finished downloading, double-click the **"FFmpeg\_for\_Audacity\_3.2\_on\_macOS.pkg"** in your **Downloads** folder.
3. You will be guided through the installation
4. Click through the steps in the installer.&#x20;
   * _On some Macs the process may look as though it has stalled on "Validating packages" - just be patient and wait for it to complete._
5. Restart Audacity if it was running when you installed FFmpeg then Audacity should detect FFmpeg automatically.

If you have problems with Audacity detecting FFmpeg, follow the steps below to **manually locate FFmpeg**.



### Homebrew

One way to install an FFmpeg version that matches your system architecture is using [**homebrew**](https://brew.sh/). To install homebrew, you first need xcode. You can install it through the Terminal.app by typing in:&#x20;

```bash
xcode-select --install
```

When XCode is installed, the following command downloads and runs the homebrew installer:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

And once you have Homebrew, the following command installs FFmpeg:

```bash
brew install ffmpeg
```

Audacity should now automatically detect the installation after a restart. If not, follow the steps of a manual installation.



### Compiling other versions

You can download or compile FFmpeg yourself as described here: [https://trac.ffmpeg.org/wiki/CompilationGuide/macOS](https://trac.ffmpeg.org/wiki/CompilationGuide/macOS)&#x20;

{% hint style="info" %}
**Note:**&#x20;

* Audacity 3.1 and later supports **avformat 55, 57** and **58**. Audacity 3.2 and later supports also **avformat 59**.
* Make sure to download or build the **shared** versions (with .dylib's) as only those can be used by Audacity.&#x20;
{% endhint %}

### Manual installation

If you have installed FFmpeg from a different source, or installed it in a different location, you'll need to tell Audacity where to find it. To do this:&#x20;

1. Go to **Audacity > Preferences > Libraries**
2. Click on the **Locate...** button.&#x20;
3.  If a "**Success**" message appears, Audacity has successfully found FFmpeg. \
    You can click **No** as Audacity already knows where to find FFmpeg.&#x20;

    If this message **does not appear**, proceed with the next steps.
4. In the "**Locate FFMPEG**" dialog, click **Browse...** to locate the **avformat-\*.dylib** from the FFmpeg folder you downloaded/installed elsewhere.
5. Once you've found it, click **Open**, then **OK** and **OK** again to close the preferences.&#x20;
{% endtab %}

{% tab title="Linux" %}
On Linux, you generally can install FFmpeg as well as LAME through the package manager. You can use the following command in your Terminal/Console to install it:

|                                |                                                                                                                                                                               |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Debian, Ubuntu, Pop\_OS!, Mint | `sudo apt install ffmpeg lame`                                                                                                                                                |
| Fedora, Redhat, CentOS         | <p>First install the <a href="https://rpmfusion.org/Configuration">RPM Fusion repository</a> and check for updates, then </p><p><code>sudo dnf install ffmpeg lame</code></p> |
| Arch, Manjaro                  | `sudo pacman -Syu ffmpeg lame`                                                                                                                                                |

Once you have installed FFMPEG and LAME, restart Audacity. It will automatically try to detect them.&#x20;

{% hint style="warning" %}
**Caution:** Audacity supports FFmpeg's libavformat in version 55 (all Audacity versions), 57 and 58 (Audacity 3.1+) and 59 (Audacity 3.2+). If your distribution ships with a different version, it may not get detected, or may not work correctly. In that case, you may need to uninstall FFmpeg again and make a **shared build** of a supported version [from source](https://ffmpeg.org/download.html#releases).&#x20;
{% endhint %}

### Manual installation

If your FFmpeg or LAME installation didn't get detected, you'll need to tell Audacity where to find it. To do this:&#x20;

1. Go to **Edit > Preferences > Libraries**
2. Click on the **Locate...** button of the relevant library.&#x20;
3.  If a "**Success**" message appears, Audacity has successfully found the library. \
    You can click **No** as Audacity already knows where to find the library.&#x20;

    If this message **does not appear**, proceed with the next steps.
4. _In case of FFMPEG:_\
   In the "**Locate FFmpeg**" dialog, click **Browse...** to locate the **libavformat.so.\*** from the FFMPEG folder you downloaded/installed elsewhere.\
   _In case of LAME:_\
   In the "**Locate LAME**" dialog, click **Browse...** to locate the **libmp3lame.so** that you downloaded/installed elsewhere.
5. Once you've found it, click **Open**, then **OK** and **OK** again to close the preferences.&#x20;
{% endtab %}
{% endtabs %}
