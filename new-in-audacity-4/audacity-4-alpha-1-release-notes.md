# Audacity 4 Alpha 1 release notes

The first alpha version of Audacity 4 is intended as an early preview and feedback opportunity on some core interactions we have designed.&#x20;

{% hint style="warning" %}
Audacity 4 alpha 1 is not yet published.
{% endhint %}

## What am I testing in this build?

The purpose of this early-stage alpha release is to provide a build for our community so they can test core aspects of Audacity’s functionality. This will greatly help us spot issues and refine the experience. When reporting issues, please keep them limited to these six areas. \


* Recording & playback
* Editing audio
* Applying destructive and realtime effects
* Exporting projects and audio files
* Customising the interface to your liking
* Anything related to the interface (dialogs, popups, entering text values, viewing on multiple monitors, etc.)

## We want your feedback

We really value your feedback at this stage - it directly shapes Audacity 4’s development

* [Audacity 4 forum](https://forum.audacityteam.org/c/au4/64)
* [Github issues](https://github.com/audacity/audacity/issues)
* [Audacity Discord](https://discord.gg/audacity)

## New features & improvements in Audacity 4

* A new interface
* Multiple colour theming options
* Multiple clip visualisation options
* When working with the ‘modern’ clip style, you can change the colour of clips as well as tracks
* A new Customise toolbar widget, accessible via the ‘cog’ icon on the far right of the top bar
* A new Workspaces feature, which can be used to save different layouts of the interface
* A persistent playhead
* Clips can be moved around freely - no longer obstructed by other clips
* Recording can be initiated from any position in the timeline
* Multiple clips can be selected and edited at the same time
* When full clips are selected by clicking on their header, drag handles appear that allow them to be trimmed or time-stretched
* Multiple clips can be grouped together. This feature can be found by selecting the ‘...’ icon on the clip header, or by right-clicking on selected clips
* A new split tool for splitting clips quickly. You can toggle this feature by pressing the S key. If you hold the S key down, the feature will be temporarily enabled until you release the S key
* New settings & shortcuts for ‘ripple’ editing, which allow you to delete and paste clips, whilst preserving synchronisation across your project. Along with our grouping feature, this is intended as a replacement to the ‘Sync-lock’ feature found in Audacity 3. The new shortcuts for ‘ripple editing’ can be found in Preferences > Shortcuts
* Tools like the Selection, Multi, and Draw functions are now built directly into the main workflow, eliminating the need for separate buttons. For example, when you zoom in to the sample level, the Draw tool activates automatically. As a result, the Selection and Multi tools are no longer required, since all their features are always available by default. This streamlines the interface by reducing complexity without sacrificing functionality.
* The looping feature has been improved.

## Missing features in Alpha 1

These features are currently in development and will be included in the main release of Audacity 4.0

* Macros
* Spectrogram
* Label tracks
* Label track editor
* Metadata editor
* The plugin manager
* Cloud uploading
* OpenVino plugin support
* Numerous native Audacity effects
* The ‘Envelope’ tool
* Various other tools and commands (these items are disabled in the build)

## System requirements

Audacity 4 has higher system requirements than Audacity 3, mostly due to [Qt's platform support](https://doc.qt.io/qt-6/supported-platforms.html). We expect Audacity 4 Alpha 1 to work on the following platforms:&#x20;

* Windows 10 & 11 (x64, but not ARM yet)
* macOS 12 and later
* Linux: Ubuntu 22.04, RedHat 8.6, openSUSE 15.6, Debian 11.6 and later

