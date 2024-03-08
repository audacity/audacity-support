---
description: Learn about causes and fixes for this error.
---

# Error code=12: cannot allocate memory (macOS)

## Causes

This is caused by an unexpected system state. Specifically, macOS typically allows allocation of 32 instances of shared memory, out of which Audacity requires one to start. However, other apps on your computer may have filled up these allocations, in which case Audacity cannot start.

## Fixes

* **Rebooting the computer** generally resolves it as it clears the shared memory.
* You also can edit the macOS kernel to allow for more shared memory, but this is a very technical process. Essentially, various shared memory limits need to be increased. [This thread](https://forums.developer.apple.com/forums/thread/669625) (Catalina) or [this post](https://github.com/audacity/audacity/issues/5983#issuecomment-1954253824) (Sonoma) may have further instructions.&#x20;

{% hint style="success" %}
If the troubleshooting steps aren't working for you, feel free to ask in our communities:&#x20;

* [Forum](https://forum.audacityteam.org/)
* [Discord](https://discord.gg/audacity)
{% endhint %}
