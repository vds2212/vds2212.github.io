[toc](..)

# Basic Configuration

In this paragraph I propose to explain how to change a number of settings to make your first steps with Vim bearable.

To change the Vim configuration you have to edit a file that we call in this document `vimrc` but that could be in reality `vimrc`, `.vimrc`,
`_vimrc` or `init.vim` depending of the Operating System that you are using (Linux, macOS, Windows) or the flavor of Vim
that you are using (gVim, Neovim, ..)

## Where is the vimrc file?

### Linux or macOS + Vim

- `~/.vimrc`
- `~/.vim/vimrc` alternatively (My Favorite)

### Linux or macOS + Neovim

- `~/.config/nvim/init.vim` alternatively (My Favorite)

Or if `XDG_CONFIG_HOME` is defined
- `$XDG_CONFIG_HOME/nvim/init.vim`

### Windows + Vim

- `~\_vimrc`
- `~\vimfiles\vimrc` alternatively (My Favorite)

### Windows + Neovim

- `~\AppData\Local\nvim\init.vim `

Or if `XDG_CONFIG_HOME` is defined
- `%XDG_CONFIG_HOME%\nvim\init.vim`

## The basic 

This simple `vimrc` makes Vim:

- Hide the Ex mode
- Show the key command buffer
- Give you 2 seconds to complete complex key command
- Use the system clipboard
- Truly multi buffer

```
" A set of default settings considered very reasonable by the Vim developpers.
set nocompatible

" Hide the Ex mode
map Q gq
sunmap Q

" Make the current key command buffer visible
" (a keystroke buffer at the bottom right of Vim screen)
set showcmd         " display incomplete commands

" Give you two second to complete complex key command made of several key strokes
set timeoutlen=2000

" Make sure that by yank and paste operation use the system register (clipboard)
if has('unix')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Allow to switch between files without saving first:
set hidden

" Make past in visual mode not switching the content of the clipboard:
xnoremap p P
```

<!-- vim: set tw=120 : -->
