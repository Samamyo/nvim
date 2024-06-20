return {
    {
        "fedepujol/move.nvim",
        config = function()
            require("move").setup({
                line = {
                    enable = true, -- Enables line movement
                    indent = true, -- Toggles indentation
                },
                block = {
                    enable = true, -- Enables block movement
                    indent = true, -- Toggles indentation
                },
                word = {
                    enable = true, -- Enables word movement
                },
                char = {
                    enable = false, -- Enables char movement
                },
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
    {
        "stevearc/conform.nvim",
        opts = {},
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    -- Conform will run multiple formatters sequentially
                    -- python = { "black" },
                    -- Use a sub-list to run only the first available formatter
                    c = { "clangd" },

                    -- zig = { "/usr/local/bin/zls" },
                },
                formatters = {
                    clangd = {
                        command = "clangd"
                    },
                },
            })
        end,
    },
}
