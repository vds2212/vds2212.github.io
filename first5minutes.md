# How to survive the first 5 minutes

## Summary

- [Use](#the_esc_key_is_difficult_to_reach) <kbd>Ctrl [</kbd> instead of <kbd>Esc</kbd> it is easier to reach
- If you get lost in unwanted modifications [undo](#undo___redo_modifications) them using `u` (or redo them using <kbd>Ctrl r</kbd>)
- If you get lost in unwanted motion [undo](#undo___redo_motions) them using <kbd>Ctrl o</kbd> (or redo them using <kbd>Ctrl i</kbd>)
- If you get lost in modes type <kbd>Ctrl c</kbd><kbd>Ctrl c</kbd> it will bring back to Normal mode
- To replace the content of region by the content of the clipboard use the Visual mode


- [First minute](#first_minute)
- [Next minute](#next_minute)

## First minute

Vim is modal editor.  That means that Vim is behaving differently depending on the mode it is in.  Vim starts in Normal
mode.  In Normal mode you can issue Vim keyboard command (typically to navigate through your file e.g.: `h`, `j`, `k`,
`l`).  To type text you have to switch to Insert mode.  There are many ways to switch to insert mode. One way is to use
the Vim keyboard command `i`.  In Insert mode you can type text and edit your file.  To back from Insert mode hit
<kbd>Esc</kbd>.  To save your file you have to issue the Vim command `:w`.  To to quit Vim you have to issue the Vim
commnand: `:q!`.  To switch to Command mode you have to hit `:` After the command has been executed you'll be back in
Normal mode.

### Summary

Normal to Insert: `i `

Insert to Normal: <kbd>Esc</kbd>

Save: `:w`<kbd>Enter</kbd>

Quit: `:q!`<kbd>Enter</kbd>

### Hindrances

At this stage there is already a number hindrances that hit you.

#### The Esc key is difficult to reach

There are a number of alternatives to the <kbd>Esc</kbd> key:
- <kbd>Ctrl-[</kbd> (my favorite)
- <kbd>Ctrl-c</kbd> not equivalent to <kbd>Esc</kbd> but used by some
- Remap the <kbd>Capslock</kbd> to <kbd>Esc</kbd> require OS specific modification
- Add `inoremap jk <Esc>` to `vimrc` and use `jk` in insert mode (see [How to Customize Vim](customize.md))

## Next minute

By now you can edit text switch to Normal mode and issue some key command to move through the text and to perform some text
modifications more on that on [First Day with Vim](firstday.md).

### Get lost in modifications or motions

Sometimes, probably because you miss type a command, you modify your files in a way to puzzle you.
There are numerous key commands that are very powerful and transform your text substantially or move you somewhere
completely unexpected.

#### Undo / Redo modifications

You can undo a modification using the `u` key command.

You can redo a modification using the <kbd>Ctrl r</kbd> key command.

#### Undo / Redo motions

You can undo a motion using the <kbd>Ctrl o</kbd> key command.

You can redo a motion using the <kbd>Ctrl i</kbd> key command.

### Get Lost in Modes

Sometimes, probably because you miss type a command, Vim starts to behave oddly.
This is most probably because you have switched to another mode.

#### Go Back to Normal Mode

If you hit <kbd>Ctrl c</kbd><kbd>Esc</kbd> (or <kbd>Ctrl c</kbd> <kbd>Ctrl c</kbd>) Vim will be back in Normal mode
99.99% of the time.

#### Find the Vim Current Mode

-   Add the `set showmode` to your `vimrc` file
-   Install a status line plugin like
    - [vim-airline](https://github.com/vim-airline/vim-airline)
    - [powerline](https://github.com/powerline/powerline)
    - [lightline.vim](https://github.com/vim-airline/vim-airline) (My Favorite)

Keyboard mistakes and unexpected consequences

Solutions:

-   Show the current command (:set showcmd)
-   Lean how to undo
    -   Go home: Ctrl-c Ctrl-c
    -   Undo: u
    -   Move back to your place: Ctrl-o or Ctrl-i
-   Get more precise in your usage of the keyboard

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

<!-- vim: set tw=120 : -->
