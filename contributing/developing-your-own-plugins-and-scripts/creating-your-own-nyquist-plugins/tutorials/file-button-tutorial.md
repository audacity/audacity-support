---
description: >-
  This tutorial provides a description and examples of how to create and use a
  File-Button Widget in Nyquist Plugins.
---

# File Button Tutorial

The File-Button Widget provides a means to select one or more files via a graphical file browser.

## Overview

For some plug-ins it is necessary to read from or write to files. In order to do this, it is necessary to define precisely which file is required, where the file is located, and whether it is required for read access or write access (for read access, the file must exist, whereas for write access this is not always a requirement).

Prior to the availability of the File-Button Widget, file names could be hard coded into the Nyquist script, or a text box could be provided for the user to enter the name of the file. Hard coded file paths lack flexibility, are platform specific (a path starting with "C:\\" does not work on Mac or Linux), and may point to locations that do not exist on some machines. While a text box may provide a better solution than hard coding a file path, it remains inconvenient and prone to user error, especially for long file paths. The File-Button Widget was introduced in Audacity 2.3.0 to solve these problems, by providing access to a graphical "file browser window" similar to using **File menu > Open** or **File menu > Save** in other applications.

## Syntax and Appearance <a href="#syntax_and_appearance" id="syntax_and_appearance"></a>

<figure><img src="../../../../.gitbook/assets/image.png" alt=""><figcaption><p>File button widget example</p></figcaption></figure>

The File-Button Widget, as shown above, has an editable text input field that allows a file path to be typed (or pasted). After the text input field is a button that launches a file browser. Below is an example of the familiar file browser window on Windows 10.

<figure><img src="../../../../.gitbook/assets/image (6).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Note that selecting a file in this file browser does NOT open the file.&#x20;

When a file is selected in the file browser window, the full name and path of the selected file is passed to the Nyquist script as the value of the File-Button Widget variable.
{% endhint %}

## Widget Arguments (Parameters) <a href="#widget_arguments_parameters" id="widget_arguments_parameters"></a>

The syntax for creating a File-Button Widget is similar to all other [Nyquist Plug-in widgets](../widgets-reference.md).

{% code overflow="wrap" lineNumbers="true" %}
```
 ;control variable-name "text-left" file "button-text" "default-file-path" "wildcard-filters" "flags"
```
{% endcode %}

* **;control** : Start of header statement. The leading semicolon ";" (or dollar character "$") tells Nyquist to treat this line as a comment and ignore it. The keyword "control" tells Audacity to create a GUI widget to be used by the Nyquist script.
* **variable-name** : \[symbol] The variable name that will be set.
* **text-left** : \[string] Text on the left side of the widget.
* **file** : \[keyword] Declares a "file" type widget.
* **button-text** : \[string] Text on the button. Normally this would be two double quotes (an empty string), which gives the default text: "Select a file"
* **default-file-path** : \[string] Default file path for the file browser. This supports keywords to aid cross-platform support.
* **wildcard-filters** : \[string] This is a magic "wildcard" string that follows the same syntax as [wxFileDialog](https://docs.wxwidgets.org/3.1/classwx\_file\_dialog.html).\
  The string comprises pairs of "description", pipe symbol ("|"), "file extension(s)". Multiple file extensions may be listed, separated by semi-colons (";").
* **flags** : \[string] This is a "magic" string that sets options for the file browser, following the same syntax as [wxFileDialog](https://docs.wxwidgets.org/3.1/classwx\_file\_dialog.html).

### Magic Strings <a href="#magic_strings" id="magic_strings"></a>

The final three arguments, _default-file-path_, _wildcard-filters_, and _flags_, use special keywords that define the behavior of the File-Button Widget and the associated File Browser.

* Note that unlike Nyquist symbols, these keywords are case sensitive.
* The "Windows", "macOS" and "Linux" examples below refer to standard file paths for modern operating systems, though may be different on some machines.
* "\<username>" is the name of the computer user's account (log-in name).

#### **Default File Path**

"default file path" supports the keywords:

* **\*home\*"** : The current user's ["home" directory](https://en.wikipedia.org/wiki/Home\_directory).
  * **Windows:** C:\Users\\`<username>`\\
  * **macOS:** /Users/`<username>`/
  * **Linux:** /home/`<username>`/
* **\~** : An alias for **\*home\***.
* **\*default\*** : The default "Documents" path.
  * **Windows:** C:\Users\\`<username>`\Documents\Audacity
  * **macOS:** /Users/`<username>/`Documents/
  * **Linux:** /home/`<username>`/Documents/
* **\*export\*** The default "Export" path.
  * **Windows:** C:\Users\\`<username>`\Desktop\\
  * **macOS:** /Users/`<username>`/Documents/
  * **Linux:** /home/`<username>`/Documents/
* **\*save\*** The default "Save" path.
  * **Windows:** C:\Users\\`<username>`\Desktop\\
  * **macOS:** /Users/`<username>`/Documents/
  * **Linux:** /home/`<username>`/Documents/
* **\*config\*** The default configuration file directory.
  * **Windows:** C:\Users\\`<username>`\AppData\Roaming\audacity\\
  * **macOS:** /Users/`<username>`/Library/Application Support/audacity/
  * **Linux:** /home/`<username>`/.audacity-data/

These keywords may be combined with a file name to specify which file to open. For example, if you want the default file to be called "sample-data.txt", and you want the default location to be the default "Documents" path, you could write the default file path parameter as: `"*default*/sample-data.txt"`.&#x20;

{% hint style="warning" %}
File paths should be quoted with double quotes, otherwise spaces in file name will fail. If no file path is provided, the default is "default". If no file name is provided, the default file name is "untitled". The default file extension is taken from the wildcard-filters.
{% endhint %}

#### **Wildcard Filters**

The "wildcard-filters" determine which file types are visible in the file browser. An empty string will default to all files types.

This "magic string" follows the same syntax as [wxFileDialog](https://docs.wxwidgets.org/3.1/classwx\_file\_dialog.html). The string comprises pairs of "description" and "file extension(s)", separated by a pipe character ("|"). Multiple file extensions may be listed, separated by semi-colons (";").

**Example:**

&#x20;`"Text file|*.txt;*.TXT|All files|*.*;*"`

In this example we have two pairs:

1. **Text file|\*.txt;\*.TXT**: \
   Description: "Text file" \
   File extension "\*.txt" matches: "anything.txt" \
   File extension "\*.TXT" matches: "anything.TXT"
2. **All files|\*.\*;\***: \
   Description: "All files" \
   File extension "\*.\*" matches: "anything.anything" \
   File extension "\*" matches: "anything"

#### **Flags**

The magic "flags" string is similar to the "Styles" options in [wxFileDialog](https://docs.wxwidgets.org/3.1/classwx\_file\_dialog.html). Flags may be an empty string, a single keyword, or a comma separated list of keywords.

Available keywords are:

* **open** : This is a "file open" dialog. Usually this means that the default button's label of the dialog is "Open". Cannot be combined with "save"
* **save** : This is a "file save" dialog. Usually this means that the default button's label of the dialog is "Save". Cannot be combined with "open".
* **overwrite** : For save dialog only: prompt for a confirmation if a file will be overwritten.
* **exists** : For open dialog only: the user may only select files that actually exist
* **multiple** : For open dialog only: allows selecting multiple files.

**Example:** Open file dialog for one or more files that must exist.

&#x20;`"open,exists,multiple"`

**Example:** Save file dialog with overwrite prompt if file exists.

&#x20;`"save,overwrite"`

### Return Values <a href="#return_values" id="return_values"></a>

The File-Button widget attempts to create a valid file path as a string, and assign it to the "variable-name" symbol.

* If a single file is selected using the file browser, then the widget text box is updated to show the full path to the selected file.
* If multiple files are selected using the file browser (requires "multiple" flag to be set), each file path is enclosed in double quotes.\
  Note: The list of file paths is NOT a LISP list. It is still a string. See example below for how to deal with multiple file paths.
* If the file path text box is empty, then the widget variable symbol is set to the default path.
* If the file path text box contains only a file name (or any string that is not a path), then it is prepended with the default path and assigned as the value of the widget variable.

### Error Messages <a href="#error_messages" id="error_messages"></a>

In the event of programming or user errors, the File-Button Widget may return an error message. Understanding these messages can be a great help when debugging a new plug-in.

* **`<Path>`is not a valid file path.**\
  ****This error occurs if the returned file path is invalid, for example, if the directory does not exist. : This error is most likely to be due to the user manually editing the file path text box with an invalid file path.
* **Mismatched quotes in `<string>`**\
  ****When the "multiple" flag is set, the file browser returns a list of quoted strings for each path. This error is thrown if the opening quotes do not have matching closing quotes. : This error is most likely to be due to the user manually editing the file path text box and missing one or more quote characters.
* **Invalid wildcard string in 'path' control. Using empty string instead.**\
  ****This error occurs if the 'wildcard' magic string is malformed. : This is a programming error. Check the syntax of your [wildcard](broken-reference) string.

#### Examples

**Simple "Open File" Example**

&#x20;`;control var "Select file to open" file "" "" "" ""`

In this example. only the variable ("var") and the "text-left" ("Select file to open") are explicitly set. Empty strings are passed to the other parameters, so they will all take default values.

In reverse order: the default "flag" is "open", the default wildcard filter is "All files", the default file path is "\*default\*", the default file name is "untitled", and the default button text is "Select a file".

**Simple "Save File" Example**

&#x20;`;control var "Select file to save" file "" "" "" "save"`

Very much like the simple "open file" example above, except this one is selecting a file for writing.

**Advanced "Open File" Example**

&#x20;`;control filename "Select file" file "" "*default*/sample-data.txt" "Text file|*.txt;*.TXT|All files|*.*;*" "open,exists"`

Unlike the previous examples, all parameters are explicitly defined. The default file name is "sample-data.txt", and by default the file browser filters the file list to show Text files only (ending in ".txt" or ".TXT"). The file browser also has an option to show all files.

Note that the file browser is created by the underlying operating system, so there are subtle differences across platforms. The "exists" flag is only relevant for file browsers that allow you to type the file name. For a purely graphical browser it is not possible to select a file that does not exist.

Note also that the "exists" flag only affects the file browser - it does not prevent the user typing a non-existent file name in the file path text field. If the plug-in _requires_ the file to exist, then the plug-in code should run a test to ensure that it does. A simple test for the existence of a file, is to try and open it, for example:

```lisp
(defun test ()
(if (setf f (open filename))
(close f)
(throw 'error "File does not exist"))
(print "All good"))

(catch 'error (test))
```

**Advanced "Save File" Example**

&#x20;`;control filename "Export data to" file "Select a file" "*default*/sample-data.txt" "Text file|*.txt;*.TXT|CSV files|*.csv;*.CSV|HTML files|*.html;*.HTML;*.htm;*.HTM|All files|*.*;*" "save,overwrite"`

In this example, all parameters are explicitly defined:

* **variable-name**: filename
* **text-left**: "Export data to"
* **button-text**: "Select a file"
* **default-file-path**: "\*default\*/sample-data.txt"
* **wildcard-filters:** \
  ****Text file|\*.txt;\*.TXT| \
  CSV files|\*.csv;\*.CSV| \
  HTML files|\*.html;\*.HTML;\*.htm;\*.HTM| \
  All files|\*.\*;\*"
* **flags** : "save,overwrite"

The [wildcard filters](broken-reference) provide options in the file browser to show either text files (.txt or .TXT), which is the default, or CSV files (.csv pr .CSV), or HTML files (.html, or .HTML, or .htm, or .HTM), or "All files" (any file name).&#x20;

{% hint style="warning" %}
Note that on Windows, file extensions are not case sensitive, but Linux, and some Mac computers are case sensitive, so for cross-platform portability it is recommended to use both upper and lower case file name extensions.
{% endhint %}

**Open Multiple Files**

`;control var "Select one or more files" file "Select" "*default*" "Text file|*.txt;*.TXT|All files|*.*;*" "open,multiple"`

In this example, the variable that will be set is `var`, the default directory is `*default*`, and the default file type filter is for text files (with an option to show all files). Unlike the previous versions, the file browser may be used to select multiple files (requires Audacity 2.3.1 or later).&#x20;

{% hint style="info" %}
If the users selects one or more files using the file browser, then each file path will be enclosed in double quotes. However, the user could type in the path to a single file without quotes, or, as in this case, the default could be an unquoted single file path, so we should check for and support both versions.
{% endhint %}

To extract all of the the paths from the returned string, we first need to convert it to a more useful form, such as a LISP list:

`(setf path-string`\
`(format nil "(list ~s )" (string-trim "\"" var)))`

Here we have stripped the outer double quotes (if present), and then formatted it into a string that describes a LISP list. So, for example, if the selected files were: "C:\first.txt" and "C:\second.txt", then the value of `var`would be `""C:\first.txt""C:\second.txt""`, and the value of `path-string` would be `"(list "C:\first.txt" "C:\second.text")"`.&#x20;

{% hint style="warning" %}
Important: Note that this is still only a string value, not a LISP list.
{% endhint %}

To convert this string into a LISP list, we need to evaluate the string as if it were code. Fortunately in Audacity 2.3.1 and later, there is an easy way to do this with the `EVAL-STRING` function:

&#x20;`(setf paths (eval-string path-string))`

`paths` is now a valid LISP list of strings, which we can iterate through like this:

`(dolist (p paths)`\
`(print p))`

The complete example that can run in the [Nyquist Prompt](https://manual.audacityteam.org/man/nyquist\_prompt.html):

```lisp
;version 4
;type tool
;debugflags trace

;control var "Select one or more files" file "Select" "*default*" "Text file|*.txt;*.TXT|All files|*.*;*" "open,multiple"

(setf path-string (format nil "(list ~s )" 
  (string-trim "\"" var)))

(setf paths (eval-string path-string))

(dolist (p paths "")
  (print p))
```

## Example Applications <a href="#example_applications" id="example_applications"></a>

These example applications may be run in the [Nyquist Prompt](https://manual.audacityteam.org/man/nyquist\_prompt.html), or could be converted to plug-ins by adding full plug-in headers.&#x20;

{% hint style="info" %}
These code examples are excessively commented so as to explain what they are doing. For production code, comments should be concise and provide clarification where the intent is not obvious. As far as possible, the code should be self explanatory, but as this is intended for learning purposes, additional explanatory comments are included.
{% endhint %}

### Writing to a File <a href="#writing_to_a_file" id="writing_to_a_file"></a>

In this example, we use a File-Button widget to specify a file that will be written to. It is important to note that selecting the file does NOT write to the file, it only captures the file path and file name, which we then write to later in the script. The plug-in will get some information about the selected audio, and write (append) it to a file.

First we start with a couple of headers to set the syntax version and plug-in type.

`;version 4`\
`;type analyze`

Next is our File-Button widget. Note that it has the "save" flag because we are selecting a file to write to.

`;control filename "Export to" file "" "data.txt" "Text file|*.txt;*.TXT|All files|*.*;*" "save"`

The next three code lines gather the raw information that we will be writing to the file.

```lisp
;; Get data:
(setf tname (get '*track* 'name))
(setf peak (get '*selection* 'peak))
(setf rms (get '*selection* 'rms))
```

When we write to a file with Nyquist, the file is overwritten by the data that we are writing. As we want to append the new data to the file rather than overwriting it, we must first read the existing text from the file and store it in a variable. We can then write the old data, plus the new data back to the file. Here is a function that will read the contents of the file if it exists, and returns the data to the function caller.

```lisp
(defun read-file(fname)
;;; If file exists, copy its contents.
;;; Return the data, or empty string.
(setf data "")
(setf fp (open fname))
(when fp
(do ((line (read-line fp) (read-line fp)))
((not line))
(setf data (format nil "~a~a~%" data  line)))
(close fp))
data)
```

As this code is designed to work with text files, we can check that the file name ends with ".txt".&#x20;

{% hint style="warning" %}
The file name extension is NOT a reliable way to test the file type. In any situation where security is a concern, the file extension must not be relied as an indicator of the file type.
{% endhint %}

* First we assign an empty string as the value of the variable `ext`.
* If the file name is at least 4 characters long, we extract the last 4 characters and assign it as the value of `ext`.
* We can then apply a [case insensitive string comparison](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-257.htm). If `ext` is equal to **.txt**, then we assume it is a plain text file.

```lisp
;; Check file extension.
(setf ext "")
(when (>= (length filename) 4)
(setf ext (subseq filename (- (length filename) 4))))

(if (string-equal ext ".txt")
...
```

So now we can run our main program, which is within a program [**prog**](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-202.htm) block.

* The program block begins by binding a local variable `{{inlineCode|data}}`{=mediawiki} to the data returned by the `{{inlineCode|read-file}}`{=mediawiki} function (defined above).
* Then we [open the file for writing](http://www.audacity-forum.de/download/edgar/nyquist/nyquist-doc/xlisp/xlisp-ref/xlisp-ref-190.htm).
* And then the data can be written to the open file.
* After reading or writing to a file, the file should be closed again.
* Finally we return an acknowledgment message.

```lisp
;; It looks like a text file, so let's do it...
(prog ((data (read-file filename)))
;; Open the file for writing.
(setf fp (open filename :direction :output))
;; Use the 'format' command to write to the file pointer 'fp'.
(format fp "~aTrack ~s: Peak level: ~a  RMS level: ~a~%"
data tname peak rms)
;; Close the file.
(close fp)
(format nil "Data exported to:~%~s" filename))
```

If the file did not end with **.txt**, we return an error message.

```lisp
;; It doesn't look like a text file, so throw an error.
"Error.\nUnsupported file type.")
```

**The Complete Code:**

```lisp
;version 4
;type analyze

;control filename "Export to" file "" "data.txt" "Text file|*.txt;*.TXT|All files|*.*;*" "save"

;; Get data:
(setf tname (get '*track* 'name))
(setf peak (get '*selection* 'peak))
(setf rms (get '*selection* 'rms))


(defun read-file(fname)
  ;;; If file exists, copy its contents.
  ;;; Return the data, or empty string.
  (setf data "")
  (setf fp (open fname))
  (when fp
    (do ((line (read-line fp) (read-line fp)))
        ((not line))
      (setf data (format nil "~a~a~%" data  line)))
    (close fp))
  data)


;; Check file extension.
(setf ext "")
(when (>= (length filename) 3)
  (setf ext (subseq filename (- (length filename) 4))))

(if (string-equal ext ".txt")
    ;; It looks like a text file, so let's do it...
    (prog ((data (read-file filename)))
      ;; Open the file for writing.
      (setf fp (open filename :direction :output))
      ;; Use the 'format' command to write to the file pointer 'fp'.
      (format fp "~aTrack ~s: Peak level: ~a  RMS level: ~a~%"
              data tname peak rms)
      ;; Close the file.
      (close fp)
      (format nil "Data exported to:~%~s" filename))
    ;; It doesn't look like a text file, so throw an error.
    "Error.\nUnsupported file type.")
```

### Reading Multiple Files <a href="#reading_multiple_files" id="reading_multiple_files"></a>

This is an _advanced_ example that uses the File-Button widget to read data from one or more text files. Text handling is not one of Nyquist's strengths (Nyquist is primarily designed for handling audio), hence parsing the text file data is quite complex.

In this example, we will import (read) labels from one or more text files.&#x20;

{% hint style="info" %}
For simplicity, we will deal only with the basic label format and not support "spectral" labels.&#x20;

The data format we will use is compatible with [exported labels](https://manual.audacityteam.org/man/importing\_and\_exporting\_labels.html), provided that [Spectral Selections](https://manual.audacityteam.org/man/spectral\_selection.html) are NOT used.
{% endhint %}

For this plug-in, we will specify that the label data file has one label definition per line, and each label definition has a start time (in seconds), and end time (in seconds) and optional label text. The numbers and optional label text may be separated by spaces or tabs. The data should be saved as plain text, with a ".txt" file extension.

**Example Data:**

```
12.427844   12.427844   Hello
39.320883   52.495756   World
63.769100   63.769100
79.524618   79.524618   Hi there
```

**The Complete Code:**

```lisp
;version 4
;type analyze

;control filepaths "Select one or more files" file "Select" "*default*/Label Track.txt" "Text file|*.txt;*.TXT|All files|*.*;*" "open,multiple"


(defun get-files(txt)
  ;;; Convert string of file paths to LISP list.
  ;;; Return list.
  (let* ((txt (string-trim "\"" txt))
         (txt (format nil "(list ~s )" txt)))
    (eval-string txt)))


(defun label-from-text(txt)
  ;;; 'txt' is a line read from the file. It must be formated as:
  ;;; "number number string"
  ;;; Each label needs to be a LISP list  in the form:
  ;;; (LIST  number number [string])
  ;;; Return a properly formatted label from a line of text.
  (let ((newtxt "")
        (labeltext nil)
        (isnumber nil)
        (index 0))
    ;; Label text must be double quoted.
    (dotimes (i (length txt))
      (setf ch (char txt i))
      (cond
       (labeltext
          ;we are in the label text region, so just add the character.
          (setf newtxt (format nil "~a~a" newtxt ch)))
       ((and (< index 2) ;two numbers expected.
             (or (char= ch #\.)
                 (digit-char-p ch)))
            (setf isnumber t)
            (setf newtxt (format nil "~a~a" newtxt ch)))
       ;; Elements may be delimited by spaces or tabs.
       ((or (char= ch #\space)
            (char= ch #\tab))
          (when isnumber ;previous character was numeric.
            (incf index)
            (setf isnumber nil))
          (setf newtxt (strcat newtxt " ")))
       ;; Non-space character after the two numbers is
       ;; the start of the label text.
       (t (setf labeltext t)
          (setf newtxt (format nil "~a\"~a" newtxt ch)))))
    ;; If label text exists, close the double quotes,
    ;; else add an empty string.
    (if labeltext
        (setf txt (strcat newtxt "\""))
        (setf txt (strcat newtxt "\"\""))))
  ; Convert txt to a list.
  (setf data (eval-string (format nil "(list ~a)" txt)))
  ;; Sanity check the data.
  (cond
   ((/= (length data) 3)
      (throw 'err "Error.\nFile must contain one label per line."))
   ((or (not (numberp (first data)))
        (not (numberp (second data))))
      (throw 'err "Error.\nMalformed label file.")))
  ; Return single label.
  data)


(defun openfile(filename)
  ;;; Open file with error checking.
  ;;; Return file pointer (fp).
  (setf fp (open filename))
  (when (not fp)
    (throw 'err (format nil "Error.~%~s could not be opened." filename)))
  fp)


(defun process-file (fp)
  ;;; Reads data from file pointer and create one label from each line.
  ;;; Return a list of labels.
  (let ((labels ()))
    (do ((txt (read-line fp) (read-line fp)))
        ((not txt) labels)
      (push (label-from-text txt) labels))))


(defun process()
  ;;; 'Main' function.
  ;;; Process each file path in turn and concatenate the lists of labels.
  ;;; Return all labels.
  (let ((file-list (get-files filepaths))
        (labels ()))
    (dolist (path file-list labels)
      (setf fp (openfile path))
      (setf labels (append labels (process-file fp)))
      (close fp))))


; Call the 'main' function, and catch any errors.
(catch 'err (process))
```
