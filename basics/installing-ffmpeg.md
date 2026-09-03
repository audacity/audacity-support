---
description: >-
  FFmpeg allows you import/export additional audio file formats into/from
  Audacity
---

# Installing FFmpeg

Due to patent restrictions, FFmpeg cannot be distributed with Audacity itself. However, FFmpeg is required to import and export a variety of audio formats, including M4A and WMA.

{% hint style="info" %}
**Note:** In previous versions of Audacity, LAME was required to export MP3 files. It is now included with Audacity by default on Windows and macOS. Make sure you are using the latest version of Audacity if you're getting any LAME errors.
{% endhint %}

You can download and install FFmpeg as follows:

{% tabs %}
{% tab title="Windows" %}
#### Recommended installer

1. Download the FFmpeg installer from [https://lame.buanzo.org/ffmpeg.php](https://lame.buanzo.org/ffmpeg.php)\
   For most computers, the 64-bit Windows version is correct. For native Windows ARM build go to [https://github.com/tordona/ffmpeg-win-arm64](https://github.com/tordona/ffmpeg-win-arm64).
2. Run the installer. You can ignore the "unknown publisher" warning.
3. Read and accept the license
4. Select the location to install FFmpeg. By default FFmpeg will be installed into **C:\Program Files\FFmpeg for Audacity**
5. Finish the installation
6. Restart Audacity

Audacity should now automatically detect FFmpeg and allow you to use it.

#### Installing using WinGet

FFmpeg for Audacity is also available on WinGet:

```powershell
winget install --id=Buanzo.FFmpegforAudacity  -e
```

#### Other FFMPEG builds

If you prefer a manual installation of FFmpeg you can download a ZIP file from a different source:

* [https://github.com/BtbN/FFmpeg-Builds/releases](https://github.com/BtbN/FFmpeg-Builds/releases)
* [https://www.gyan.dev/ffmpeg/builds/#release-builds](https://www.gyan.dev/ffmpeg/builds/#release-builds)
* Windows ARM64: [https://github.com/tordona/ffmpeg-win-arm64](https://github.com/tordona/ffmpeg-win-arm64)
* Or by compiling it from source as described here: [https://trac.ffmpeg.org/wiki/CompilationGuide](https://trac.ffmpeg.org/wiki/CompilationGuide)

{% hint style="info" %}
**Note:**

* Not all FFmpeg versions are supported on all releases.
  * Audacity prior 3.1 only supports avformat-55.dll.
  * Audacity 3.1 and later supports avformat-55.dll, avformat-57.dll and avformat-58.dll.
  * Audacity 3.2 and later also supports avformat-59.dll.
  * Audacity 3.3 and later also supports avformat-60.dll.
  * Audacity 3.5 and later also supports avformat-61.dll.
  * You can check which dll is in which FFmpeg release [here](https://ffmpeg.org/download.html#releases).
* Make sure you download full FFmpeg copies, not just the avformat-\*.dll's individually. Further, make sure to download or build the **shared** versions as only those contain .dll's.
* Different versions of FFmpeg may have different codecs enabled in them. In particular, AMR (narrowband) is not featured in the recommended installer.
{% endhint %}

#### Manual installation

If you have installed FFmpeg from a different source, or installed it in a different location, you'll need to tell Audacity where to find it. To do this:

1. Go to **Edit > Preferences > Libraries**
2.  Click on the **Locate...** button.

    ![](https://github.com/audacity/audacity-support/blob/au4/.gitbook/assets/ffmpeg%20prefs.png)
3.  **If the following message appears**, Audacity has automatically identified FFmpeg:

    ![](https://github.com/audacity/audacity-support/blob/au4/.gitbook/assets/ffmpeg%20success.png)

    You can click **No** as Audacity already knows where to find FFmpeg.

    If this message **does not appear**, proceed with the next steps.
4.  In this dialog window, click **Browse...** to locate the avformat-\*.dll from the FFmpeg folder you downloaded/installed elsewhere

    ![](https://github.com/audacity/audacity-support/blob/au4/.gitbook/assets/ffmpeg%20locate.png)
5. Once you've found it, click **Open**, then **OK**, then **OK** again to close the preferences.
{% endtab %}

{% tab title="macOS" %}
#### Recommended installer

This is a universal binary installer. It automatically matches your system architecture.

1. Download FFmpeg for macOS from [https://lame.buanzo.org/ffmpeg.php](https://lame.buanzo.org/ffmpeg.php)
2. When you have finished downloading, open the .pkg. You will be guided through the installation
3. Click through the steps in the installer.
   * _On some Macs the process may look as though it has stalled on "Validating packages" - just be patient and wait for it to complete._
4. Restart Audacity if it was running when you installed FFmpeg then Audacity should detect FFmpeg automatically.

If you have problems with Audacity detecting FFmpeg, follow the steps below to **manually locate FFmpeg**.

#### Homebrew

One way to install an FFmpeg version that matches your system architecture is using [**homebrew**](https://brew.sh/). You can install it through the Terminal.app by typing in:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

And once you have Homebrew, the following command installs FFmpeg:

```bash
brew install ffmpeg
```

Audacity should now automatically detect the installation after a restart. If not, follow the steps of a manual installation.

#### Compiling other versions

You can download or compile FFmpeg yourself as described here: [https://trac.ffmpeg.org/wiki/CompilationGuide/macOS](https://trac.ffmpeg.org/wiki/CompilationGuide/macOS)

{% hint style="info" %}
**Note:**

* Audacity 3.1 and later supports **avformat 55, 57** and **58**. Audacity 3.2 and later also supports **avformat 59**. Audacity 3.3 and later also supports avformat 60.
* Make sure to download or build the **shared** versions (with .dylib's) as only those can be used by Audacity.
* Different versions of FFmpeg may have different codecs enabled in them. In particular, AMR (narrowband) is not featured in the recommended installer.
{% endhint %}

#### Manual installation

If you have installed FFmpeg from a different source, or installed it in a different location, you'll need to tell Audacity where to find it. To do this:

1. Go to **Audacity > Preferences > Libraries**
2. Click on the **Locate...** button.
3.  If a "**Success**" message appears, Audacity has successfully found FFmpeg.\
    You can click **No** as Audacity already knows where to find FFmpeg.

    If this message **does not appear**, proceed with the next steps.
4. In the "**Locate FFMPEG**" dialog, click **Browse...** to locate the **avformat-\*.dylib** from the FFmpeg folder you downloaded/installed elsewhere.
5. Once you've found it, click **Open**, then **OK** and **OK** again to close the preferences.

#### Troubleshooting

If you're using an Apple Silicon ("M1", "M2") system, make sure that your FFmpeg and Audacity architectures match:

* arm64 (Apple Silicon) Audacity needs arm64 FFmpeg,
* x86\_64 (intel, also known as x64 and amd64) Audacity needs x86\_64 FFmpeg.

Additionally, make sure you're using the latest version of Audacity.

If you're using homebrew, it may be that a freshly released version is incompatible with Audacity for a while. You can run run `brew install ffmpeg@6` to install an older version of FFmpeg (in this case version 6, which corresponds to avformat 60).
{% endtab %}

{% tab title="Linux" %}
On Linux, you generally can install FFmpeg as well as LAME through the package manager. You can use the following command in your Terminal/Console to install it:

<table><thead><tr><th width="194"></th><th></th></tr></thead><tbody><tr><td>Debian, Ubuntu, Pop_OS!, Mint</td><td><code>sudo apt install ffmpeg lame</code></td></tr><tr><td>Fedora, Redhat, CentOS</td><td><p>First install the <a href="https://rpmfusion.org/Configuration">RPM Fusion repository</a> and check for updates, then</p><p><code>sudo dnf install ffmpeg lame</code></p></td></tr><tr><td>Arch, Manjaro</td><td><code>sudo pacman -Syu ffmpeg lame</code></td></tr></tbody></table>

Once you have installed FFMPEG and LAME, restart Audacity. It will automatically try to detect them.

{% hint style="warning" %}
**Caution:** Audacity supports FFmpeg's libavformat in version 55 (all Audacity versions), 57 and 58 (Audacity 3.1+), 59 (Audacity 3.2+) and 60 (Audacity 3.3+). If your distribution ships with a different version, it may not get detected, or may not work correctly. In that case, you may need to uninstall FFmpeg again and make a **shared build** of a supported version [from source](https://ffmpeg.org/download.html#releases).
{% endhint %}

#### Manual installation

If your FFmpeg or LAME installation didn't get detected, you'll need to tell Audacity where to find it. To do this:

1. Go to **Edit > Preferences > Libraries**
2. Click on the **Locate...** button of the relevant library.
3.  If a "**Success**" message appears, Audacity has successfully found the library.\
    You can click **No** as Audacity already knows where to find the library.

    If this message **does not appear**, proceed with the next steps.
4. _In case of FFMPEG:_\
   In the "**Locate FFmpeg**" dialog, click **Browse...** to locate the **libavformat.so.\*** from the FFMPEG folder you downloaded/installed elsewhere.\
   \&#xNAN;_In case of LAME:_\
   In the "**Locate LAME**" dialog, click **Browse...** to locate the **libmp3lame.so** that you downloaded/installed elsewhere.
5. Once you've found it, click **Open**, then **OK** and **OK** again to close the preferences.
{% endtab %}
{% endtabs %}
