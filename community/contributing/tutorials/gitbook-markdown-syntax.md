---
description: A page showing the Markdown for all the basic and fancy options there are.
---

# Gitbook Markdown syntax

Contrast this to the raw file found in the "Edit on Github" link.

## Heading 1&#x20;

(shows up in the outline)

### Heading 2&#x20;

(also shows up in the outline)

#### Heading 3&#x20;

(does not show up in the outline)

Headings can be used anywhere, including inside other blocks.

## Inline text formatting options

**Bold**, _Italics_, `Code`, ~~Strikethrough~~, [Link](https://example.org), [internal link](style-guide.md), [anchor link](gitbook-markdown-syntax.md#undefined), page link: [style-guide.md](style-guide.md "mention"), page anchor link: [#undefined](gitbook-markdown-syntax.md#undefined "mention"), <mark style="color:red;">colored text</mark>, <mark style="background-color:green;">colored background</mark>, <mark style="color:yellow;background-color:blue;">both colored</mark>, LaTeX: $$f(x) = x * e^{2 pi i \xi x}$$

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

> A quote

```
// Some code
```

```html
<b style="some_css: 23px;" class="and other things"> also supports syntax highlighting</b>
```

These blocks can be used inside of some other blocks. The code block cannot have other blocks inside it. The quote block and infobox can have headings, inline content and lists inside it.

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

<table><thead><tr><th data-type="select" data-multiple>select-option column</th><th data-type="files">files column</th><th data-type="rating" data-max="3">Ratings column</th></tr></thead><tbody><tr><td></td><td></td><td>3</td></tr><tr><td></td><td></td><td>2</td></tr><tr><td></td><td></td><td>1</td></tr></tbody></table>

Tables cannot be used inside other blocks except the Tabs block, nor can other blocks be placed inside them. Inline content works inside of text columns only.

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

A Gitbook-specific drawing thing. Likely impossible to use in Markdown.

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





