return {
    "nvimtools/none-ls.nvim",

    -- keys = { { "<leader>gf" } },
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.diagnostics.golangci_lint,
                -- null_ls.builtins.formatting.jq,
                -- null_ls.builtins.formatting.gofumt,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
