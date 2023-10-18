# Installing plugins

You can download various plugins here:

{% content-ref url="http://127.0.0.1:5000/o/-MhmG2mhIIHTtQPuHV_k/s/klCVENFte0GRy5IqVz0W/" %}
[Audacity Plugins](http://127.0.0.1:5000/o/-MhmG2mhIIHTtQPuHV\_k/s/klCVENFte0GRy5IqVz0W/)
{% endcontent-ref %}

Most plugins get automatically activated once you install them on your system.

{% hint style="warning" %}
**Caution:**

* 64-bit Audacity can only run 64-bit plugins, and 32-bit Audacity can only run 32-bit plugins.
* Additionally, Apple Silicon (arm64) Audacity cannot run Intel (x86-64) plugins and vice versa.
* "Instrument" versions of plugins (VSTi, LV2i) are not supported.
{% endhint %}

## Manually installing plugins

If a plugin doesn't get found by Audacity, or doesn't come with an installer, move the plugin files to one of the following locations:

{% tabs %}
{% tab title="Windows" %}
You can access the Common Files folder quickly by hitting `🪟 WINDOWS key + R` to launch Run and typing `%ProgramFiles%\Common Files`

* VST2: `C:\Program Files\Common Files\VST2` or `C:\Program Files\Steinberg\VSTPlugins`
* VST3: `C:\Program Files\Common Files\VST3`
* LV2: `C:\Program Files\Common Files\LV2`\
  **Note:** Always copy the complete .lv2 _folder_
* LADSPA: `C:\Users\<username>\Appdata\Roaming\audacity\Plug-ins\` **Note:** You can quickly access this folder by hitting `🪟 WINDOWS key + R` to launch Run and typing `%AppData%\audacity\Plug-ins`
* Vamp: `C:\Program Files\Vamp Plugins\`
* Nyquist: See below
{% endtab %}

{% tab title="macOS" %}
All Plugins can be installed per-user (`~/Library/Audio/Plug-Ins/...`) or system-wide (`/Library/Audio/Plug-Ins/...`). In following, only the system-wide path is named

* Audio Unit: `/Library/Audio/Plug-Ins/Components/`
* VST2: `/Library/Audio/Plug-Ins/VST/`
* VST3: `/Library/Audio/Plug-Ins/VST3/`
* LV2: `~/.lv2` or `/Library/Audio/Plug-Ins/LV2`,\
  **Note:** always copy the entire .lv2 _folder_
* Vamp: `/Library/Audio/Plug-Ins/Vamp`
* Nyquist: See below
{% endtab %}

{% tab title="Linux" %}
* LV2: `~/.lv2`, `/usr/local/lib/lv2` (for 32-bit) or `/usr/local/lib64/lv2` (for 64-bit)\
  **Note**: Always copy the entire .lv2 _folder_
* VST2: `~/.vst` or `/usr/local/lib/vst`\
  **Note**: Many VST effects are Windows-only
* VST3: `~/.vst3` or `/usr/local/lib/vst3`
* LADSPA: `~/.ladspa` or `/usr/local/lib/ladspa`
* Vamp: `~/.vamp` or `/usr/local/lib/vamp`
* Nyquist: See below
{% endtab %}
{% endtabs %}

## Installing Nyquist plugins

To install a Nyquist Plugin, follow these steps:

1. Download the plugin(s) in question.
2. Open Audacity, and go to **Tools > Nyquist Plugin Installer**
3. Click **Browse** and locate your downloaded plugin(s)
4. Click **Open,** then **Apply** and finally **OK**.
5. Restart Audacity.
6. The plugin should now be available in the corresponding Generate, Effect or Analyze menu.

## Deactivating and re-activating plugins

1. Go to **Tools > Plugin Manager**
2. Select the plugins or effects you want to deactivate
3. Click **Disable**.
4. To re-enable a plugin, select them and click **Enable**.
5. Click **OK** to close the **Plugin Manager** and save your settings.
