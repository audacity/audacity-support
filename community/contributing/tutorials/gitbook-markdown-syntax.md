---
description: >-
  A page showing the Markdown for all the basic and fancy options there are.
  Also compares it to Github's Markdown. This block is the page description.
---

# Gitbook Markdown syntax

Contrast this page to:

* raw markdown: [https://raw.githubusercontent.com/audacity/audacity-support/main/community/contributing/tutorials/gitbook-markdown-syntax.md](https://raw.githubusercontent.com/audacity/audacity-support/main/community/contributing/tutorials/gitbook-markdown-syntax.md)&#x20;
* Github's markdown renderer: [https://github.com/audacity/audacity-support/blob/main/community/contributing/tutorials/gitbook-markdown-syntax.md](gitbook-markdown-syntax.md)
* the live page: [https://support.audacityteam.org/community/contributing/tutorials/gitbook-markdown-syntax](https://support.audacityteam.org/community/contributing/tutorials/gitbook-markdown-syntax)

## Heading 1&#x20;

(shows up in the outline)

### Heading 2&#x20;

(also shows up in the outline)

#### Heading 3&#x20;

(does not show up in the outline)

Headings can be used anywhere, including inside other blocks.

## Inline text formatting options

**Bold**,\
&#x20;_Italics_,\
`Code`, \
~~Strikethrough~~, \
[Link](https://example.org), \
[internal link](style-guide.md), \
[anchor link](gitbook-markdown-syntax.md#undefined), \
page link: [style-guide.md](style-guide.md "mention"), \
page anchor link: [#inline-text-formatting-options](gitbook-markdown-syntax.md#inline-text-formatting-options "mention"), \
<mark style="color:red;">colored text</mark>, \
<mark style="background-color:green;">colored background</mark>, \
<mark style="color:yellow;background-color:blue;">both colored</mark>, \
LaTeX: $$f(x) = x * e^{2 pi i \xi x}$$

These can be used anywhere.

## Lists

* Unordered
* List

1. Ordered
2. List

* [x] Task
* [ ] List

<!---->

* List with
  1. sub-items
  2. can have
     * [x] changing list styles
* ...

Lists can be used anywhere, including inside other blocks. They can only include inline content and other (nested) lists.

## Infoboxes, quotes and code blocks&#x20;

Infoboxes:

{% hint style="info" %}
Hint
{% endhint %}

{% hint style="warning" %}
Caution
{% endhint %}

{% hint style="danger" %}
Danger
{% endhint %}

{% hint style="success" %}
Success
{% endhint %}

> A quote block

```
// a code block
```

```html
code blocks <b style="some_css: 23px;" class="and other things"> also supports syntax highlighting</b>
```

These blocks can be used inside of Tabs. The code block can also be used in Expandables, but cannot have other blocks inside it. The quote block and infobox can have headings, inline content and lists inside it.

## Images and files

Inline image: ![](../../../.gitbook/assets/ZoomIn.png)

Image block:

![supports captions](<../../../.gitbook/assets/transport toolbar.png>)

Attached file:

{% file src="../../../.gitbook/assets/transport toolbar.png" %}
supports captions
{% endfile %}

## Embeds

{% embed url="https://www.youtube.com/watch?v=HpA138b-J9s" %}
YouTube embed
{% endembed %}

{% embed url="https://audacityteam.org" %}
Arbitrary website without player
{% endembed %}

{% embed url="https://gist.github.com/LWinterberg/fbdfe97044af6fafc01f06862817babe" %}
gist embed
{% endembed %}

{% embed url="https://soundcloud.com/rick-astley-official/never-gonna-give-you-up-4" %}
soundcloud embed
{% endembed %}

Embeds cannot be used inside of other blocks except the Tabs block, nor can other blocks be placed inside them.

## Tables

<table><thead><tr><th data-type="checkbox">checkbox column</th><th align="center">text column, center-aligned</th><th data-type="number">number column</th><th data-hidden>hidden text column</th></tr></thead><tbody><tr><td>true</td><td align="center">text</td><td>123</td><td>hidden</td></tr><tr><td>false</td><td align="center">text</td><td>456</td><td>hidden</td></tr><tr><td>true</td><td align="center">text</td><td>789</td><td>hidden</td></tr></tbody></table>

<table><thead><tr><th data-type="select" data-multiple>select-option column</th><th data-type="files">files column</th><th data-type="rating" data-max="3">Ratings column</th></tr></thead><tbody><tr><td></td><td><a href="../../../.gitbook/assets/ZoomIn.png">ZoomIn.png</a></td><td>3</td></tr><tr><td></td><td><a href="../../../.gitbook/assets/transport toolbar.png">transport toolbar.png</a></td><td>2</td></tr><tr><td></td><td><a href="../../../.gitbook/assets/ZoomIn.png">ZoomIn.png</a><a href="../../../.gitbook/assets/transport toolbar.png">transport toolbar.png</a><a href="../../../.gitbook/assets/Trim.png">Trim.png</a></td><td>1</td></tr></tbody></table>

{% hint style="warning" %}
Any table but the most simple option will be converted into HTML, rather than markdown when edited through gitbook.
{% endhint %}

Tables cannot be used inside other blocks except the Tabs block, nor can other blocks be placed inside them. Inline content works inside of text columns only.

## Cards

<table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-cover data-type="files"></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td>Card 1 top. Card has an image on top.</td><td>Card 1 mid</td><td>Card 1 bottom</td><td><a href="../../../.gitbook/assets/Card Beats Measures.png">Card Beats Measures.png</a></td><td></td></tr><tr><td>Card 2 top. Entire card links to a page.</td><td>Card 2 mid</td><td>Card 2 bottom</td><td></td><td><a href="../../../">..</a></td></tr><tr><td>Card 3 top. <mark style="color:blue;">With inline formatting.</mark></td><td><strong>Card 3 mid</strong></td><td>Card 3 bottom</td><td></td><td></td></tr></tbody></table>

Cards and tables can be converted into each other.

## Tabs

{% tabs %}
{% tab title="First Tab" %}
content of first tab
{% endtab %}

{% tab title="Second Tab" %}
content of second tab
{% endtab %}

{% tab title="Third tab" %}
content of third tab
{% endtab %}
{% endtabs %}

Tabs cannot be used inside other blocks. Tabs can have most other blocks inside them, except of other tabs, expandables, and API blocks.

## Expandable (Details block)

<details>

<summary>Expandable title</summary>

Expandable content

</details>

Expandables cannot be inside other blocks. Expandables can have headings, lists, code blocks, and inline content inside them.

## Drawings

<img src="../../../.gitbook/assets/file.drawing.svg" alt="also supports captions" class="gitbook-drawing">

A Gitbook-specific drawing thing, generating SVGs. Likely useless when using Markdown.

## LaTeX

$$
f(x) = x * e^{2 pi i \xi x}
$$

Cannot be placed inside of other blocks except the Tabs block. That said, an inline variant is available which can go pretty much anywhere.

## Web API methods

{% swagger method="get" path="/example" baseUrl="https://example.com" summary="API title" %}
{% swagger-description %}
shows itself up in the outline. Example of all available parameters follows:
{% endswagger-description %}

{% swagger-parameter in="path" name="id" type="String" %}
Description
{% endswagger-parameter %}

{% swagger-parameter in="query" name="id" type="String" required="true" %}
Description
{% endswagger-parameter %}

{% swagger-parameter in="header" name="id" type="String" %}
Description
{% endswagger-parameter %}

{% swagger-parameter in="cookie" name="id" type="String" %}
Description
{% endswagger-parameter %}

{% swagger-parameter in="body" name="id" type="String" %}
Description
{% endswagger-parameter %}

{% swagger-response status="200: OK" description="Description" %}
```javascript
{
    // good Response
}
```
{% endswagger-response %}

{% swagger-response status="404: Not Found" description="Description" %}
```javascript
{
    // not found Response
}
```
{% endswagger-response %}

{% swagger-response status="500: Internal Server Error" description="Description" %}
```javascript
{
    // error Response
}
```
{% endswagger-response %}
{% endswagger %}

Cannot be used inside other blocks. Can only contain plain text. Unfortunately very tailored towards web APIs only.

## Dividers

***

The  above line is a divider.



