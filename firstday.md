[toc](..)

# Survive the First Day in Vim

## Summary

- To replace a region of text by the clipboard content use Visual select and the key command: `P`.
- To open a file or switch to another buffer a Fuzzy finder like
  [Fzf.vim](https://github.com/junegunn/fzf.vim) or
  [Vim-Clap](https://github.com/liuchengxu/vim-clap)
  if helping a lot
- But the standard `:e` and `:b` with <kbd>Ctrl D</kbd> is a nice start


## How to replace the text of a region by the content of the clipboard?

One of the big difference with other text editor is that Vim has no delete action but only a cut action.
This mean that when you want to replace the content of a region the standard approach of copy, delete, past fails. It
will be translated in Vim into copy, cut, past, the cut action will cancel the copy action and the operation will be
blank (unless you use another register for the cut action e.g.: `"_x`)


### Solution:

- Copy the text you want to use
- Visually select the region you want to replace
- Use the key command `P` to replace the region by the content of the clipboard


## How to open a new file?

### Solutions:

- Use a fuzzy browser (like [Fzf.vim](https://github.com/junegunn/fzf.vim) or [Vim-Clap](https://github.com/liuchengxu/vim-clap))
- Use `'0` to open the last opened file at the start of the session
- Use `:e ` <kbd>Ctrl d</kbd> to get suggestions of file to open
  (works best with [Wilder](https://github.com/gelguy/wilder.nvim))


## How to switch between buffers?

### Solutions:

- Use a fuzzy browser (like [Fzf.vim](https://github.com/junegunn/fzf.vim) or [Vim-Clap](https://github.com/liuchengxu/vim-clap))
- Use `:b#` to switch to the previous buffer
- Use `:b ` <kbd>Ctrl d</kbd> to get suggestions of buffers to switch to
  (works best with [Wilder](https://github.com/gelguy/wilder.nvim))


## The undo function is quit coarse

### Solution:

-   Switch more often between the Insert mode and the Normal mode
-   Accept it.

<!-- vim: set tw=120 : -->
