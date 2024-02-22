[toc](..)

# How to survive the first 5 minutes

## Summary

- [Use](#the-esc-key-is-difficult-to-reach) <kbd>Ctrl [</kbd> instead of <kbd>Esc</kbd>. It is easier to reach.
- If you get lost in unwanted modifications [undo](#undo--redo-modifications) them
  using `u` (or redo them using <kbd>Ctrl r</kbd>).
- If you get lost in unwanted motion [undo](#undo--redo-motions) them
  using <kbd>Ctrl o</kbd> (or redo them using <kbd>Ctrl i</kbd>).
- If you get lost in modes type <kbd>Ctrl c</kbd><kbd>Ctrl c</kbd>
  to [go back](#go-back-to-normal-mode) to Normal mode.
- [Hide](#hide-the-ex-mode) the `Ex` mode by adding `map Q gq` to your `vimrc` file.

## First minute

Vim is modal editor. That means that Vim is behaving differently depending on the mode it is in. Vim starts in Normal
mode. In Normal mode you can issue Vim keyboard command (typically to navigate through your file e.g.: `h`, `j`, `k`,
`l`). To type text you have to switch to Insert mode. There are many ways to switch to insert mode. One way is to use
the Vim keyboard command `i`. In Insert mode you can type text and edit your file. To go back from Insert mode to Normal
mode hit <kbd>Esc</kbd>. To save your file you have to issue the Vim command `:w`. To to quit Vim you have to issue the
Vim commnand: `:q!`. To switch to Command mode you have to hit `:` After the command has been executed you'll be back in
Normal mode.

### Summary

Normal to Insert: `i `

Insert to Normal: <kbd>Esc</kbd>

Save: `:w`<kbd>Enter</kbd>

Quit: `:q!`<kbd>Enter</kbd>

## Next minutes

By now you can edit a new text in Insert mode, switch back to Normal mode and issue some key command to move through the
text and to perform some text modifications; more on that on [First Day with Vim](firstday.md). But you already
encountered some hindrances.


## The Esc key is difficult to reach

On normal keyboard the Esc key is difficult to reach. But fortunately there are a number of alternatives to the
<kbd>Esc</kbd> key:
- <kbd>Ctrl-[</kbd> (my favorite)
- <kbd>Ctrl-c</kbd> not equivalent to <kbd>Esc</kbd> but used by some
- Remap the <kbd>Capslock</kbd> to <kbd>Esc</kbd> require OS specific modification
- Add `inoremap jk <Esc>` to your `vimrc` and use `jk` in insert mode (see [How to Customize Vim](customize.md))


## Get lost in modifications or motions

Sometimes, probably because you miss type a command, you modify your files in a way that puzzle you or bring you is some
odd places. There are numerous key commands that are very powerful and transform your text substantially or move you
somewhere completely unexpected.

### Undo / Redo modifications

You can undo a modification using the `u` key command.

You can redo a modification using the <kbd>Ctrl r</kbd> key command.

### Undo / Redo motions

You can undo a motion using the <kbd>Ctrl o</kbd> key command.

You can redo a motion using the <kbd>Ctrl i</kbd> key command.

## Get Lost in Modes

Sometimes, probably because you miss type a command, Vim starts to behave oddly. This is most probably because you have
switched to another mode.

### Go Back to Normal Mode

If you hit <kbd>Ctrl c</kbd><kbd>Esc</kbd> (or <kbd>Ctrl c</kbd> <kbd>Ctrl c</kbd>) Vim will be back in Normal mode
99.99% of the time.

### Hide the Ex mode

There is `Ex` mode and if you hit `Q` in Normal mode Vim will switch to that odd mode. Remap the `Q` to the formatting
command `gq` to avoid to go accidentally to the `Ex` mode.

If you have no `vimrc` the Vim default is to hide the `Ex` mode key command `Q`.

If you have a `vimrc` you can:
- Add `map Q gq` to your `vimrc` file (see [Basic Configuration](basicconfig.md) (My Favorite)) or
- Add `$VIMRUNTIME/defauts.vim` at the start of your `vimrc` file to get the Vim default.

### Some key commands are working

The key commands of Vim sometime includes more than one key and sometime some special keys that are difficult to reach.
By default if you don't type the sequence fast enough Vim interpret it as two key commands instead of one.

If you add `set showcmd` to your `vimrc` file Vim will display in the right corner the current interpretation buffer
(see [Basic Configuration](basicconfig.md)). This make it easier to understand where is Vim in it interpretation of the
key command.

If you want to get more time to enter the key command you can add `set timeoutlen=2000` to your `vimrc` file
(see [Basic Configuration](basicconfig.md)).

<!-- vim: set tw=120 : -->
