return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependancies = { "nvim-neorg/tree-sitter-norg-meta" },
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = { "lua", "norg", "c", "query", "markdown" },
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = true,
            })
        end,
    },
}
