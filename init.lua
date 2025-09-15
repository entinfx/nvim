-- Use Vim's .vimrc instead of init.lua
-- vim.cmd('source ./.vimrc')

-- Require user config files (~/.config/nvim/lua/config/)
require('config.keybinds')
require('config.options')

-- Require Lazy Package Manager config file
require('config.lazy')

-- Set default color scheme
vim.o.termguicolors = false
vim.cmd('colorscheme garden')

