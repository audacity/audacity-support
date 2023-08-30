---
description: Mastering loudness for various streaming services
---

# Loudness compliance checks

Various streaming platforms and other institutions expect content to have a certain range for peaks, RMS, LUFS, noise floor or a combination of the aforementioned. These plugins provide the relevant checks for the platforms in question.

<table><thead><tr><th data-type="files"></th><th>Service</th></tr></thead><tbody><tr><td><a href="../.gitbook/assets/ACX-Check.ny">ACX-Check.ny</a></td><td>ACX, Audible</td></tr><tr><td><a href="../.gitbook/assets/amazon.ny">amazon.ny</a></td><td>Amazon Music, Alexa</td></tr><tr><td><a href="../.gitbook/assets/apple.ny">apple.ny</a></td><td>Apple Music</td></tr><tr><td><a href="../.gitbook/assets/clubplay.ny">clubplay.ny</a></td><td>Club Play</td></tr><tr><td><a href="../.gitbook/assets/deezer.ny">deezer.ny</a></td><td>Deezer</td></tr><tr><td><a href="../.gitbook/assets/netflix.ny">netflix.ny</a></td><td>Netflix</td></tr><tr><td><a href="../.gitbook/assets/PodCheck.ny">PodCheck.ny</a></td><td>(Podcasts)</td></tr><tr><td><a href="../.gitbook/assets/sony.ny">sony.ny</a></td><td>Sony related</td></tr><tr><td><a href="../.gitbook/assets/soundcloud.ny">soundcloud.ny</a></td><td>Soundcloud</td></tr><tr><td><a href="../.gitbook/assets/spotify.ny">spotify.ny</a></td><td>Spotify</td></tr><tr><td><a href="../.gitbook/assets/spotify-loud.ny">spotify-loud.ny</a></td><td>Spotify</td></tr><tr><td><a href="../.gitbook/assets/tidal.ny">tidal.ny</a></td><td>Tidal</td></tr><tr><td><a href="../.gitbook/assets/youtube.ny">youtube.ny</a></td><td>YouTube</td></tr></tbody></table>



<details>

<summary>Details</summary>

Authors: Will McCown, Steve Daulton, Philip Collier

Original ACX plugin by Will McCown. Modifications for services other than ACX by Philip Collier.

**Displayed Results**

* **Peak leve**l\
  Maximum peak level in the selection
* **RMS level**\
  The RMS level of the selected audio.
* **Noise floo**r\
  The RMS level of the quietest 500 milliseconds in the selection
* **Warnings**: _(These are only displayed when applicable.)_

**Limitations**

* These tools provide useful guidance, but they do not guarantee that the services in question will reject or modify the uploaded sounds anyway. This particularly goes for ACX, which has additional quality standards not measured by this tool.
* The Noise Floor measurement is taken from the quietest half second of audio found in the selection. If one part of the selection is quieter than the rest, you will get a false value. Also note that ACX requires a very quiet noise floor to be present.
* Minimum selection length is 1/2 second.
* Maximum selection length is about 2.14 billion samples (13.5 hours at a sample rate of 44100 Hz)

Also beware that some noise sources are worse than others, and noise such as the 1000 Hz whine found in some USB audio interfaces may result in an ACX rejection even though it is below the -60 dBFS noise floor requirement.

</details>
