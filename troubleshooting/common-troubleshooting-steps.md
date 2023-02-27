# Common troubleshooting steps

## Rescan audio device

Audacity does not automatically update the devices list when you plug in or unplug a device. Go to **Transport > Rescan audio devices** to update the list of outputs.

## Privacy permissions

Some operating systems may block access to the microphone for untrusted apps. You need to allow microphone access for Audacity in order to record.&#x20;

{% tabs %}
{% tab title="Windows" %}
1. Open **Settings**
2. Go to **Privacy** or **Privacy & Security**
3. Go to **Microphone**
4. Toggle on **Microphone Access**, **Allow apps to access your microphone**, and, if available, **Let desktop apps access your microphone**
{% endtab %}

{% tab title="MacOS" %}
1. On your Mac, choose **Apple menu > System Preferences** then click **Security & Privacy** in the left-hand menu and the click the **Privacy** tab.
2. Click **Microphone** in the left-hand menu.
3. Select the checkbox next to an application (Audacity) to allow it to access the microphone.
{% endtab %}

{% tab title="Linux" %}
If you have installed Audacity as a Snap or Flatpak, you may need to go to the System settings > Application settings
{% endtab %}
{% endtabs %}

## Enable the microphone

Your operating system may disable the microphone in general. You need to enable it in order to record.&#x20;

{% tabs %}
{% tab title="Windows" %}
1. Open the **Sound** control panel and select the **Recording** tab
2. Make sure that **Show Disabled Devices** is selected
3. Look for your microphone and **Enable** it

![Enabling Microphone using Windows Sound control panel](<../.gitbook/assets/Recording #3.gif>)

After enabling your microphone use the Audacity **Transport - Rescan Audio Devices** option to update the list of available devices.
{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

## Update sound device drivers and firmware

It is recommended to update drivers for audio devices you are using.  The way to do that depends on the specific device but in general it is recommended to visit the manufacturer support website.

Some audio devices install a complementary application that provides options to check for firmware and driver updates.&#x20;

#### Using Windows Device Manager

Windows users can try to manually update drivers using **Device Manager**, before looking for drivers on the Internet. This is easiest, but may not necessarily find the latest or most appropriate drivers.

* **Windows 10 / Windows 11**: Right click the **Start** button and select **Device Manager**
* **Windows 8 / Windows 7 / Windows Vista:** Click Start > Control Panel then using the "Category" view, click "Hardware and Sound", find "Devices and Printers" near the top of the screen then click on "Device Manager" (the last item in the list underneath). "Icons" views have a direct link to Device Manager, as does "Classic View" on Windows Vista only.

Then expand **Sound, video and game controllers** by clicking on the + sign, right-click over the sound device and click **Update driver**.

![Using Device Manager to manually update drivers for an audio device](<../.gitbook/assets/Device Manager - Manually update driver.png>)

After the update (even if more recent drivers were not found), you should right-click over the device again, click Properties and then on the Driver tab to check the "Driver Provider". You don't want drivers from Microsoft - in most cases these are only generic drivers, not specifically matched to your hardware. This often leads to problems such as not being able to select the correct input, or recordings not being made correctly. These must be replaced with drivers made by the manufacturer of your hardware, so they are correctly matched to that hardware.

If you have now got updated non-Microsoft drivers, try them and see if your recording problem is solved.

## Check physical connections

Use the **Recording Meter** **Toolbar** to check the audio level that Audacity is receiving from the selected **Recording Device**.  Click on the toolbar to Start/Stop monitoring the audio level.

![Recording Meter Toolbar displaying the audio level for a microphone](<../.gitbook/assets/Recording Meter Toolbar.png>)

If there is no level present on the meter you could check if your device provides some physical  control to mute or set the audio level.

![USB Sound Card with Microphone Mute and Level controls](<../.gitbook/assets/USB Sound Card Microphone mute control (1).jpg>)

![USB Interface with Microphone and Instrument gain controls](<../.gitbook/assets/USB Interface Gain Control.jpg>)

If the controls on your device are properly set you should check the connections between the computer and the recording device.

## WASAPI and USB devices

Due to a Windows limitation, you cannot use WASAPI on a USB device while listening back on an onboard audio card. Use MME or DirectSound instead, or use the USB device for both the input and output (if possible).
