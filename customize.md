# How to Customize Vim

## vimrc

The main customization point of Vim is the `vimrc` file.
The location of that file depends on the Operating System (Linux, Windows, macOS) your are using and the version of Vim
you are using (Vim, Neovim).

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

<!-- vim: set tw=120 : -->
