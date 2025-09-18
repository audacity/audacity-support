# Expected uses

Audacity is an audio editor with limited DAW functionality. As such, we expect and test for the following uses:

* Recording audio, including digitizing analog media
* Applying effects to alter or enhance audio
* Installing plugins to extend Audacity's functionality
* Analyzing audio
* Producing podcasts, audio books, songs, and other audio works
* Saving projects to disk or the audio.com cloud
* Exporting projects into various file formats.&#x20;

## Unsupported uses

Audacity can be used in a wide variety of other scenarios as well. However, while we appreciate you finding more uses for Audacity than we initially anticipated, these scenarios are untested, and you may use them at your own risk:

* Using Audacity as a HEX editor.
* Using Audacity with non-audio files ("data bending").
* Using a cloud sync service other than audio.com for open projects. This is due to Audacity's project format creating [temporary files](https://sqlite.org/wal.html) as part of its normal operations, which generic cloud sync services may struggle with syncing adequately. As a result, the use of cloud services other than audio.com may result in data corruption.
* Using Audacity on legacy operating systems. While we don't explicitly add any checks to artificially limit systems on which Audacity can run on, we also don't test compatibility with it.&#x20;
* Using self-compiled or altered versions. Audacity is widely re-distributed by third parties, with some opting to disable certain features or apply certain changes. We only test the builds available on [audacityteam.org](https://audacityteam.org/).&#x20;



