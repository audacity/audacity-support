# New features in Audacity 3.0.4

**This page is an overview of prominent new functionality that has been introduced in Audacity 3.0.4**

**Version 3.0.4 is a hotfix release.**

### Contents

Fixed a bug with envelope points, which could multiply uncontrollably and cause Audacity to crash. In particular:

* [#1476](https://github.com/audacity/audacity/issues/1476): Envelope points are multiplied when using Filter Curve EQ or Graphic EQ
* [#1477](https://github.com/audacity/audacity/issues/1477): Filter Curve EQ will crash if there is an envelope point outside of the selection

<figure><img src="../../../../.gitbook/assets/brokenenvelopes.png" alt=""><figcaption><p>Example of the bug. It now is fixed.</p></figcaption></figure>

### Updating from Audacity 2.x to Audacity 3.x

With the release of Audacity 3.0.0 the project file structure of Audacity was changed significantly with the entire project contained in a single unified database file.

If you have already updated to any 3.x version you should already be aware of this.

But if you are updating from any earlier 2.x Audacity version please read **Updating from Audacity 2.x to Audacity 3.x**.

Audacity 3.x can usually open AUP files created in older 2.x.x versions of Audacity, but saving the project in 3.x will prevent it opening again in Audacity versions prior to 3.0.0.

* Note that this will leave behind the old **AUP** file and its associated **\_data** folder which you will probably want to delete to recover disk space.
* Audacity version 3.x should be able to open projects from Audacity 1.1 onwards - but not from 1.0
