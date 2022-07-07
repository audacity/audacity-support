# Solving other problems



* [ ] no sound
* [ ] invalid samplerate
* [ ] error codes / error opening device

## Can't open an MP3 file

If you see an error when importing an MP3 file, it can have the following causes:&#x20;

* **Your file isn't using the MP3 codec**, but instead is using a codec associated with another file extension (for example, the Advanced Audio Codec (aac) usually is found in .m4a files, and PCM Wave is usually found in .wav files). A true MP3 file will show `MPEG Audio, Version 1, Layer 3`. \
  To solve this error, you can use [MediaInfo](https://mediaarea.net/MediaInfo) to find out what the actual codec used in the file, and  change the file extension accordingly (for example rename the `audio.mp3` file to `audio.m4a`).&#x20;
* **Your file is partially broken** (Huffman Data Overrun). This is a bug with Audacity versions 3.1.3 and earlier, and you can fix it by [installing the latest version](../todo/downloading-and-installing-audacity.md) of Audacity.&#x20;
* **Your file is fully broken**. If it can't be opened in Audacity, or anywhere else, your file might just be broken. This itself may have several reasons:
  * If you just recently downloaded it from the internet, you may want to try downloading it again - in case there was a transmission error.&#x20;
  * If you just created it yourself, it might be that there was a write error. If possible try saving the file again, re-installing the app that was used to create it, or using a different app to create it.
  * If you had the file on your computer for a long time and it worked in the past, it might be that your hard drive is starting to fail.&#x20;
