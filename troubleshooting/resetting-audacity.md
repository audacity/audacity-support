# Resetting Audacity

## Resetting from within Audacity

You can reset Audacity by going to the following menus:&#x20;

* To reset the toolbars only: **View -> Toolbars -> Reset Toolbars**
* To reset everything: **Tools -> Reset Configuration**

## Purging the settings folder

If you cannot open Audacity or want a more thorough cleanup, you can also delete the configuration files manually. They can be found in the following locations:

* Windows: `C:\Users\<yourname>\AppData\Roaming\audacity\`
* macOS: `~/Library/Application Support/audacity/`
* Linux: `~/.config/audacity/`\
  Additionally, the XDG folders `~/.cache/audacity`, `~/.local/share/audacity` and `~/.local/state/audacity` are used on Linux.

{% hint style="info" %}
**Hint:** These folders usually are hidden by default. You may need to show hidden files, or access their path directly, to access them.
{% endhint %}

You can delete all contents of the folder to get Audacity back to "factory settings". Alternatively, you can also only delete certain elements of it:&#x20;

* **audacity.cfg** is responsible for all preferences
* **pluginregistry.cfg** contains a registry of all plugins and whether they can be used.&#x20;
* **pluginsettings.cfg** contains last used settings of effects as well as user presets.

Additionally, you may find some other files and folders there, eg. for macros, custom themes or plugins. These can also be deleted though, typically deleting the audacity.cfg and pluginregistry.cfg is enough in most troubleshooting scenarios.
