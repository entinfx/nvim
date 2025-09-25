-- Autocommands


-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",

    group = vim.api.nvim_create_augroup("HighlightYank", {
        clear = true
    }),

    callback = function ()
        vim.highlight.on_yank()
    end,
})
