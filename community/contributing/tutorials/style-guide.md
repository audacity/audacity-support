---
description: >-
  These are the rules designed to give the entire user guide a somewhat unified
  style. You may apply them with some freedom.
---

# Style Guide

## General

The goal of the user guide is to provide explanations on how to perform various tasks in Audacity.&#x20;

### Features vs tasks&#x20;

Documenting features seems like the obvious thing to do: Audacity has various menus, so better have a list of what every option in that menu does. However, this leads to the situation where some pages are completely unfindable as a reader already needs to know where certain options are in the menu in order to find out what the page would be called. For example, the feature containing the slider for the recording and playback volumes is called _Mixer Toolbar_. But nobody except the people most intimately familiar with Audacity know it's called that!

To combat this, try to write your guides as a way towards a goal, or a **task**. The above example, instead of naming the page after the feature, name it after the task it does, so:  [setting-recording-levels-and-playback-levels.md](../../../basics/recording-your-voice-and-microphone/setting-recording-levels-and-playback-levels.md "mention")

Tasks aren't necessarily tied to individual features. For example, [noise-reduction-removal.md](../../../repairing-audio/noise-reduction-removal.md "mention") can talk about several tools as once as they all are means towards a common goal.&#x20;

If a feature has many different modes or options that are unrelated to the task you're describing, avoid making long lists of what all the feature can do. Focus on the task-related ones instead.

If a feature has several ways to access it, use the most accessible option. For example, for an "how to play audio" article, simply mention the big green play button and the shortcut `Space`. Don't also mention Transport > Playing > Play/Stop.&#x20;

There are some exceptions to this, especially when documenting more "advanced" features like Macros which need extensive guiding about how to operate it. Instead of a linear "go here, then here and there, and then you're done", split them up into sub-tasks (for macros: creating macros, editing macros, etc.) and keep these unrelated tasks on one page. Avoid breaking it down to the point where you are explaining individual buttons (don't say "the `cancel` button cancels the effect without applying it")

{% hint style="success" %}
**Rule of thumb:** If a feature is easy to use, but hard to find, document it like a task, ie answering the question "how do I do x". If a feature is hard to use, document how to use the feature as a series of sub-tasks if possible.
{% endhint %}

### Target audience

Audacity's user base consists largely of **casual users**. As such, you can't expect the readers of your guide to understand even fairly common audio terms (for example: compressor or loudness vs volume), unless it's directly connected to the topic you're writing about.&#x20;

For example, if you write a guide about compressing and expanding audio, you don't need to hold yourself up on explaining what a compressor is, since the only people who'll ever end up reading that guide are people who already know about that. However, if you were to mention a compressor on a page about general audio editing, you would need to explain what a compressor is good for.

That said: If it's possible to describe a feature without needing to resort to lingo, use it even if it's slightly less accurate. For example, "punch-in repair" would be the accurate term for [re-recording-a-section.md](../../../repairing-audio/re-recording-a-section.md "mention"), but also is way harder to understand and thus to find.

### Scope

While there's a lot of things you can write about in relation to Audacity, keep in mind that this site is focused on user guides (or how-to guides, or tutorials - they all have the same idea). We want to minimize work on contributors while maximizing impact, so guides should be kept as general as possible. Only use qualifiers such as "for podcasters" or "for musicians" if their use case shares almost no resemblance to what everyone else would be doing anyway.&#x20;

{% hint style="warning" %}
**Caution:** The following topics are out of scope:&#x20;

* Audio-related content beyond Audacity, like: "how to build a quiet recording booth"
* Reviews and recommendations of software/plugins/...
* Technical documentation about the internals of Audacity.&#x20;
{% endhint %}

## Writing style

You can address the reader directly ("you"). You should remain impartial in the process though, so no "I" or "my".&#x20;

The overall tone should be friendly but not patronizing, and the language should have a healthy middleground between casual and technical.&#x20;

### Page titles

Titles should reflect the task you're trying to teach. For example, if you're teaching how to add reverb, the title should be "Adding reverb"

The title should be concise (try keeping it below 60 characters).

Page titles should be written in sentence case. So generally, the first is capitalized while everything else is not, except proper nouns and acronyms ("Audacity", "FFMPEG").

{% hint style="info" %}
Note: When the title explicitly refers to an option within Audacity itself, use the spelling found inside Audacity. So for example, "Using the Noise Reduction effect" would have "noise reduction" capitalized, but "Reducing noise in Audacity" would not.&#x20;
{% endhint %}

### Introductions

Underneath the title is a field for page descriptions. These descriptions are the first thing users see of the article when looking at Google, or seeing an embed to it somewhere.&#x20;

As such, they should give a good summary of what the page is going to be: In a few words, how will a goal be achieved? What features will be used?&#x20;

### Instructions

Instructions should be written in a step-by-step list where useful. For example:

1. Do This
2. then that
3. then a third thing

If you need to interrupt the steps for explanations, you can either do

1. Do this
2. then that (shift+enter)\
   Note: This is an explanation on a new line
3. then a third thing

#### Instructions for different Operating Systems

If instructions are different depending on the operating system or other factors, you can use tabs, like this:

{% tabs %}
{% tab title="Windows" %}
Windows Instructions
{% endtab %}

{% tab title="macOS" %}
MacOS instructions
{% endtab %}

{% tab title="Linux" %}
Linux instructions
{% endtab %}
{% endtabs %}

Tabs aren't part of standard Markdown, so they probably won't show up properly if you're using github or a local editor. They'll show up just fine on Gitbook though.&#x20;

{% hint style="info" %}
**Note:** Tabs are quite big blocks, visually speaking. When using them, make sure that what you're showcasing is worth this space. For example, if you're just saying that undo is Ctrl+z on Windows and Linux, you can just put brackets behind it for the mac instructions - "press Ctrl+z (Cmd+z)"
{% endhint %}

#### Technical explanations, asides, and manual backups

If a task has a main way of working, but may benefit from additional context, you can use the Expandable block:

<details>

<summary>Further information</summary>

You can use various other things in here.&#x20;

Note that you cannot embed other blocks inside Expandables. You are limited to Paragraphs, Headings (h1, h2, h3), lists (bullet points, numbers, checkboxes) and code blocks. Images are possible, but only as inline (ie inside a paragraph).&#x20;

</details>

### Images

You can take screenshots using the clipping tool or tools like ShareX. ShareX has the advantage that it has built-in tools like arrows, step-by-step bubbles and labels which can help you visualize several steps at once.

With images, there always is a tradeoff between easy maintainability, clarity and context. So crop them as much as possible without losing important context, and use them in a way that makes updating them as painless as possible.

### Info boxes

Gitbook offers 4 types of info boxes.

{% hint style="info" %}
**Info**: Use these for information which is useful to know, but not necessary to fulfill the task. These boxes should be started with&#x20;

* **Info:, Note:** or **Tip:** for general additional information
* **Shortcut:**`Key + Combination`for shortcuts
{% endhint %}

{% hint style="warning" %}
**Warning**: Use these for information where things might go wrong and the user might get undesired results. These boxes should be started with

* **Caution:** or **Warning:** depending on which feels more appropriate in terms of urgency
{% endhint %}

{% hint style="danger" %}
**Danger**: Use these for super important information only, where ignoring the danger box would lead the user to irreparable damages (lost data, broken audio, ...). These boxes should be started with

* **Danger:** for super important info
* **NEVER** or **DON'T** if you need to go straight into the warning, where "danger" would look silly.
{% endhint %}

{% hint style="success" %}
**Success**: Use these for things the reader should do. These should be started with&#x20;

* **Best practice:** or **Do:** for best practices
* **Checklist:** if you want to provide a checklist&#x20;
{% endhint %}

These info boxes aren't part of standard markdown, so if you're not using gitbook itself, but edit through Github or a local editor, they will look a bit silly in your preview (but show up correctly here).

## Video Tutorials

If an image is worth a thousand words, a video tutorial can be worth a million: At it's best, it can tell the entire story the written guide would make in a way that always has all necessary context and requires no lengthy description of where to find things.&#x20;

However, video tutorials can go out-of-date incredibly quickly and then cause a lot of confusion among viewers.

Because of this, a video tutorial must follow these rules to be added to an Audacity Support page:

* The video must clearly state what version of Audacity it's referring to in the beginning.
* The video must be in the language of the Audacity Support page it's meant to be embedded in. Right now, that's English only.&#x20;
* The video must be a dedicated Audacity tutorial or how-to guide.&#x20;
* The video must refer to Audacity Support as the place to get up-to-date help from.
* The video must not contain a sponsorship read, and it is preferred to have the video completely ad-free.&#x20;
* The video should be licensed Creative Commons-Attribution (see [YouTube help](https://support.google.com/youtube/answer/2797468?hl=en)). This way, if your video goes out of date, other people can update only the part of your video that goes out of date.
* The video and the Audacity Support page it's supposed to be embedded in should match the steps they take. If the video tutorials goes on a tangent unrelated to the initial task, the written guide may omit the tangent and instead place the contents of the tangent in a "See also" section.&#x20;

### Best Practices for Videos

The following points are considered best practice for video tutorials:

* Start with the purpose and version number and then go straight into the content: "To do XYZ in Audacity 4.2.0, first go to..."&#x20;
* Use a script which you follow when making your video. This will automatically eliminate the following two points, and also get you a long way towards making subtitles.
* Avoid going off-topic, eg "hey guys, and welcome back to another video! my sister's aunt's nephew requested I make a tutorial so he can cook his eggs using Audacity to which I said..."
* Go through your tutorial linearly step-by-step, and avoid jumping back to earlier sections much later in the video. For example, if you are in Step 9 already, jumping back with a "oh yeah, I forgot to add that in Step 3, you need to also do..." is majorly confusing.
* Add subtitles to your videos. Not only do they make your tutorial more accessible to deaf people, they also are useful to people who have trouble understanding your dialect or accent, or who want to auto-translate the subtitles into their own language.&#x20;
* Use chapters on YouTube to mark major steps in your video. They work by putting the following in your video description:&#x20;

```
0:00 Intro 
0:30 Step 1. Clicking here 
0:45 Step 2. Sliding there 
1:00 Step 3. Cha-cha-cha

(note: the first timestamp must be 0:00)
```

## About this document

This is a living document. It contains the best practices, as determined by the community. Feel free to discuss additions and changes on the discussions page, or in the discord.&#x20;
