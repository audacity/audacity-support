# Making Audacity Doxygenable

## Doxygen Usage

We use [Doxygen](http://www.doxygen.org/)  lightly.

We do aim to have Doxygen comments at the class level for all classes. This is our priority for Doxygenation of Audacity. Anything else is a bonus.

We're slowly moving towards more Doxygen friendly code, so comments at the start of functions with the [Doxygen /// ](http://www.stack.nl/\~dimitri/doxygen/docblocks.html)  marker are encouraged. We're not planning on having everything Doxygenated.

{% hint style="info" %}
Consider ways to make the code clearer that remove the need for code documentation. For example, if you need a code comment to explain what a function does, consider changing its name to make the comment unnecessary, or breaking it up into smaller functions each of which has a single clear purpose.
{% endhint %}

* We do not want automatically added Doxygen mark up in the source code that has no new human generated content.
  * The whole point of adding a Doxygen comment is to add something that is _not_ obvious from the unmarked up code itself.
  * This might change at a future date if we are documenting an external API we provide. In that case systematic mark up of everything in the API may be helpful for documenting it.

## Header comments

If you're adding new files into Audacity source there is boilerplate header we like to use. The second part of the header, starting with the line ending in //\*\* is a [Doxygen](http://www.doxygen.org/)  class-level comment on the class defined within the source file:

```
/**********************************************************************

   Audacity: A Digital Audio Editor
   Audacity(R) is copyright (c) 1999-2021 Audacity Team.
   License: GPL v2.  See License.txt.

   AudacityApp.cpp
   Dominic Mazzoni, Leland Lucius

******************************************************************//**

\class AudacityApp
\brief AudacityApp is the 'main' class for Audacity 

It handles initialization and termination by subclassing wxApp.

*//*******************************************************************/

```

* See [CodingStandards ](./)for discussion of the license and other information we include.

## Tips and Hints

For Doxygen comments, use JavaDoc style:

```
/**
 * ... text ...
 */
```

Or use a block of at least two C++ comment lines, where each line starts with a triple slash:

```
///
/// ... text ...
///
```

Within the comments, use \brief to label a paragraph that is part of the brief documentation. That paragraph with any remaining text are used in fuller documentation:

```
/** \brief Brief description.
 *         Brief description continued.
 *         Ends at the first blank line.
 *
 *  Detailed description starts here.
 */
```

If you are documenting functions, and decide you do need to document parameters:

```
/**
 * Copies bytes from a source memory area to a destination memory area,
 * where both areas may not overlap.
 * @param[out] dest The memory area to copy to.
 * @param[in]  src  The memory area to copy from.
 * @param[in]  n    The number of bytes to copy
 */
void memcpy(void *dest, const void *src, size_t n);
```

Or

```
/** Sets the position.
 *  @param x,y,z Coordinates of the position in 3D space.
 */
void setPosition(double x,double y,double z,double t)
{
```

We're more interested in what the function does than in exhaustive (and exhausting) listings of what the parameters are and are for. Parameter types and their purpose, with good design, should be obvious in most cases from the naming. When functions are documented, the `@params` are optional.

## Tags

Here is a [full list of the Doxygen tags](http://www.stack.nl/\~dimitri/doxygen/manual/commands.html)

The ones most relevant to us are below:

We're mostly documenting files and classes, rather than stuffing Audacity full of comments for lower level details where reading the code is better.

* `\file` to document a file. _used particularly where the file is not about one class only._
  * If you go on to document global variables or typedefs or #defines in that file, then you _must_ include the \file tag in the file, or Doxygen will ignore them.
* `\class` to document a class.
* `\todo` for a todo item. Note the capitalization.
* `\link ... \endlink` Used for internal documentation to create hyperlinks.

Completely optional.

* `\struct` to document a C-struct.
* `\enum` to document an enumeration type.
* `\fn` to document a function.
  * Doxygen recommend only using this tag if absolutely essential, as it interferes with automatically generated function documentation.
* `\var` to document a variable or typedef or enum value.
* `\def` to document a #define.
* `\typedef` to document a type definition.
* `\warning`
  * We may use \warning to note hacks, where we record the consequences of the hack. Often a 'hack' is good enough, and only would break down in situations that don't occur in practice.
