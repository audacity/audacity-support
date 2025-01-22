---
description: >-
  Audacity is an easy-to-use, multi-track audio editor and recorder for Windows,
  macOS, GNU/Linux and other operating systems. This page will guide you through
  the download and installation process.
---

# Downloading & installing Audacity

{% tabs %}
{% tab title="Windows" %}
## Installing from the Microsoft Store

You can install Audacity from the [Microsoft Store](https://apps.microsoft.com/store/detail/audacity/XP8K0J757HHRDW).

* Go to the [**Microsoft Store website**](https://apps.microsoft.com/store/detail/audacity/XP8K0J757HHRDW).
* Search for Audacity.
* Once you have found Audacity, click the **Get in Store app** button.\
  ![](<../.gitbook/assets/Microsoft Store Website.png>)
* The Microsoft Store app will open. To install Audacity, click the **Install** button. \
  ![](<../.gitbook/assets/msstore install prompt.png>)
* Next, the Windows installer will ask you to change your system. Click the **Yes** button.\
  ![](<../.gitbook/assets/microsoft windows UAC.png>)

Audacity has been installed and you can open it from the Start menu.

## Installing Audacity from the Internet

* Go to Audacity's download page at [https://www.audacityteam.org/](https://www.audacityteam.org/), then click the site's blue download button.&#x20;
* Once the site has responded, you can click **Run** or **Save**.&#x20;
* If you click the **Save** button, go to your Downloads folder (usually C:\users\your name\Download&#x73;_),_ locate the Audacity installer, and double-click it.
  * If you are using Windows 11, you may be warned that Audacity has not been verified by Microsoft. You should click **Install anyway.**

![Windows 11 warning when running Audacity installer](<../.gitbook/assets/Windows 11 - Microsoft-verified app warning.png>)

* If you click the **Run** button, Windows will automatically start the install process.
* When the Window installer asks you to make changes to the system, click **Yes**.\
  ![](<../.gitbook/assets/microsoft windows UAC.png>)
* Select the language that will be used during installation and click **OK**.

![Select the language to use during the installation](<../.gitbook/assets/Select Setup Language.png>)

* Once Audacity's Welcome page appears, click the **Next** button.

![Welcome page - Click Next](<../.gitbook/assets/Welcome Audacity Setup.png>)

* Next, the **Information** page will describe Audacity's license. This software is published under a version of the GNU General Public License (GPL). Click **Next** to proceed.

![Information page - Links to learn more about Audacity and its license](<../.gitbook/assets/Setup - License.png>)

* The **Select Destination Location** page will allow you to decide whether you will install Audacity in the recommended destination or choose your own location with the **Browse...** button. Click **Next** to continue.

![Select the folder to install Audacity](<../.gitbook/assets/Setup - Select Destination Location.png>)

* The **Select Additional Tasks** page lets you install a shortcut to Audacity in your Desktop. If you have installed Audacity previously, you will have the option to **Reset Preferences.**

![Select if you want to create a shortcut to open Audacity](<../.gitbook/assets/Setup - Additional Tasks.png>)

* Verify the choices you have made in the Audacity installer and click **Install.**

![Verify your choices and click Install](<../.gitbook/assets/Setup - Ready to install.png>)

* It may take some time to complete the setup process.

![Wait until the setup process completes](<../.gitbook/assets/Setup - Extracting.png>)

* When the **Completing the Audacity Setup Wizard** window appears, click **Finish** to close the installer. If you wish, select the **Launch Audacity** checkbox before proceeding.

![Click Finish to close the installer](<../.gitbook/assets/Setup - Completed.png>)
{% endtab %}

{% tab title="macOS" %}
* Go to the download page: [https://www.audacityteam.org/](https://www.audacityteam.org/) and click the blue download button.&#x20;
* If your system prompts you, click **Save**.&#x20;
* The Audacity website will save the Audacity DMG file in your Downloads folder. Next, double-click the DMG file to start the install process.
*   Once the Audacity application icon appears, drag it into the Applications folder (see below). You will need administrator privileges to accomplish this task. _Do not launch Audacity from the DMG folder._&#x20;

    * You may choose to move the Audacity application to any other location.&#x20;

    <img src="../.gitbook/assets/Audacity Install macOS.png" alt="" data-size="original">
* Launch Audacity.app from the Applications folder or from your chosen location.\

*   After Audacity has appeared on your screen, press **OK** to start editing! If you do not wish to see the Welcome window again, you may check the "Don't show this again at start up" prompt.

    <img src="../.gitbook/assets/Mac Welcome Screen.png" alt="" data-size="original">
{% endtab %}

{% tab title="Linux" %}
## Installing Audacity with an AppImage

1. Go to the download page: [https://www.audacityteam.org/](https://www.audacityteam.org/) and click the blue download button.&#x20;
2.  The downloaded AppImage needs to be runnable. To achieve this, **right-click** the file **-> Properties -> Permissions** or run the following command inside your terminal:

    ```
    chmod +x <path to your Audacity.AppImage>
    ```
3. Double-click the AppImage to run Audacity.

{% hint style="warning" %}
**Note:** If you have trouble opening the AppImage, try installing **libfuse2**. Exact steps for various distributions can be found at

[https://github.com/AppImage/AppImageKit/wiki/FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE)
{% endhint %}

## Installing with a package from a repository

Your Linux distribution (for example Ubuntu, Fedora or Debian) may have an Audacity package as part of the repository. Generally, the version from a distribution's repository is _older_ than the latest AppImage but it may be better integrated into your distribution.

Access this version from the Software Center, App Store or similar software on your computer or try the following commands:&#x20;

* Ubuntu, Debian, Pop\_OS!, Linux Mint: `sudo apt install audacity`
* RHEL, Fedora: `sudo yum install audacity`
* Arch Linux: `sudo pacman -Syu audacity`

{% hint style="info" %}
Repository packages are maintained by the community, not by the Audacity Team.
{% endhint %}

## Installing with a Flatpak or Snap

Community-maintained Flatpaks and Snaps are available from [Flathub ](https://flathub.org/apps/org.audacityteam.Audacity)and [Snapcraft](https://snapcraft.io/audacity).&#x20;
{% endtab %}
{% endtabs %}

