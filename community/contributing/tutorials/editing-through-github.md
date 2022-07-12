# Editing through GitHub

Any page of both support.audacityteam.org and plugins.audacityteam.org can be edited either on Gitbook (see [#writing-tutorials-and-user-guides](./#writing-tutorials-and-user-guides "mention") for instructions) or using Markdown syntax on GitHub.&#x20;

{% hint style="info" %}
**Note:** Various formatting options available in Gitbook cannot be previewed on GitHub and most local Markdown editors. Be aware of the differences between

* [Gitbook-hosted pages](https://support.audacityteam.org/community/contributing/tutorials/gitbook-markdown-syntax) (plugins/support.audacityteam.org)
* [Github-flavored markdown renderers](gitbook-markdown-syntax.md) and
* [Raw Markdown](https://raw.githubusercontent.com/audacity/audacity-support/main/community/contributing/tutorials/gitbook-markdown-syntax.md).

The reverse isn't true however: All Github-flavored markdown is supported in Gitbook.
{% endhint %}

## Editing through Github.com

A link for GitHub is shown either on the right-hand side or in an overflow menu of any page:

![](<../../../.gitbook/assets/github edit wide.png>)

![](<../../../.gitbook/assets/github edit narrow.png>)

Once you are on GitHub, you will see a pencil in the top right of the file.&#x20;

![On a technical level, this will create a "fork" of the page, found on your Github profile, with a new branch called "patch-#" in which you are editing. As long as you are within this branch, you can do whatever you want with out stepping on anyone's toes. ](<../../../.gitbook/assets/github fork pencil.png>)

You now can make your changes to the page.&#x20;

{% hint style="success" %}
**Best Practice:** Frequently switch between the Code and Preview tabs in GitHub to get a general sense of what your edit will look like.&#x20;

Also, if you haven't already, now is a great time to familiarize yourself with the [style-guide.md](style-guide.md "mention").&#x20;
{% endhint %}

&#x20;Once you are done, press **Propose Changes**

![On a technical level, this creates a commit in your "patch-#" branch. A branch can hold as many commits as you like, so if you want to do multiple changes, you can exit the flow after clicking "propose changes" and edit another file instead.](<../../../.gitbook/assets/github propose changes.png>)

This brings you to a page where you can review your changes. If you are satisfied, click **Create Pull Request**.

![Clicking this button creates a form...](<../../../.gitbook/assets/github pr 1.png>)

![... in which you can give an overview of your changes to the team.](<../../../.gitbook/assets/github pr 2.png>)

After you click "create pull request", it will show up on [https://github.com/audacity/audacity-support/pulls](https://github.com/audacity/audacity-support/pulls) and await review by an Audacity team member.&#x20;

## Editing through a local editor

You can edit Markdown in any text editor. More advanced editors like [VSCode](https://code.visualstudio.com/docs/languages/markdown) may show useful shortcuts and visualizations for easier and faster editing, but in principle, even the simplest text editors like Windows Notepad can be used to create them.

{% hint style="warning" %}
Caution: Avoid using office suites like Microsoft Word, LibreOffice or Google Docs to edit Markdown. They tend to use very different formatting options, which don't transfer to plain text. As a rule of thumb, if it doesn't save in .txt or .md, it's not the right app to use as a Markdown editor.
{% endhint %}

To get started, first clone the repository, either using `git clone` [`https://github.com/audacity/audacity-support.git`](https://github.com/audacity/audacity-support.git) by clicking the code button on [https://github.com/audacity/audacity-support](https://github.com/audacity/audacity-support) and opening it in GitHub Desktop

![](<../../../.gitbook/assets/github clone.png>)

{% hint style="info" %}
**Note:** You will need to use some form of Git to make a pull request, so just downloading the ZIP will not work.&#x20;
{% endhint %}

Once it's cloned, you'll find the files of **support.audacityteam.org** in the **`main` branch**, and the files of **plugins.audacityteam.org** in the **`plugins` branch**. Any additional branches have been split off from the main branch to preserve documentation for previous versions of Audacity.

![Example of switching branches in the GitHub Desktop client](<../../../.gitbook/assets/github branch switch.png>)

![Example of switching branches in VSCode](<../../../.gitbook/assets/vscode branch switch.png>)

{% hint style="success" %}
Further information on using git with VScode can be found in the [VSCode docs](https://code.visualstudio.com/docs/editor/versioncontrol).&#x20;
{% endhint %}

## Technical notes

Outside from the [syntax requirements](gitbook-markdown-syntax.md), there are some more technical things you need to be aware of:

* The sidebar menu is handled through [SUMMARY.md](../../../SUMMARY.md), not the file structure itself. If you want the page you created to show up in the sidebar, you will need to update this file accordingly. That said: Try to match the structure of SUMMARY.md with the folder structure.
* While you technically can work directly in your fork's main/plugins branch, it is highly recommended to **make a new branch** based on `upstream/main` or `upstream/plugins` instead for your changes. This way, you can always fast-forward merge the latest changes into your fork.
* When updating your fork's side-branches to the latest state of main, rebase it if possible.
