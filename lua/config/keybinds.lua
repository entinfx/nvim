-- Leader key
vim.g.mapleader = " "

-- Invisible Characters
vim.keymap.set("n", "<F5>", ":set list!<CR>", { noremap = true })

-- Searching
vim.keymap.set("n", "<F4>", ":set hlsearch! hlsearch?<CR>", { noremap = true })

-- Spellcheck
vim.keymap.set("n", "<F3>", ":set spell! spelllang?<CR>", { noremap = true })

-- Netrw
-- vim.keymap.set("n", "<leader>d", "Lexplore<CR>", { noremap = true })
-- vim.keymap.set("n", "<leader>f", "Explore<CR>", { noremap = true })
-- vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { noremap = true })

-- NERDTree
-- vim.keymap.set("n", "<leader>d", ":NERDTreeToggle<CR>", { noremap = true })

-- Remap Visual Block mode
vim.keymap.set("n", "<leader>v", "<c-v>", { noremap = true })

-- Resize window shortcut
vim.keymap.set("n", "<S-Right>", ":vertical resize +1<CR>", { noremap = true })
vim.keymap.set("n", "<S-Left>", ":vertical resize -1<CR>", { noremap = true })
vim.keymap.set("n", "<S-Up>", ":resize +1<CR>", { noremap = true })
vim.keymap.set("n", "<S-Down>", ":resize -1<CR>", { noremap = true })

-- Highlight and count all occurrences of current word
local function highlight_current_word()
    local current_search = vim.fn.getreg("/")     -- current search
    local current_word = vim.fn.expand("<cword>") -- get the word under cursor

    if current_search == "\\<" .. current_word .. "\\>" and vim.opt.hlsearch:get() then
        vim.o.hlsearch = false
    else
        vim.fn.setreg("/", "\\<" .. current_word .. "\\>") -- set search to found word
        vim.o.hlsearch = true                              -- enable search highlighting

        -- local count = vim.fn.execute("%s/" .. vim.fn.escape(current_word, "/") .. "//gn")
        -- vim.notify(count, vim.log.levels.INFO)
        -- print(count)
    end
end

vim.keymap.set("n", "<leader>w", highlight_current_word, { noremap = true, silent = false })
