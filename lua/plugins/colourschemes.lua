return {

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true, -- do not set background color
            })
            -- vim.cmd.colorscheme("catppuccin")
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        -- lazy = true,
        name = "kanagawa",
        -- priority = 1000,
        config = function()
            require("kanagawa").setup({
                compile = true,
                transparent = true,
            })
            vim.cmd.colorscheme("kanagawa")
        end,
    },

    -- {
    --     "vague2k/vague.nvim",
    --     config = function()
    --         require("vague").setup({
    --             -- optional configuration here
    --         })
    --         -- vim.cmd.colorscheme("vague")
    --     end,
    -- },

    {
        "neanias/everforest-nvim",
        lazy = true,
        config = function()
            require("everforest").setup({
                transparent_background_level = 2,
                background = "light",
            })
            -- In Lua
            -- vim.o.background = "light"
            -- require("everforest").load()
        end,
    },
}
