---
description: >-
  Translating Audacity is the best way to get involved right in Audacity's UI
  without having to code.
---

# Translating Audacity

Audacity is translated into multiple languages by volunteers across the world.  If you want to  contribute to translation please join the [audacity-translation](https://sourceforge.net/projects/audacity/lists/audacity-translation) mailing list and read the instructions below.

## Using Transifex to translate Audacity

{% hint style="info" %}
Before joining the Audacity project in Transifex please subscribe to the [audacity-translation](https://sourceforge.net/projects/audacity/lists/audacity-translation) mailing list and check the status of the translation you would like to contribute to with others members of the list.
{% endhint %}

You can find and join the Audacity project at [**https://explore.transifex.com/klyok/audacity/**](https://explore.transifex.com/klyok/audacity/)****

* Click the **JOIN THIS PROJECT** button on the right side.
* Select the language you would like to contribute to from the dropdown.
* Click **Join Project** (if the language is **Available to join)** or **Request Language** if the language you want to contribute to is not available yet.

<figure><img src="../../.gitbook/assets/Join Audacity Project Transifex.gif" alt=""><figcaption><p>Select the language you want to translate Audacity to and click <strong>Join Project</strong> or <strong>Request Language</strong></p></figcaption></figure>

Once you have been approved as a translator you will receive a notification by email.  After that you will see the project in your Dashboard and you can start to contribute.

<figure><img src="../../.gitbook/assets/Audacity Project Dashboard Transifex.png" alt=""><figcaption><p>Audacity Project Dashboard in Transifex</p></figcaption></figure>

* Click **Translate** at the top right side
* Select **Audacity** from the **Resource Overview** panel to start editing
* Select the string to translate and type the corresponding translation
* Click **Save Translation** and select the next string to translate.

<figure><img src="../../.gitbook/assets/Recording #57.gif" alt=""><figcaption><p>Use the Transifex Editor to translate strings</p></figcaption></figure>

## Translate Audacity using a standalone application

Audacity uses GitHub and you can explore the available translations at [https://github.com/audacity/audacity/tree/master/locale](https://github.com/audacity/audacity/tree/master/locale)

Each language translation is stored in a PO file. For example it.po is the Italian translation and ko.po is the Korean translation.

{% hint style="info" %}
To download a PO file from GitHub click on the link for the .po file for your language. On the page you come to, right-click the **Raw** button and then select then **Save target** or **Save link as**. Select the location to place the PO file.

Use the wxWidgets [languageinfo.cpp](https://github.com/wxWidgets/wxWidgets/blob/WX\_3\_0\_BRANCH/src/common/languageinfo.cpp) file as a reference to the list of translated languages.
{% endhint %}

These are some programs you can use to edit PO files:

* [poEdit](https://poedit.net/) for Windows, macOS and Linux
* [Lokalize](http://userbase.kde.org/Lokalize) for KDE4
* [Virtaal](http://virtaal.translatehouse.org/index.html) for Windows and macOS (beta version)
* [GNU gettext](http://www.gnu.org/software/gettext/)

{% hint style="info" %}
The following instructions use poEdit 3.1.1 to illustrate the process of translation
{% endhint %}

If there is no translation PO file for your language create a new one using the following steps:&#x20;

* Download the [audacity.pot](https://github.com/audacity/audacity/blob/master/locale/audacity.pot) file from Audacity GitHub
* Open **poEdit** and select **Create new... (Create new translation from POT Template)**
* Select the **audacity.pot** file and click on Open
* **poEdit** will ask you about the Translation Language. Select the language from the dropdown and click OK.
* Select **Translation > Properties...** and verify that the Character option is set to UTF-8 otherwise poEdit will not save any translations with non-English characters.
* Translate each one of the entries using the **Translation** textbox
* Select **File > Save** to save as a PO file.  Select a destination folder and type a name for the file. Click on **Save.  poEdit** will save a .po file plus a .mo file for use in Audacity.

### Update an existing translation of Audacity

{% hint style="info" %}
The following instructions use poEdit 3.1.1 to illustrate the process of translation
{% endhint %}

If you want to update an existing translation

* Download the PO file for your language, for example it.po or open a previously translated PO file from your computer.
* Download the [audacity.pot](https://github.com/audacity/audacity/blob/master/locale/audacity.pot) file from Audacity GitHub
* Open **poEdit** and select **Browse files (Open and edit translation files)**
* Select the existing PO file for your language and click on Open
* Select **Translation > Update from POT file...** and look for the audacity.pot file you downloaded previously.  This will update your PO file with the latest strings from the downloaded POT file.
* Translate each one of the entries using the **Translation** textbox
* Select **File > Save** to save as a PO file.  Select a destination folder and type a name for the file. Click on **Save.  poEdit** will save a .po file plus a .mo file for use in Audacity.

### Submitting a translation

* **To submit a translation**, please send the completed .po file to the audacity-translation mailing list. A member of Audacity Team will commit the file and send a message to the list confirming this.

### **Test a translation in Audacity**

1. You can get an up-to-date alpha version of Audacity, NOT suitable for production use, but good for checking translations on, in the nightly version: [https://audacityteam.org/nightly](https://audacityteam.org/nightly).  From there, you’ll find there are choices of builds for different platforms. Download the right one for your platform.
2. On **Windows,** open the “Languages” directory inside the unzipped Audacity folder, then open the directory with the same name as your .po file. \
   On **Mac OS X**, right-click or control-click over Audacity.app > Show Package Contents then open the relevant LPROJ directory inside the “Resources” directory. \
   On **GNU/Linux**, open the relevant “locale” directory in usr/share/ or usr/local/share.
3. If creating a new translation, create a new directory for your language using the correct language code from the wxWidgets [languageinfo.cpp file](https://github.com/wxWidgets/wxWidgets/blob/WX\_3\_0\_BRANCH/src/common/languageinfo.cpp). For example, the code for Punjabi is “pa”, so on Windows, create “Audacity\Languages\pa”.
4. Rename the saved **.mo** file to “Audacity.mo”, and paste it into the directory you opened or created.
5. Open Audacity and in **Preferences > Interface**, choose your language and click OK. You should now see your translations.

## **Further information**

* Please read [Translating Audacity](http://wiki.audacityteam.org/index.php?title=For\_Translators) for more tips on translating the Audacity source code, and to learn how the Audacity software is translated.
* [wxWidgets i18n](https://www.wxwidgets.org/about/translations/)
