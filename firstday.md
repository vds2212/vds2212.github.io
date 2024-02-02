[toc](README.MD)

# Survive the First Day in Vim

## Summary

- To replace the content of region by the content of the clipboard use the Visual mode

Now that you have survived the first 5 minutes new difficulties are in front of you.

#### Find the Vim Current Mode

-   Add the `set showmode` to your `vimrc` file
-   Install a status line plugin like
    - [vim-airline](https://github.com/vim-airline/vim-airline)
    - [powerline](https://github.com/powerline/powerline)
    - [lightline.vim](https://github.com/vim-airline/vim-airline) (My Favorite)

Lose clipboard content

Solution:

-   Always use visual mode when pasting over
-   Add: xnoremap p pgvy to your `_vimrc` file
-   Be aware that the clipboard will be lost if any delete and change
    operation is carried
-   Use specific register if it can be avoided
-   Install vim-peekaboo to help you doing that
-   Accept it :-\|

Opening file and switch between buffer

Solution:

-   User Ctrl-P
-   Map \\b to \...
-   Map \\m to \...

Closing windows and have side windows (quickfix list, NerdTree, TagBar,
etc.) taking too much space

Solution:

-   Install vim-Bbye
-   Close real buffer window with the :Bd command
-   Close side windows with the :q command

The undo function is quit coarse

Solution:

-   Switch more often between the insert mode and the normal mode
-   Accept it :-|

File open in quick fix or side bars (NerdTree, TagBar, etc.)

Solution:

- Close the quick fix as soon as you have finish with it.
- Switch back to edition window as soon as you have finish with Side Bar windows (introduce home key for that).


## Basic

How to quit Vim?

How to save your changes?

| Code   | Signification      |
|--------|--------------------|
| `:q!`  | Force quit window  |
| `:q`   | Quit window        |
| `:w`   | Save buffer        |
| `:bd`  | Close buffer       |
| `:bd!` | Force close buffer |


## Modes

-   Normal (<kbd>Esc</kbd>, <kbd>Ctrl-[</kbd>)
-   Insert (`i`, `A`, `c`, ...)
-   Visual (`v`)
-   Visual Line (`Shift-v`)
-   Visual Block (`Ctrl-v`)
-   Command (`:`)
-   Replace (`R`)

Insert a State [Diagram](Diagram)

Ctrl-\^ Equivalent to <kbd>esc</kbd>

Keyboard mistakes and unexpected consequences

Solutions:

-   Show the current command (:set showcmd)
-   Lean how to undo
    -   Go home: Ctrl-c Ctrl-c
    -   Undo: u
    -   Move back to your place: Ctrl-o or Ctrl-i
-   Get more precise in your usage of the keyboard

<!-- vim: set tw=120 : -->
