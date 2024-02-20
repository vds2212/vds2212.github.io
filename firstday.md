[toc](..)

# Survive the First Day in Vim

## Summary

- To replace a region of text by the clipboard content use Visual select and the key command: `P`.


## How to replace the text of a region by the content of the clipboard?

One of the big difference with other text editor is that Vim has not delete action but only a cut action.
This mean that when you want to replace the content of a region the standard approach of copy, delete, past fails. It
will be translated in Vim into copy, cut, past, the cut action will cancel the copy action and the operation will be
blank (unless you use another register for the cut action e.g.: `"_x`)


### Solution:

- Copy the text you want to use
- Visually select the region want to replace
- Use the key command `P` to replace the region by the content of the clipboard


## How to open a new file, switch between buffers?



### Solutions:

- Use a fuzzy browser (like []())
- Use `'0` to open the last opened file at the start of the session
- Use `:e ` <kbd>Ctrl d</kbd> to get suggestions of file to open
- Use `:b#` to switch to the previous buffer
- Use `:b ` <kbd>Ctrl d</kbd> to get suggestions of buffers to switch to


## The undo function is quit coarse

### Solution:

-   Switch more often between the Insert mode and the Normal mode
-   Accept it :-|

<!-- vim: set tw=120 : -->
