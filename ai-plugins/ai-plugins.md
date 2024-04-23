# AI plugins

## Intel OpenVINO

A set of AI-enabled effects, generators, and analyzers. These AI features run 100% locally on your PC 💻 -- no internet connection necessary! [OpenVINO™](https://github.com/openvinotoolkit/openvino) is used to run AI models on supported accelerators found on the user's system such as CPU, GPU, and NPU.

* [**Music Separation**](https://github.com/intel/openvino-plugins-ai-audacity/blob/main/doc/feature\_doc/music\_separation/README.md)🎵 -- Separate a mono or stereo track into individual stems -- Drums, Bass, Vocals, & Other Instruments.
* [**Noise Suppression**](https://github.com/intel/openvino-plugins-ai-audacity/blob/main/doc/feature\_doc/noise\_suppression/README.md)🧹 -- Removes background noise from an audio sample.
* [**Music Generation and continuation**](https://github.com/intel/openvino-plugins-ai-audacity/blob/main/doc/feature\_doc/music\_generation/README.md) 🎶 -- Generates music from a text prompt or continues an existing song
* [**Whisper Transcription**](https://github.com/intel/openvino-plugins-ai-audacity/blob/main/doc/feature\_doc/whisper\_transcription/README.md)🎤 -- Uses [whisper.cpp](https://github.com/ggerganov/whisper.cpp) to generate a label track containing the transcription or translation for a given selection of spoken audio or vocals.

{% embed url="https://github.com/intel/openvino-plugins-ai-audacity/releases" %}
Download page
{% endembed %}

## NVIDIA Broadcast

A virtual device that sits between your microphone and Audacity and other programs which allows you to use an AI denoiser.

{% hint style="warning" %}
**Caution:** NVIDIA Broadcast only works on Windows machines with a NVIDIA RTX GPU.

Further, it only works on spoken word content; musical content is treated as noise and filtered out.
{% endhint %}

{% embed url="https://www.nvidia.com/en-gb/geforce/broadcasting/broadcast-app/" %}
Download page
{% endembed %}

<details>

<summary>Details</summary>

Copyright © 2022 NVIDIA Corporation

Requires NVIDIA GeForce RTX 2060, Quadro RTX 3000, TITAN RTX or higher

Full setup guide: [https://www.nvidia.com/en-gb/geforce/guides/broadcast-app-setup-guide/](https://www.nvidia.com/en-gb/geforce/guides/broadcast-app-setup-guide/)

Technically, NVIDIA Broadcast isn't a plugin but a virtual device. You will find it in Audacity's audio settings as an input. It does not show up in the Plugin Manager.

</details>
