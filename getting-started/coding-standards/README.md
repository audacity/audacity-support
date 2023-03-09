# Coding standards

While we're not particularly insistent about coding standards, there are a few things that we try to do consistently as below.

## Conventions

When modifying existing files, the **main things** are:

* spaces, no tabs
* three spaces per indent

As far as **naming**:

* classes and methods/functions are in CamelCase
* local variables are firstLoweredCamelCase
* member variables are mVar
* globals are usually gVar

## Preferences

* Our style (and that of wxWidgets) is to not leave a space between a function name like 'GetAllFormats' and the following '(', so please copy that style too. It can make searching for functions easier.
* If you're defining a complex macro, add a comment. You may understand it without a comment. We might not.
* When you're using a #ifdef to give different bodies to a function, and the function is fairly long, we prefer that the #ifdef include the function header, the '{' and the closing '}' inside it rather than 'sharing' them between the two versions. We think the slight duplication is worth it for the better readability.
* Source files are in UTF-8 format (so they may contain accented and other characters where necessary). This ensures they are processed the same by all compilers on all platforms

## Do's and Don't's <a href="#dos_and_donts" id="dos_and_donts"></a>

**Do's:**

* Ensure declaration and definition use the same type (not typedefed names that happen to be the same).
* Ensure when using functions like _wxPrintf, wxString::Format, wxString::Printf_ and passing a wxString, the _wxString::c\_str()_ method is used to pass the correct value. Otherwise, a compilation error will occur with the GCC compiler (Mac and Linux systems).
* Place user interface strings inside \_() (not wxT() which is used for non-translated or testing-only strings). This ensures gettext can extract the strings for translation. Any strings that are context-dependent or need explanation should be prefaced with a comment starting "i18n-hint:".

**Don't's:**

* Prefix member functions with the class name in the header - it's a GCC compiler error.

## Header comments <a href="#header_comments" id="header_comments"></a>

If you're adding new files into Audacity source there is boilerplate header we like to use:

```
/**********************************************************************

   Audacity: A Digital Audio Editor
   Audacity(R) is copyright (c) 1999-2021 Audacity Team.
   License: GPL-v2-or-later.  See License.txt.

   AudacityApp.cpp
   Dominic Mazzoni, Leland Lucius

******************************************************************//**

\class AudacityApp
\brief AudacityApp is the 'main' class for Audacity 

It handles initialization and termination by subclassing wxApp.

*//*******************************************************************/
```

Some files will have wxWidgets license rather than GPL. The second part of the header, starting with the line ending in `//**` is a [Doxygen](http://www.doxygen.org/) class-level comment on the class defined within the source file.

## Doxygen Elsewhere <a href="#doxygen_elsewhere" id="doxygen_elsewhere"></a>

We're also slowly moving towards more [Doxygen](http://www.doxygen.org) friendly code, so comments at the start of functions with the [Doxygen ///](http://www.stack.nl/\~dimitri/doxygen/docblocks.html) marker are encouraged. We're not planning on having everything Doxygenated. We do aim to have doxygen comments at the class level for all classes.

* See Making Audacity Doxygenable for details.

## Header files <a href="#header_files" id="header_files"></a>

Note that some header files (.h) don't contain class declarations for classes defined in the corresponding C++ files (.cpp). These are described at Unusual Header Files; note in particular the Guidelines for using Experimental.h.

## No naked new! Memory (and other resource) management <a href="#no_naked_new_memory_and_other_resource_management" id="no_naked_new_memory_and_other_resource_management"></a>

Do not use "naked" new and delete!

A comprehensive rewriting of naked new and delete in Audacity's source (not including the third party lib-src directories) was completed early in 2.2.0 development. Do not reintroduce such code. Learn the use of smart pointers and containers instead.

That is, do not manage allocated memory thus:

```
Obj *pObj = new Obj(x, y, z);
/* ... */
delete pObj;
```

but rather thus:

```
auto pObj = std::make_unique<Obj>(x, y, z);
/* ... */
```

The use of delete is now implied in the destructor of pObj, whose type is std::unique\_ptr< Obj, std::default\_delete< Obj > >.

The advantage is not merely elimination of one line of code.

* It is now unnecessary for a reviewer to examine all the other lines, to be sure that there is no other early return path from the function, on which the programmer neglected to duplicate the delete statement.
* The deletion is guaranteed in case the function exits because an exception is thrown, by a statement which might even be outside the body of the function itself.
* To achieve completely equivalent safety with naked new and delete would require the verbosity of try, catch, duplicated delete, and re-throw.

The principle generalizes to the management of other resources than memory.

* Do not rely on explicit calls that free resources (such as open files). Rather, have that happen in the destructor of some "smart" variable.
* You may free a resource explicitly where there is a need to do that, conditionally, earlier than the end of scope, or to check error codes. Still, use a smart variable to guarantee the ultimate freeing along all possible paths, including throws.
* If you must free early and unconditionally, consider limiting the scope of the smart variable with braces { } so that the freeing code is still implicit.
* Do not make calls that acquire the resource without immediately entrusting the responsibility to free it to such a variable.

One somewhat frequent example of a non-memory resource is the locking and unlocking of a mutex. wxMutex lets you call its Lock() and Unlock() methods explicitly, but it is better instead to initialize a variable of type wxMutexLocker.

This idiom is often called RAII in the literature on C++, which stands for "Resource Acquisition Is Initialization."

## Safety guarantees defined <a href="#safety_guarantees_defined" id="safety_guarantees_defined"></a>

Some complex, mutative operation, involving multiple steps that might fail, is done on one or more objects. What are the possible outcomes? Know these terms, which are used in comments.

### No-throw guarantee <a href="#no_throw_guarantee" id="no_throw_guarantee"></a>

This is not as strong as the no-fail guarantee, which refers generally and abstractly to "failure." Rather, this refers only to the language-technical matter of throwing of exceptions, which is only one way that failure might be signalled -- another way is the returning of error codes.

Almost always, destructors of C++ classes should give a no-throw guarantee, because if a destructor is executed during stack unwinding of one exception, whose catch block is not yet reached, but then a second exception escapes the destructor -- then this is a catastrophe that aborts the program at once.

### No-fail guarantee <a href="#no_fail_guarantee" id="no_fail_guarantee"></a>

The operation promises not to fail! This is the strongest guarantee.

Swapping operations of containers or smart pointers often give this guarantee. Such a guarantee is often used to implement the (weaker) "strong guarantee" (below).

### Strong guarantee <a href="#strong_guarantee" id="strong_guarantee"></a>

Failure may happen, but if it does, then it is guaranteed that the objects remain unchanged.

Often an object implements a mutating operation with strong guarantee, by building up alternative state in stack variables, making no change in the object's own state. Only after that build-up succeeds, the changes are committed: the new contents are swapped into the object's member variables, and the old contents, now held by stack variables, are destroyed.

This is like committing and rolling-back of transactions in databases, and indeed similar terminology is sometimes used in code and comments.

This relies on (stronger) no-fail guarantees in the commitment steps. (For otherwise, suppose one swap succeeds, but the second fails. What then, to regain a consistent state? Undo the first swap, which might then fail? Uh oh.)

### Weak guarantee <a href="#weak_guarantee" id="weak_guarantee"></a>

A complicated operation may fail in the middle, leaving some side effects. It is guaranteed that the objects remain in some unspecified but "consistent" state.

What does "consistent" mean? That may vary, and there may be degrees of weak guarantee. But at a minimum it means this: the objects can be destroyed without crashes or other undefined behavior.

A complicated object might be composed of other objects that provide strong guarantees on their operations. A higher-level operation implemented in terms of the strong-guarantee operations may achieve only weak guarantees.

## Safety guarantees in Audacity <a href="#safety_guarantees_in_audacity" id="safety_guarantees_in_audacity"></a>

Operations on an Audacity project might fail for reasons such as i/o errors or the user cancelling a progress dialog. There is no attempt to recover from exhaustion of memory. For recoverable failures:

* Editing operations that, when successful, can be undone and redone, supply a strong guarantee that the state of the project before the attempted operation is restored.
* An exception to that is recording, which guarantees that the project will save some initial portion of the sound, captured before the error was detected.
* Saving operations guarantee that a formerly saved project is not overwritten and no new project is created.
* Export operations guarantee that previously existing files are not overwritten and no new but unusable files are created.

What follows describes the strategy to achieve these guarantees.

Many errors are signalled by raising exceptions. It is easier not to test and propagate error values through many levels of stack. These levels, though not checking errors, still must be written with some care, including but not limited to the use of RAII as described above. (One might say each function must implement a strong guarantee for its net resource allocation. Likewise for other side-effects that outlast its invocation, but with some exemptions described below.) Such techniques are sufficient to supply the guarantees for saving and exporting.

For editing operations on the internal state of the Audacity project, it is more complicated.

Exceptions are caught in numerous places by the template function GuardedCall, which wraps a lambda expression in a try-catch block. These include places where a no-throw guarantee is required, such as in callback functions that are passed to third-party libraries, or where exceptions are caught in a worker thread, as during recording.

Not all exceptions will be caught by GuardedCall. Audacity relies on a catch block of last resort in the event loops implemented in wxWidgets. The function AudacityApplication::OnExceptionInMainLoop is called back from inside the catch block and handles the exception.

If the caught exception is of a class derived from AudacityException, then all of these handlers use wxEventHandler::CallAfter to enqueue delayed actions, to be done always in the main thread at the next idle time of the event loop. It is here that the previous state of the project is restored, rolling back to the last committed state of the Undo history; or in case of recording, that asynchronous recording action is stopped and partial results are committed to the history. Then the user is notified of some details of the cause of failure in a way determined by the exception object. (If the caught exception is of some other class, recovery is not implemented, and in most cases the program will crash.)

Therefore, the many functions that implement editing operations by changing the undoable state of the project are relieved of the responsibility to provide strong guarantees. Generally, all that is needed is the very weak guarantee that modified Tracks and other objects remain destructible.

This is most pertinent to the classes WaveTrack, WaveClip, and Sequence that frequently write BlockFile objects and are exposed to the risk of i/o errors. It is commented in each of their mutative operations how strong a guarantee is provided.

Sequence provides a strong guarantee for everything, even if that exceeds requirements. It is uncomplicated to do this, as Sequence is essentially an array of samples with a persistent back-up, for which the build and swap pattern is sufficient.

WaveClip, which may recursively contain other WaveClips, each with its own Sequence, and WaveTrack, which may contain multiple WaveClips, do not always implement strong guarantees. It is documented in comments where more than a basic weak guarantee was achievable, though usually only this basic guarantee is really needed. The exceptions to this are the appending operations, where some stronger promise is needed to support partial success in recording. Previous contents will be preserved, and some initial (possibly empty) portion of the data intended for appending will be appended.
