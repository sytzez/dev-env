return {
    -- {
    --     "folke/tokyonight.nvim",
    --     opts = { style = "night" },
    -- },
    -- {
    --     "rebelot/kanagawa.nvim",
    --     opts = {
    --         colors = {
    --             theme = {
    --                 dragon = {
    --                     ui = {
    --                         bg_gutter = "none",
    --                         bg = "none",
    --                     },
    --                 },
    --             },
    --         },
    --     },
    -- },
    -- {
    --   "LazyVim/LazyVim",
    --   opts = {
    --     colorscheme = "tokyonight",
    --   },
    -- },
    -- {
    --   "lukas-reineke/indent-blankline.nvim",
    --   main = "ibl",
    --   opts = {},
    -- },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "material-deep-ocean",
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            theme = "material-stealth,",
        },
    },
    {
        "marko-cerovac/material.nvim",
        priority = 1000,
        opts = {
            disable = {
                background = true,
            },
        },
    },
}
