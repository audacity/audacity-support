# Testing the latest features

Testing Audacity is one of the best ways to find bugs.&#x20;

You can download the latest nightly from [https://audacityteam.org/nightly](https://audacityteam.org/nightly).

When you do find something that breaks, make sure to [file a bug](https://github.com/audacity/audacity/issues/new?assignees=\&labels=\&template=bug\_report.md)!

Audacity comes with some tools to aid you with testing.

## Tools

### Macros

See [https://manual.audacityteam.org/man/macros.html](https://manual.audacityteam.org/man/macros.html) - these can make it easier for you to do repeated tasks.

### Journaling

Journaling is a feature that records all your actions and lets you replay them.&#x20;

1. start Audacity in journaling mode, <\<TODO: HOW??>> do a certain task, and then close Audacity again. This will generate a journal file, which you can find in <\<WHERE>>.&#x20;
2. Copy the journal file to a new folder (eg: QA-tests) and name it so that you can easily find it again.&#x20;
3. Launch Audacity from the command line, like this:

{% tabs %}
{% tab title="Windows" %}
```
audacity.exe -j QA-tests\yourtest.txt
```
{% endtab %}

{% tab title="macOS" %}
```
audacity -j QA-tests/yourtest.txt
```
{% endtab %}

{% tab title="Linux" %}
```
audacity -j QA-tests/yourtest.txt
```
{% endtab %}
{% endtabs %}



