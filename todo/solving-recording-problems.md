# Solving Recording Problems

* [ ] [https://alphamanual.audacityteam.org/man/FAQ:Recording\_-\_Troubleshooting](https://alphamanual.audacityteam.org/man/FAQ:Recording\_-\_Troubleshooting)

## Error opening sound device / Error opening recording device

This error indicates a problem with the hardware, whether it is permissions, drivers, connections, or if you ask the device to do something it cannot do&#x20;

### Privacy permissions

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

### Enable the microphone

Your operating system may disable the microphone in general. You need to enable it in order to record.&#x20;

{% tabs %}
{% tab title="Windows" %}

{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

### Update sound device drivers and firmware



### Check physical connections



### WASAPI and USB devices

Due to a Windows limitation, you cannot use WASAPI on a USB device while listening back on an onboard audio card. Use MME or DirectSound instead, or use the USB device for both the input and output (if possible).&#x20;
