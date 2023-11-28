---
description: Convert older EQ presets to use in current Audacity
---

# EQ XML to TXT converter

## Download and installation

First, download the plugin below:

{% file src="../../.gitbook/assets/EQ xml to txt.ny" %}
Downlaod link
{% endfile %}

Then install the plugin in Audacity via **Tools -> Nyquist Plugin Installer** and restart Audacity. Detailed steps are available at [https://support.audacityteam.org/basics/customizing-audacity/installing-plugins#installing-nyquist-plugins](https://support.audacityteam.org/basics/customizing-audacity/installing-plugins#installing-nyquist-plugins)&#x20;

## Using the converter

Once installed, the converter appears in **Tools -> EQ XML to TXT Converter**.

<figure><img src="../../.gitbook/assets/image.png" alt=""><figcaption><p>Screenshot</p></figcaption></figure>

To use it,

1. Select the target EQ effect. Curves to be imported can be either for [Filter Curve EQ](https://manual.audacityteam.org/man/filter\_curve\_eq.html) effect or [Graphic EQ](https://manual.audacityteam.org/man/graphic\_eq.html) effect but _not_ both.
2. Select your source XML file.
3. (optional) select what should happen if the file exists already
4. Click OK.&#x20;

The TXT file now is in the same location as the source XML file.

You now can import the TXT file via Filter Curve EQ or Graphic EQ -> **Presets and settings -> Import...**
