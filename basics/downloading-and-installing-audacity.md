---
description: >-
  Audacity is an easy-to-use, multi-track audio editor and recorder for Windows,
  macOS, GNU/Linux and other operating systems. This page will guide you through
  the download & installation process.
---

# Downloading & installing Audacity

{% tabs %}
{% tab title="Windows" %}
## Downloading through the Microsoft Store

Audacity is available from the [Microsoft Store](https://apps.microsoft.com/store/detail/audacity/XP8K0J757HHRDW).

* Go to the [**Microsoft Store website**](https://apps.microsoft.com/store/detail/audacity/XP8K0J757HHRDW).
* Click **Get in Store App**.\
  ![](<../.gitbook/assets/Microsoft Store Website.png>)
* The Microsoft Store app will open. Click **Install** to install Audacity.\
  ![](<../.gitbook/assets/msstore install prompt.png>)
* When Windows asks you if the installer may make changes to the system, click **Yes**.\
  ![](<../.gitbook/assets/microsoft windows UAC.png>)

Audacity is now installed. You can start Audacity from the start menu.

## Downloading from the Internet

* Head to the download page: [https://www.audacityteam.org/](https://www.audacityteam.org/) and click the blue download button.&#x20;
* If prompted, click **Run** or **Save**.
* If you clicked Save, head to your downloads, locate the Audacity installer and double-click it.
  * In Windows 11 it is possible that you get a warning about Audacity being a non Microsoft-verified app. Click **Install anyway.**

![Windows 11 warning when running Audacity installer](<../.gitbook/assets/Windows 11 - Microsoft-verified app warning.png>)

* When Windows asks you if the installer may make changes to the system, click **Yes**.\
  ![](<../.gitbook/assets/microsoft windows UAC.png>)
* Select the language to use during the installation and click **OK**.

![Select the language to use during the installation](<../.gitbook/assets/Select Setup Language.png>)

* In the Welcome page click **Next**.

![Welcome page - Click Next](<../.gitbook/assets/Welcome Audacity Setup.png>)

* In the **Information** page you will links to learn more about Audacity and its license. Click **Next** to proceed.

![Information page - Links to learn more about Audacity and its license](<../.gitbook/assets/Setup - License.png>)

* In the **Select Destination Location** page you can select a different folder to install Audacity using the **Browse...** button or simply use the recommended destination. Click **Next** to continue.

![Select the folder to install Audacity](<../.gitbook/assets/Setup - Select Destination Location.png>)

* In the **Select Additional Tasks** page you can choose that the installer adds a shortcut to Audacity in your Desktop.
  * If you have installed Audacity previously you will have the option to **Reset Preferences.**

![Select if you want to create a shortcut to open Audacity](<../.gitbook/assets/Setup - Additional Tasks.png>)

* Verify your choices and click **Install**

![Verify your choices and click Install](<../.gitbook/assets/Setup - Ready to install.png>)

* Wait a few seconds until the setup process completes.

![Wait until the setup process completes](<../.gitbook/assets/Setup - Extracting.png>)

* Click **Finish** to close the installer and **Launch Audacity**

![Click Finish to close the installer](<../.gitbook/assets/Setup - Completed.png>)
{% endtab %}

{% tab title="macOS" %}
* Head to the download page: [https://www.audacityteam.org/](https://www.audacityteam.org/) and click the blue download button.&#x20;
* If prompted, click **Save**.
* Once the download has completed to your Downloads folder, double-click the DMG file to mount it.
*   Drag the Audacity.app icon rightwards onto the "Applications" folder shortcut.

    * You can also drag Audacity out of the DMG to any other location. You need the administrator password to copy Audacity to "Applications".

    <img src="../.gitbook/assets/Audacity Install macOS.png" alt="" data-size="original">
* Launch Audacity.app from /Applications or from your chosen location.\
  **Note:** Do not double-click the "Audacity" icon in the DMG to launch Audacity from there.
*   Once the program has opened press "OK" to start editing!

    * Additionally, you may check the "Don't show this again at start up" prompt.

    <img src="../.gitbook/assets/Mac Welcome Screen.png" alt="" data-size="original">
{% endtab %}

{% tab title="Linux" %}
## Downloading and installing using an AppImage

1. Head to the download page: [https://www.audacityteam.org/](https://www.audacityteam.org/) and click the blue download button.&#x20;
2.  Make the downloaded AppImage runnable.\
    To do this, you can **right-click** the file **-> Properties -> Permissions**\
    or run the following command in the terminal:

    ```
    chmod +x <path to your Audacity.AppImage>
    ```
3. Double-click the AppImage to run Audacity.

{% hint style="warning" %}
**Note:** If you have trouble opening the AppImage, try installing **libfuse2**. Exact steps for various distributions can be found at

[https://github.com/AppImage/AppImageKit/wiki/FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE)
{% endhint %}

## Using a package from a repository

Your Linux distribution (for example Ubuntu, Fedora or Debian) may have an Audacity package as part of the repository. This version is typically _older_ than the latest AppImage, but may be better integrated into your distribution.

To install Audacity through the repository, use the Software Center, App Store or similar software on your computer. Alternatively, you can try the following commands:&#x20;

* Ubuntu, Debian, Pop\_OS!, Linux Mint: `sudo apt install audacity`
* RHEL, Fedora: `sudo yum install audacity`
* Arch Linux: `sudo pacman -Syu audacity`

{% hint style="info" %}
Repository packages are maintained by the community, not by the Audacity Team.
{% endhint %}

## Using Flatpak or Snap

Community-maintained Flatpaks and Snaps are available from [Flathub ](https://flathub.org/apps/org.audacityteam.Audacity)and [Snapcraft](https://snapcraft.io/audacity), respectively.&#x20;
{% endtab %}
{% endtabs %}

