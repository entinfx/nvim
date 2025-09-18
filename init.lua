-- Use Vim's .vimrc instead of init.lua
-- vim.cmd('source ./.vimrc')

-- Require user config files (~/.config/nvim/lua/config/)
require('config.autocmd')
require('config.keybinds')
require('config.options')

-- Require Lazy Package Manager config file
require('config.lazy')

-- Require LSP setup
require('config.lsp')

