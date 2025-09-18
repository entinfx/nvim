return {

    -- Shell command to launch language server
    cmd = { 'lua-language-server' },

    -- Languages the server should respond to
    filetypes = { 'lua' },

    -- List of file names or directories to determine the root directory of the
    -- project. Nesting indicates priority grouping.
    root_markers = {
        {
            '.luarc.json',
            '.luarc.jsonc',
        },

        '.git',
    },

    -- Specific settings to send to the LS. The schema is server defined.
    --
    -- LuaLS is strict by default and some configuration is needed to work with
    -- Neovim:
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',                  -- Neovim uses LuaJIT
                path = vim.split(package.path, ";"), -- Use Neovim's Lua path
            },

            diagnostics = {
                -- Recognize Neovim-specific globals
                globals = { "vim" },
            },

            workspace = {
                -- Make LuaLS scan Neovim's runtime files
                library = {
                    vim.env.VIMRUNTIME .. "/lua",
                    -- "${3rd}/luv/library", -- Optional: for luv (Neovim libuv)
                },

                checkThirdParty = false,
            }
        },
    },
}
