-- Description
--
-- Fast and advanced code parsing that integrates with color schemes and many
-- plugins.

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "comment", "c", "cpp", "lua", "luadoc", "vim", "vimdoc",
                "query", "elixir", "heex", "ruby", "javascript", "tsx",
                "typescript", "html", "css", "scss", "make", "cmake", "cuda",
                "glsl", "hlsl", "json", "objc", "sql", "xml", "yaml"
            },
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}

