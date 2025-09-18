---
description: >-
  Information regarding deployment and compliance for Audacity in schools,
  businesses, institutions and enterprises
---

# Info for System Administrators

## Deployment

Audacity does not come with any group policies or installers intended for institution-scale deployment at this time. However:&#x20;

* Audacity is distributed through WinGet. You may be able to incorporate a [WinGet config file ](https://learn.microsoft.com/en-us/windows/package-manager/configuration/)into your deploy script.
* Audacity doesn't require installation; the standalone ZIP can simply be copied anywhere.&#x20;

## Compliance

### Accessibility

Audacity is largely accessible. A usage guide can be found in the sidebar; a VPAT document can be found at [audacityteam.org/VPAT](https://audacityteam.org/VPAT).

### Privacy

Audacity by default only collects minimal data for update checking and crash reporting; details can be found in the [privacy policy](https://www.audacityteam.org/desktop-privacy-notice/). Audacity's data is stored in the Netherlands; the **only personal data stored is a UUID** (which can be turned off in the preferences). This also is true for the [AI plugins ](https://www.audacityteam.org/download/openvino/)- those process all data on your own device, without sending them to some cloud server (hence why the installer downloads so much stuff).

In addition, it has an Audio.com ([privacy policy](https://audio.com/legal/privacy-notice.pdf)) integration which needs explicit user action (sign up) to activate.&#x20;

### Disabling features via preferences

Both features can be turned off in preferences:&#x20;

* To disable update checking, go to **Preferences -> Application** and disable the relevant checkboxes.
* To disable Audio.com features, go to **Preferences -> Modules** and disable mod-cloud-audiocom.

{% hint style="info" %}
Note: Audacity's Preferences are stored per-user by default. If you'd like to set global settings or reset the state after logoff, create a folder called `Portable Settings` in the same directory as the executable (audacity.exe).  Make sure that Audacity has read/write rights.
{% endhint %}

### Permanently disabling features

You can compile Audacity from source with certain features disabled. You can download the source code from [audacityteam.org/download](https://www.audacityteam.org/download/). Compilation instructions are included within each source's BUILDING.md file. By default, no network features are enabled when compiling from source.&#x20;

{% hint style="info" %}
Note: You may also be able to delete library (.dll) files from Audacity's binary, eg `mod-cloud-audiocom.dll`. This only works for modules though.&#x20;
{% endhint %}

### The paperwork option

If you need a special compliance form or contract filled out to use Audacity, please follow these steps:&#x20;

1. Read through the compliance form you need filled out. You may find that freely distributed open source software is exempt from the paperwork.&#x20;
2. Pre-fill the form as best you can, keeping in mind the minimal data Audacity collects. If you need help, check with your own compliance officer - In general its your organization that knows best what is or isn't permissible. Audacity's legal entity is MuseCY SM Ltd., Spyrou Kyprianou 84, 4004 Cyprus
3. Send the pre-filled form to [**privacy@audacityteam.org**](mailto:privacy@audacityteam.org).&#x20;

In general, the more complete the form, the faster we can respond.

{% hint style="info" %}
If you can, try finding a "tag-along" contract you can add yourself to. We currently have signed a Student Data Privacy Agreement with the Springfield School District No. 186 in Illinois, which other LEA can subscribe to.
{% endhint %}
