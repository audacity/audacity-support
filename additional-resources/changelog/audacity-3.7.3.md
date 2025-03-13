---
description: Audacity 3.7.3 was released on 13 Mar 2025
---

# Audacity 3.7.3

This is a hotfix release. It contains the following change:&#x20;

* Reverted deleting edges of clips being non-destructive due to a large range of unforseen side-effects.
  * This fixes joining clips becoming offset
  * This fixes cutting always creating new clips
  * This fixes "detach at silences" and "truncate silences" creating a bunch of new clips
