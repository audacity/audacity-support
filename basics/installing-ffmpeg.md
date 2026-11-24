---
description: >-
  FFmpeg lets Audacity import and export additional audio formats, and import
  audio from video files.
---

# Installing FFmpeg

FFmpeg is a free library that lets Audacity import and export additional formats, such as M4A (AAC), WMA, AC3 and AMR, and import the audio track from most video files (MP4, MOV, MKV, …). Because of patent restrictions, FFmpeg can't be distributed with Audacity, so you need to install it separately.

In current versions of Audacity, you don't need FFmpeg for WAV, AIFF, FLAC, MP3, Ogg Vorbis or Opus. Those formats work out of the box.

{% hint style="info" %}
**LAME (for MP3 export)** is included in Audacity 2.3.2 and later on Windows and macOS, and in Audacity 3.0 and later on Linux. On older versions, install LAME separately:

* **Windows:** download the LAME installer from [lame.buanzo.org](https://lame.buanzo.org/#lamewindl).
* **Linux:** install the `libmp3lame` package (called `libmp3lame0` on Debian and Ubuntu, `lame-libs` on Fedora, and `lame` on Arch).
{% endhint %}

{% hint style="info" %}
**Using Audacity 4?** The FFmpeg settings are in **Preferences > General > FFmpeg library**. Click **Locate existing installation** wherever this page says **Locate...**. See also the [Audacity 4 version of this page](https://support.audacityteam.org/au4/basics/installing-ffmpeg).
{% endhint %}

{% embed url="https://youtu.be/mY9wBvDgnfQ" %}
Video walkthrough of installing FFmpeg for Audacity on Windows and macOS.
{% endembed %}

## Which FFmpeg version works with my Audacity?

Audacity loads FFmpeg's **avformat** library, and each Audacity release supports a fixed set of avformat versions. If your FFmpeg is newer than your Audacity, Audacity won't detect it. Update Audacity, or install an older FFmpeg.

| Audacity version     | Supported avformat versions | Matching FFmpeg releases |
| -------------------- | --------------------------- | ------------------------ |
| before 3.1           | 55                          | 2.2 – 2.4                |
| 3.1                  | 55, 57, 58                  | 2.2 – 2.4, 3.x – 4.x     |
| 3.2                  | 55, 57 – 59                 | 2.2 – 2.4, 3.x – 5.x     |
| 3.3 – 3.5            | 55, 57 – 60                 | 2.2 – 2.4, 3.x – 6.x     |
| 3.6 – 3.7.5          | 55, 57 – 61                 | 2.2 – 2.4, 3.x – 7.x     |
| 3.7.6 – 3.7.8        | 55, 57 – 62                 | 2.2 – 2.4, 3.x – 8.x     |
| 3.7.9, 4.0 and later | 55, 57 – 63                 | 2.2 – 2.4, 3.x – 9.x     |

Notes:

* Use a **shared** build of FFmpeg (one that includes `.dll`, `.dylib` or `.so` library files). Static builds contain only `ffmpeg.exe`/`ffmpeg` and won't work with Audacity. This also applies if you [compile FFmpeg yourself](https://trac.ffmpeg.org/wiki/CompilationGuide): build it as shared, from a release your Audacity supports.
* Install the whole FFmpeg package, not only the avformat file. Audacity also needs the matching avcodec and avutil libraries next to it.
* Development (master/"git") builds of FFmpeg aren't supported. Use a numbered release.
* FFmpeg must match the **architecture** of Audacity: x64 (Intel/AMD) Audacity needs x64 FFmpeg, and ARM64 Audacity needs ARM64 FFmpeg.

{% tabs %}
{% tab title="Windows" %}
#### Recommended installer

1. Download the FFmpeg installer from [lame.buanzo.org/ffmpeg.php](https://lame.buanzo.org/ffmpeg.php). It's a community-maintained installer built for Audacity. For most computers, the 64-bit (x64) version is the right one.
2. Run the installer and follow its steps. You can ignore the "unknown publisher" warning. By default, FFmpeg is installed to `C:\Program Files\FFmpeg for Audacity`.
3. Restart Audacity.

Audacity should now detect FFmpeg automatically. To check, go to **Edit > Preferences > Libraries**: **FFmpeg Library Version** should show a version number.

#### Installing using WinGet

The same installer is also available through WinGet:

```powershell
winget install --id=Buanzo.FFmpegforAudacity -e
```

#### Windows on ARM

The recommended installer is x64 only. If you use the x64 build of Audacity on an ARM device, the x64 installer works. If you use a native ARM64 build of Audacity, download an ARM64 **shared** build from [tordona/ffmpeg-win-arm64](https://github.com/tordona/ffmpeg-win-arm64) and follow the **Manual installation** steps below.

#### Other FFmpeg builds

If you prefer to install FFmpeg yourself, download a **shared** release build (not a static or master build) that matches your Audacity version (see the table above):

* [BtbN/FFmpeg-Builds](https://github.com/BtbN/FFmpeg-Builds/releases): pick a file named like `ffmpeg-n8.1-latest-win64-gpl-shared-8.1.zip`.
* [gyan.dev](https://www.gyan.dev/ffmpeg/builds/#release-builds): pick a `full_build-shared` release.

Unzip the archive, then follow the **Manual installation** steps below. The library files are in the `bin` folder.

{% hint style="info" %}
Different FFmpeg builds have different codecs enabled. For example, AMR narrowband import/export isn't included in the recommended installer, but it is included in the "full" builds from gyan.dev.
{% endhint %}

#### Manual installation

If you installed FFmpeg from another source or to a different location, tell Audacity where to find it:

1. Go to **Edit > Preferences > Libraries**.
2. Click **Locate...**.
3.  If a **Success** message says Audacity has already detected FFmpeg, click **No**. You're done.

    If this message doesn't appear, continue with the next step.
4. In the **Locate FFmpeg** dialog, click **Browse...** and select the `avformat-XX.dll` file (for example `avformat-61.dll`) in the folder where you installed or unzipped FFmpeg. In downloaded ZIP builds, it's in the `bin` folder.
5. Click **Open**, then **OK**, then **OK** again to close Preferences.
{% endtab %}

{% tab title="macOS" %}
#### Recommended installer

This is a universal installer: it works on both Apple silicon and Intel Macs. It requires macOS 12 (Monterey) or newer.

1. Download FFmpeg for macOS from [lame.buanzo.org/ffmpeg.php](https://lame.buanzo.org/ffmpeg.php).
2. Open the downloaded `.pkg` file and follow the steps in the installer.\
   _&#x4F;n some Macs the installer may seem stuck on "Validating packages". This is normal. Wait for it to finish._
3. If Audacity was open, restart it.

Audacity should now detect FFmpeg automatically. If it doesn't, follow the **Manual installation** steps below.

#### Installing on older macOS (Big Sur or earlier)

For macOS 10.11 (El Capitan) to 11 (Big Sur), use the legacy installer. This only applies to Audacity 3.x and earlier, because Audacity 4 requires macOS 13 (Ventura) or newer.

1. Download [ffmpeg\_64bit\_osx.pkg](https://lame.buanzo.org/ffmpeg_64bit_osx.pkg) from lame.buanzo.org.
2. Open the `.pkg` and follow the installer steps.
3. Restart Audacity. It should detect FFmpeg automatically.

This installer is Intel only, so you need the **x86\_64** (Intel) Audacity download.

{% hint style="warning" %}
The legacy FFmpeg build is not supported and can cause crashes (for example, when exporting AAC). Use it at your own risk.
{% endhint %}

#### Homebrew

If you use [Homebrew](https://brew.sh/), you can install FFmpeg in Terminal with:

```bash
brew install ffmpeg
```

Restart Audacity. It looks for FFmpeg in the default Homebrew locations (`/opt/homebrew/lib` on Apple silicon, `/usr/local/lib` on Intel), so it should be detected automatically.

{% hint style="info" %}
Homebrew no longer provides ready-made (bottled) FFmpeg packages for Intel Macs. On an Intel Mac, `brew install ffmpeg` compiles FFmpeg from source, which takes a long time and may fail. Use the **Recommended installer** instead.
{% endhint %}

{% hint style="warning" %}
Homebrew installs the newest FFmpeg release, which may be newer than your Audacity supports. Check your installed version with `brew info ffmpeg`, then compare it with the table at the top of this page.

If Audacity doesn't detect it, update Audacity first. If you can't, install an older, versioned formula instead, for example:

```bash
brew install ffmpeg@7
```

Versioned formulae aren't linked into the default location, so Audacity won't find them automatically. Use **Manual installation** below and browse to `/opt/homebrew/opt/ffmpeg@7/lib`. Run `brew search ffmpeg@` to see which versions are available.
{% endhint %}

#### Manual installation

If you installed FFmpeg from another source or to a different location, tell Audacity where to find it:

1. Go to **Audacity > Preferences > Libraries**.
2. Click **Locate...**.
3.  If a **Success** message says Audacity has already detected FFmpeg, click **No**. You're done.

    If this message doesn't appear, continue with the next step.
4. In the **Locate FFmpeg** dialog, click **Browse...** and select the `libavformat.XX.dylib` file (for example `libavformat.61.dylib`). Files from the recommended installer are named `ffmpeg.XX.64bit.dylib` and are in `/Library/Application Support/audacity/libs`.\
   _&#x54;ip: In the file dialog, press **Cmd+Shift+G** to type a folder path directly._
5. Click **Open**, then **OK**, then **OK** again to close Preferences.

#### Troubleshooting

* **Architecture mismatch (most common on Apple silicon).** Apple silicon (arm64) Audacity needs arm64 FFmpeg, and Intel (x86\_64) Audacity needs x86\_64 FFmpeg. To check a library, run `file /path/to/libavformat.XX.dylib` in Terminal.
* **FFmpeg version too new.** Compare your FFmpeg version with the table at the top of this page, then update Audacity or install an older FFmpeg.
{% endtab %}

{% tab title="Linux" %}
#### Install with your package manager

On most distributions, you can install FFmpeg with your package manager:

<table><thead><tr><th width="194">Distribution</th><th>Command</th></tr></thead><tbody><tr><td>Debian, Ubuntu, Pop!_OS, Mint</td><td><code>sudo apt install ffmpeg</code></td></tr><tr><td>Fedora, RHEL, CentOS Stream</td><td><p>First enable the <a href="https://rpmfusion.org/Configuration">RPM Fusion repository</a>, then replace Fedora's reduced-codec build with the full one:</p><p><code>sudo dnf swap ffmpeg-free ffmpeg --allowerasing</code></p></td></tr><tr><td>Arch, Manjaro</td><td><code>sudo pacman -Syu ffmpeg</code></td></tr></tbody></table>

Restart Audacity. It will try to detect FFmpeg automatically.

{% hint style="warning" %}
**Rolling and very new distributions** may ship an FFmpeg that's newer than your Audacity supports (see the table at the top of this page). If FFmpeg isn't detected, update Audacity first. If that doesn't help, you may need to build a supported FFmpeg version [from source](https://ffmpeg.org/download.html#releases) as a **shared** library and point Audacity to it using the steps below.
{% endhint %}

{% hint style="info" %}
**Flatpak and Snap:** These Audacity packages already include FFmpeg, so you don't need to install it. They run in a sandbox and can't use the FFmpeg installed on your system, so installing, updating or removing the system `ffmpeg` package has no effect on them, and **Locate...** won't work with system libraries either.

* **Snap:** FFmpeg comes with the snap and from the `ffmpeg-2404` package, which Snap installs automatically.
* **Flatpak:** FFmpeg comes from the Flatpak runtime.

To see which FFmpeg version your package uses, go to **Edit > Preferences > Libraries**. If you need a different FFmpeg version, use the AppImage from the [Audacity download page](https://www.audacityteam.org/download/) or your distribution's Audacity package instead.
{% endhint %}

#### Manual installation

If FFmpeg wasn't detected, tell Audacity where to find it:

1. Go to **Edit > Preferences > Libraries**.
2. Click **Locate...**.
3.  If a **Success** message says Audacity has already detected FFmpeg, click **No**. You're done.

    If this message doesn't appear, continue with the next step.
4. In the **Locate FFmpeg** dialog, click **Browse...** and select the `libavformat.so.XX` file (for example `libavformat.so.61`). On most distributions, it's in `/usr/lib`, `/usr/lib64` or `/usr/lib/x86_64-linux-gnu`.
5. Click **Open**, then **OK**, then **OK** again to close Preferences.
{% endtab %}
{% endtabs %}
