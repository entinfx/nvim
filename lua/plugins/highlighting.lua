-- Description
--
-- Various plugins for visual tweaks and highlighting:
--
-- * "brenoprata10/nvim-highlight-colors"
--   Highlights hex, rgb, hsl, and other color codes. Requires
--   'vim.opt.termguicolors = true'
--
-- * "lukas-reineke/indent-blankline.nvim"
--   Highlights indentation levels.

return {
    {
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            indent = {
                char = "╎"
                -- "╎"
                -- "╏"
                -- "┆"
                -- "┊"
                -- "┋"
            }
        }
    }
}

