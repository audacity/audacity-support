# Creating custom themes

Audacity supports themes via files called ImageCache.png which can be shared and installed by users.

{% hint style="info" %}
**Note:** It is recommended to only use the ImageCache.png to _distribute_ themes, not to author them. This is due to the ImageCache breaking whenever buttons are added or removed from Audacity, which may happen more often in the coming releases.
{% endhint %}

## Creating a custom theme from source

Audacity stores the source files for the built-in themes in [`libraries/lib-theme-resources/`](https://github.com/audacity/audacity/tree/master/libraries/lib-theme-resources) as a group of individual files.

To create a custom theme out of this, use the following steps:

### Set up a build environment

1. get a copy of the audacity source and set up a build environment. Details can be found in [BUILDING.md](https://github.com/audacity/audacity/blob/master/BUILDING.md).

### Set up a new theme

{% hint style="info" %}
Note: You may skip steps 2-6 and edit an existing theme directly. However, making a new theme is beneficial if you want to create multiple new themes and/or maintain them across multiple versions of Audacity.&#x20;
{% endhint %}

2. Copy an existing theme folder in lib-theme-resources to create a base for your own theme and rename it with your theme name (for this example, `Yourtheme`).
3. Replace all relevant files with your own themed versions. Some files found in the sources are no longer (or not yet) used in current versions of Audacity.\
   Note: Make sure to use an editor that's capable of handling transparencies - MSPaint will not work. Additionally, make sure to not resize any images.
4. Create a copy of ClassicThemeAsCeeCode.cpp and edit it:

```cpp
static const std::vector<unsigned char> ImageCacheAsData {
// Include the generated file full of numbers
#include "YourthemeThemeAsCeeCode.h"
};

static ThemeBase::RegisteredTheme theme{
   /* i18n-hint: the name of a theme */
   { "Yourtheme", XO("Your theme") }, PreferredSystemAppearance::Light, ImageCacheAsData
                                   //PreferredSystemAppearance can be Light, Dark, and HighContrastDark. 
                                   //It gives a hint to the OS what kind of theme you'd prefer for the 
                                   //system-native buttons, but usually is ignored.
};
```

5. Open lib-theme-resources' CMakeLists.txt file and add your theme like the others:

```cmake
foreach( pair
   "classic;ClassicThemeAsCeeCode"
   # ...
   "yourtheme;YourThemeAsCeeCode"

# ...

set( SOURCES
   ClassicThemeAsCeeCode.cpp
   ClassicThemeAsCeeCode.h
   # ...
   YourthemeThemeAsCeeCode.cpp
   YourthemeThemeAsCeeCode.h
```

6. In `libraries/lib-theme/Theme.cpp`'s function `GUITheme()`, add your theme to the list:

```cpp
     static const Identifier names[] = {
         "classic", "light", "dark", "high-contrast", "yourtheme"
      };
```

### Enable experimental theming options

7. In src/Experimental.cmake, uncomment the THEME\_PREFS flag (remove the `#` before `THEME_PREFS`):

```cmake
   #August 2009 - Theming not locked down enough for a stable release.
   # This turns on the Theme panel in Prefs dialog. It is independent of THEMING.
   THEME_PREFS
```

8. Compile and run Audacity.

### Export the ImageCache.png

9. Open the preferences.
10. Press OK and restart Audacity.
11. You'll see an experimental option called Theme:\
    ![image](https://user-images.githubusercontent.com/87814144/204311961-b2faea23-1784-4616-9141-2a04073353ef.png)\
    From here, you can do various things. Most importantly, "**Save Theme Cache**" creates the **ImageCache.png** you can share with other people. It will be stored in the Theme folder of the Audacity settings (ie %appdata%\Audacity if on Windows).

### Updating a custom theme

To update an existing theme to work with a new version, you'll need to pull the latest `master` from the `audacity/audacity` repo.

Once you have updated your fork, simply build Audacity again and export the ImageCache.png again (steps 8-11).

#### Updating Audacity from git

&#x20;In your Github fork, there usually is a button for this:

<figure><img src="../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

Alternatively, you can use git for this. Depending on your setup, it is likely to be one of the following

```
//this should work if you are using a github fork
git pull upstream master 

//this should work if you cloned the audacity repo without forking
git pull origin master 

//or, if neither works, add a remote and pull from there
git remote add upstream https://github.com/audacity/audacity.git
git fetch upstream
git pull upstream master
```

## Editing the ImageCache.png directly

If you want to avoid the dance described above, you can also edit the ImageCache.png directly. A copy for the version found in 3.2.x can be found below.

[3.2.0 imagecache.zip](https://github.com/audacity/audacity/files/10104404/3.2.0.imagecache.zip)

But again, the version of the ImageCache in above ZIP will likely only work for one version of Audacity.

## For users

Our [help pages](https://support.audacityteam.org/basics/customizing-audacity/using-themes) contain info on how to use custom themes as a user.
