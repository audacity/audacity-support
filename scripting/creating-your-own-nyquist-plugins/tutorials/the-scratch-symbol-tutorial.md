---
description: >-
  This page provides a brief introduction to using the *SCRATCH* symbol in
  Nyquist programming.
---

# The \*SCRATCH\* Symbol Tutorial

\*_SCRATCH\*_ is a global symbol, specific to Nyquist in Audacity, which is not deleted in-between plug-in runs. It provides a way for information to survive from one invocation of a plug-in to the next. However, you should not rely on the _"value"_ of \*SCRATCH\* beyond a single invocation of a plug-in as it could be overwritten by another plug-in. It is better to use property lists of \*SCRATCH\*. That way, you get a whole name space rather than a single variable name, and with careful naming of the property keys, name collisions can be avoided.

To pass data from plug-in "effectX-partA" to "effectX-partB":

1\. Assign a property name based on the effect name, e.g.: 'EFFECTX \[or in SAL, which does not support the single-quote notation of LISP, write QUOTE(EFFECTX). ]

2\. "effectX-partA" should delete any old property value:

```lisp
exec remprop(quote(*SCRATCH*), quote(effectx)) ;; in SAL
(remprop '*SCRATCH* 'effectx) ;; in LISP
```

3\. "effectX-partA" should compute a new property value **v** and save it:

```lisp
 exec putprop(quote(*SCRATCH*), v, quote(effectx)) ;; in SAL
 (putprop '*SCRATCH* v 'effectx) ;; in LISP
```

4\. "effectX-partB" should access the property using:

```lisp
 set v = get(quote(*SCRATCH*), quote(effectx)) ;; in SAL
 (get '*SCRATCH* 'effectx) ;; in LISP
```

5\. When "effectX-partB" finishes, it should remove the property:

```lisp
 exec remprop(quote(*SCRATCH*), quote(effectx)) ;; in SAL
 (remprop '*SCRATCH* 'effectx) ;; in LISP
```

But there may be cases where you do some analysis and want to use the analysis data multiple times. You might even have multiple analysis plug-ins operating on different inputs to collect data to feed into a plug-in with multiple inputs. In this case, which might be quite common, you should not call REMPROP(), but this has the problem of leaving data on the \*SCRATCH\* property list indefinitely.

In cases where \*SCRATCH\* data is not deleted immediately after use, and where there is the potential to leave large amounts of memory there, there should be another effect, e.g. "effectX-partCleanup", that simply calls:

```lisp
 exec remprop(quote(*SCRATCH*), quote(effectx)) ;; in SAL
 (remprop '*SCRATCH* 'effectx) ;; in LISP
```

allowing the user to explicitly free up any data stored on the 'EFFECTX property. It would be reasonable to omit the "effectX-partCleanup" effect if the data stored on the property list has a maximum size of, say, 10KB. The problem we want to avoid is properties with unbounded size getting left in the heap until Audacity is restarted.
