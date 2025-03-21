# Codebase overview

Audacity 4's codebase consists of 3 main parts: Audacity 3 code invoked through a wrapper, Audacity 4 code, and the Muse Framework.

Audacity 3 code in the main `au3/` folder is unused; it's merely kept to make copypasting bits into the active `src/` somewhat more easy. Active Audacity 3 code may be found in some subdirectories of `src/`.&#x20;

Muse Framework code is not part of the Audacity repo, and can be found [here ](https://github.com/musescore/framework_tmp)(or eventually [here](https://github.com/musescore/muse_framework)). It provides elements common to Audacity and MuseScore Studio, most notably low-level functionality, buttons and graphics, the preferences system, and things like that. At the time of writing, active development of the framework happens in the musescore/musescore repo, with updates to the framework repo being extracted from there - though this will change soon, probably.

{% hint style="info" %}
Architectural information on the Muse Framework can be found at the [framework's Github wiki.](https://github.com/musescore/muse_framework/wiki/Architecture-bricks)&#x20;
{% endhint %}

Audacity 4-specific code can be found in [`src/`](https://github.com/audacity/audacity/tree/master/src). On a high level, it is structured as follows:

## Contents of src/

* `app/` contains the base of the program, including default configurations and theme configuration.
* `appshell/` contains various dialogs and pages, such as the preferences.
* `au3audio/` contains the PortAudio-based audio engine found in Audacity 3. It is scheduled for replacement with a new engine.
* `au3wrap/` contains the wrapper for old Audacity 3 code. You'll find au3/ subdirectories in various other places, this is what makes it run within Audacity 4.
* `context/` contains the different contexts actions can exist in.
* `effects/` contains effects and plugin implementations.
* `importexport/` contains importing and exporting code.
* `playback/` contains everything needed for playback, including device configuration and meters.
* `project/` contains code related to the project itself, so anything that loads/writes to/modifies AUP3 files.
* `projectscene/` contains all of the stuff needed to show what a project contais - clips, tracks, etc.
* `record/` contains everything needed for recording.
* `trackedit/` contains everything related to editing and modifying audio clips and tracks.

### Internal structure

The directories in src/ contain subdirectories with some separation of concerns:&#x20;

* `internal/` contains the internal calculations, often only displaying
* `qml/` contains QML files - ie layouts for various components.
* `tests/` contains unit tests. New code should have at least 80% unit test coverage.&#x20;
* `types/` contains custom types and data structures needed in that area
* `view/` contains the things data which should be displayed by the QML above.

{% hint style="info" %}
Note: In addition to this separation of concerns, Audacity also uses the Model-View-Controller model.
{% endhint %}

