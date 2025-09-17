# Neovim setup (v0.11.3+)


## Overview

1. [Install Neovim](https://github.com/neovim/neovim)
2. Pull 'nvim/' into `~/.config/`
3. Install dependencies required by the Telescope plugin:
    - [Neovim Telescope FZF](https://github.com/nvim-telescope/telescope-fzf-native.nvim).
      This will install automatically with the Lazy plugin manager.
    - [RipGrep](https://github.com/BurntSushi/ripgrep). This requires manual
      installation. Try `$ sudo apt-get install ripgrep` on Debian/Ubuntu.
4. Install Language Servers for LSP to work:
    - Insall [LuaLS](https://github.com/LuaLS/lua-language-server) (with 'brew')


## Color schemes

Includes 2 color schemes for Vim:
* Luna (dark)
* Garden (bright)
* Dawn (bright) - DEPRECATED

All colorscheme files are designed for a 256-color terminal (cterm). Make sure
to match your terminal background color to the Vim background color to avoid
borders (`ctermbg` of color group `normal` in `<colorscheme>.vim`).

