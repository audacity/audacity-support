---
description: >-
  Line up separate recordings in Audacity using a shared clap, then check
  whether they stay in sync.
---

# Synchronizing recordings with claps

When two microphones record the same performance on separate devices, a clap gives you a short, clear sound to find in both recordings. If you can plan ahead, clap once near the start and once near the end, with both recorders running. You can also use another short sound that both microphones picked up, such as a door closing.

## Line up the first clap

1. Open a new Audacity project and drag both recordings into the project window. Each file appears on a separate track.
2. Find the first shared clap. Zoom in on the two waveforms until you can see where each burst of sound begins. Click at the beginning of the burst in each track to read its time in the [Selection Toolbar](https://manual.audacityteam.org/man/selection_toolbar.html).
3. Drag the clip with the earlier clap to the right using its handle above the waveform. Stop when the two bursts start at the same position on the timeline. If one track needs to stay in place, move the other clip. Audacity hides any audio you drag before the start of the timeline.
4. Play across the clap with both tracks audible. If you hear two distinct hits, zoom in further and compare their start positions again.

## Check the sync near the end

1. Find the later shared clap. Zoom in and compare its start in both tracks.
2. If the starts are still lined up, listen to a shared sound in the middle as a final check.
3. If the later starts are apart, compare another shared sound between the two claps. A gap that grows over time is called drift. Moving a clip shifts all its sounds by the same amount, so a single move can line up the first clap and leave a gap at the second.

## Optional practice files

The [two-clap practice files](https://www.saturalabs.com/audio-workflow-kits/two-clap-sync) include three WAVs. Use `aligned.wav` as the reference, and try each of the other files in a fresh project.

| Second track | First clap | Second clap | After lining up the first claps |
| --- | --- | --- | --- |
| `fixed-offset.wav` | 1.120 s | 13.120 s | Both claps line up. |
| `increasing-drift.wav` | 1.120 s | 13.320 s | The second clap is still 200 ms late. |

The reference claps start at 1.000 s and 13.000 s. For each exercise, move the reference clip 120 ms later so the first claps meet at 1.120 s. The drift example simulates the growing gap by moving the second clap.
