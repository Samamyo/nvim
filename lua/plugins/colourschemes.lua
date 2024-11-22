return {

    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                -- transparent_background = true, -- do not set background color
            })
            -- vim.cmd.colorscheme("catppuccin")
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                compile = true,
                transparent = true,
            })
            vim.cmd.colorscheme("kanagawa")
        end,
    },

    {
        "fynnfluegge/monet.nvim",
        name = "monet",
        config = function()
            require("monet").setup({
                -- dark_mode = false,
            })
        end,
    },

    {
        "neanias/everforest-nvim",
        -- lazy = true,
        config = function()
            require("everforest").setup({
                -- transparent_background_level = 2,
                background = "light",
            })
        end,
    },

    {
        "AlexvZyl/nordic.nvim",
        config = function()
            require("nordic").setup({
                transparent = {
                    bg = true,
                    float = false,
                },
            })
        end,
    },

    {
        "ilof2/posterpole.nvim",
        priority = 1000,
        config = function()
            require("posterpole").setup({
                -- config here
                transparent = true,
                colorless_bg = false, -- grayscale or not
                dim_inactive = false, -- highlight inactive splits
                brightness = -6, -- negative numbers - darker, positive - lighter
                selected_tab_highlight = true, --highlight current selected tab
                fg_saturation = 14, -- font saturation, gray colors become more brighter
                bg_saturation = 0, -- background saturation
            })
            -- vim.cmd("colorscheme posterpole")
        end,
    },
}
