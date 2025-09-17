-- Tabs
vim.opt.expandtab = true -- insert space characters when <tab> is pressed
vim.opt.softtabstop = 4 -- number of spaces to insert when <tab> is pressed
vim.opt.tabstop = 4 -- width of tab characters
vim.opt.shiftwidth = 4 -- width of level of indentation
vim.opt.smartindent = true
vim.opt.autoindent = true


-- General
vim.opt.wildmenu = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'


-- Line numbers
--
-- Custom statuscolumn separator:
--
-- %s - Warnings/errors field (used by LSP)
-- %= - Align content to the right
-- %l - Line number
-- %#StatusColumnSeparator# - Custom highlight group
vim.opt.statuscolumn = "%s%=%l %#StatusColumnSeparator#│ "

vim.opt.number = true


-- Invisible Characters
vim.opt.listchars = {
    eol = '¬',
    space = '•',
    tab = '> '
}


-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true


-- Searching
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true


-- Status Line
vim.opt.laststatus = 2 -- Always display the statusline in all windows

local statusline = {
    -- %<1-5>* - custom defined highlight group in the colorscheme file:
    --           User1 - User5

    --[[
    '%2* %{&ff}%*',  -- file format
    '%2* %y %*',     -- file type
    '%1* %f %*',     -- file path [use %<%F for full path]
    '%4*%m%*',       -- modified flag
    '%1*%=%*',       -- -->
    '%5*Ln: %l%*',   -- current line
    '%5*/%*',        -- '/'
    '%5*%L%*',       -- total lines
    '%1* %*',        -- ' '
    '%4*Col: %v%* ', -- current column
    '%0*'            -- reset color
    --]]

    ' %{&ff}%*',  -- file format
    ' %y %*',     -- file type
    ' %f %*',     -- file path [use %<%F for full path]
    '%m%*',       -- modified flag
    '%=%*',       -- -->
    'Ln: %l%*',   -- current line
    '/%*',        -- '/'
    '%L%*',       -- total lines
    ' %*',        -- ' '
    'Col: %v%* ', -- current column
}

vim.opt.statusline = table.concat(statusline, '')


-- Floating windows
vim.opt.winborder = 'rounded'


-- Delete trailing whitespace (Vimscript)
vim.cmd([[
    function! <SID>StripTrailingWhitespaces()
        let l = line(".")
        let c = col(".")
        %s/\s\+$//e
        call cursor(l, c)
    endfun

    autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
]])


-- Netrw
-- netrw_banner = 0
-- netrw_liststyle = 3
-- netrw_browse_split = 0
-- netrw_keepdir = 0
-- netrw_winsize = 35
-- netrw_localcopydircmd = "cp -r"

-- NERDTree
-- NERDTreeWinPos = "right"
-- NERDTreeWinSize = 40

