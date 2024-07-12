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
}
