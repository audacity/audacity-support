# Introduction to Audacity development

## Unfortunate truths

Audacity is generally not well-suited to newcomers to the open source world. There's many reasons for it:&#x20;

* Audacity is over 20 years old, and the code base is thus generally convoluted and difficult to get into.&#x20;
* Audacity is highly complex as there simply are many things it does.
* The Audacity team is very small, and there isn't much dev manpower to go around to mentor newcomers.
* Audacity is written in C++, which means there's classes of errors (especially regarding memory safety) which you may not be familiar with if you're coming from other languages.

For these reasons and many more, it's **generally not advisable** to come fresh into open source development and start with Audacity. At least, not directly.&#x20;

## Alternatives to Audacity development

While contributing code to Audacity directly is hard, there are several things you can do instead:&#x20;

### **Develop plugins**

Audacity supports many plugin formats (VST2, VST3, LV2, LADSPA, Audio Units, Nyquist, and VAMP).

If you develop a plugin, you'll have to worry about way fewer things than if you were to do the same thing in Audacity directly, while achieving the same result. Head over to the following places to learn more:

* JUCE, a framework for audio effect plugins, using C++: [https://juce.com/learn/tutorials/](https://juce.com/learn/tutorials/)
* Nyquist, Audacity's homebrew plugin format, using a Lisp dialect: [creating-your-own-nyquist-plugins](../developing-your-own-plugins-and-scripts/creating-your-own-nyquist-plugins/ "mention")
* VAMP, a framework for audio analysis plugins, using C++ or Python: [https://www.vamp-plugins.org/develop.html](https://www.vamp-plugins.org/develop.html)

### Contribute non-code

While getting code into Audacity is hard, other efforts are both easier and more impactful to the community. Head over to [https://support.audacityteam.org/community/contributing](https://support.audacityteam.org/community/contributing) to learn more.&#x20;

## Contributing code to Audacity anyway

In very vague terms, the playbook for code contribution probably can look like thus:&#x20;

1. Run into an issue which annoys you. Preferably something small which feels like it should be an easy fix.&#x20;
2. Search the [issue tracker](https://github.com/audacity/audacity/issues) if the bug already is reported. If not, write a report yourself.&#x20;
3. Attempt to fix the bug.&#x20;
4. Test whether the fix actually solves the bug, and if it has unintended side effects. [BUILDING.md](https://github.com/audacity/audacity/blob/master/BUILDING.md) is helpful here to get you a testable build.&#x20;
5. Submit a [PR](https://github.com/audacity/audacity/pulls) on Github with your fix, following the template checklist for the PR.&#x20;
6. Wait for a bit. There typically should be someone taking a look at your PR within a week or so. If not, you can ask on the dev discord - audacityteam.org/devserver.
7. If changes get requested on your PR, try to implement them. If you don't know how to implement them, asking for help is fine (though, as outlined above - mentoring capacities are very limited), but abandoning the PR is equally fine. If the PR gets approved, it will undergo QA and finally, get merged.

{% hint style="info" %}
If you are looking to fix a previously reported bug, there's no need to ask for permission in the bug tracker. Just give it a go and attempt to fix it!&#x20;
{% endhint %}
