# Testing the latest features

Testing Audacity is one of the best ways to find bugs.&#x20;

## Nightly builds

You can download the latest master build from [https://audacityteam.org/nightly](https://audacityteam.org/nightly). These builds reflect the state the master branch. Anything in the master branch has passed at least a quick round of QA to validate that the features the change touched still work for the common use cases.&#x20;

Before features go into the master branch, they live in [pull requests](https://github.com/audacity/audacity/pulls). Each pull request comes with its own builds, available through the "Checks" tab inside the PR and then the "Artifacts" dropdown in the top right. Additionally, you can get builds which are still in development from [https://github.com/audacity/audacity/actions](https://github.com/audacity/audacity/actions). Both methods require a Github account.&#x20;

{% hint style="info" %}
Note: When testing pull requests, report any bugs regarding it as a comment inside the pull request.&#x20;
{% endhint %}

When you do find something that breaks, make sure to [file a bug](https://github.com/audacity/audacity/issues/new?assignees=\&labels=\&template=bug\_report.md) (or comment on the pull request that introduces the bug if it's unmerged)!

## Alpha, Beta and Release builds

Before each release, a branch is split off master named "release-x.x.x". This release branch contains all features which will be part of the next Audacity release. Bug fixes which go towards this release will be made inside this branch. You can get builds for it via [https://github.com/audacity/audacity/actions](https://github.com/audacity/audacity/actions); the nightly link will continue to give you master branch builds.&#x20;

During the release process we may designate certain builds as "alpha" or "beta" and release them on [https://github.com/audacity/audacity/releases](https://github.com/audacity/audacity/releases). This is to invite testing from a wider audience.

## Tools

Audacity comes with some tools to aid you with testing.

### Macros

See [https://manual.audacityteam.org/man/macros.html](https://manual.audacityteam.org/man/macros.html) - these can make it easier for you to do repeated tasks.

### Journaling

Journaling is a feature that records all your actions and lets you replay them. This feature is currently under development and not really ready.&#x20;

1. start Audacity in journaling mode, <\<TODO: HOW??>> do a certain task, and then close Audacity again. This will generate a journal file, which you can find in <\<WHERE>>.&#x20;
2. Copy the journal file to a new folder (eg: QA-tests) and name it so that you can easily find it again.&#x20;
3. Launch Audacity from the command line, like this:

{% tabs %}
{% tab title="Windows" %}
```
path\to\audacity.exe -j QA-tests\yourtest.txt
```
{% endtab %}

{% tab title="macOS" %}
```
path/to/audacity -j QA-tests/yourtest.txt
```
{% endtab %}

{% tab title="Linux" %}
```
path/to/audacity -j QA-tests/yourtest.txt
```
{% endtab %}
{% endtabs %}



