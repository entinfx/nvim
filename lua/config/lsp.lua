-- Language Server / LSP (Lanuage Server Protocol)
--
-- LSPs are set up in `lsp/`. Alternatively, you can set them up here like
-- this:
-- vim.lsp.config('lua_ls', {
--                           cmd = {...},
--                           filetypes = {...},
--                           root_markers = {...},
-- })
--
-- Default keymaps:
-- * ctrl-]          - Go to definition (ctrl-t to go back)
-- * gq              - Format selected text or object
-- * K               - Display documentation for current symbol
-- * ctrl-x + ctrl-o - In INSERT mode, trigger code completion
-- * grn        - Rename all references of current symbol
-- * gra        - List code actions available for current line
-- * grr        - List all references of current symbol
-- * gri        - List all implementations of current symbol
-- * ctrl-w + d - Show error/warning for current line


-- Enable automatic dynamic autocompletion
--
-- Creates Autocommand on 'LspAttach' event (when Neovim attaches to LS)
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function (ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)

        if not client then
            return
        end

        if client:supports_method("textDocument/completion") then
            vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })

            -- Assign <C-Space> to re-enable completion after text deletion
            vim.keymap.set("i", "<C-Space>", function ()
                vim.lsp.completion.get()
            end)
        end
    end,
})


-- Format current buffer on save
--
-- Neovim and LuaLS support '.editorconfig'.
-- Place the '.editorconfig' file in the root directory of your project to
-- specify project defaults. Format example:
--
-- ```YAML
-- [*.lua]
-- indent_style = space
-- indent_size = 4
-- ```
-- Some settings like indentation may be overridden by editor defaults.
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function (args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if not client then
            return
        end

        if client:supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = args.buf,

                callback = function ()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                end,
            })
        end
    end,
})


-- Set up diagnostic messages (warnings, errors)
vim.diagnostic.config({
    --[[virtual_text = true, -- Show inline diagnostics text
    signs = true, -- Show warning/error signs in signcolumn in the gutter
    update_in_insert = false, -- Dynamic updating (might be slow)
    severity_sort = true, -- Sort diagnostics by severity

    float = {
        border = "rounded",
        source = false,
    },--]]

    virtual_lines = {
        current_line = true,
    }
})

vim.opt.signcolumn = "yes" -- Always show signcolumn to avoid jumping
vim.lsp.enable('lua_ls')   -- Enable LSP
