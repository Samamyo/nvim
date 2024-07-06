return {
    {
        "nvim-treesitter/nvim-treesitter",

        dependancies = { "nvim-neorg/tree-sitter-norg-meta" },

        build = ":TSUpdate",
        event = { "VeryLazy" },

        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({

                ensure_installed = { "lua", "norg", "c", "query", "markdown", "python" },
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = true,
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn", -- set to `false` to disable one of the mappings
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
            })
        end,
    },
}
