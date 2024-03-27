return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = { style = "night" },
    },
    {
        "rebelot/kanagawa.nvim",
        opts = {
            colors = {
                theme = {
                    dragon = {
                        ui = {
                            bg_gutter = "none",
                            bg = "none",
                        },
                    },
                },
            },
        },
    },
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
}
