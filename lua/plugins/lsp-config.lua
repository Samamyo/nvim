return {
    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        -- lazy = true,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            -- "j-hui/fidget.nvim",
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            require("lspconfig").typst_lsp.setup({
                capabilities = capabilities,
                filetypes = { "typst" },
                settings = {
                    exportPdf = "onType", -- Choose onType, onSave or never.
                    -- serverPath = "" -- Normally, there is no need to uncomment it.
                },
            })

            lspconfig.pyright.setup({
                capabilities = capabilities,
                filetypes = { "python" },
            })
            lspconfig.zls.setup({
                capabilities = capabilities,
                cmd = { "/usr/local/bin/zls" },
            })
            lspconfig.clangd.setup({
                cmd = {"/usr/bin/clangd"},
                capabilities = capabilities,
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
                cmd = { "/usr/local/bin/gopls" },
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        },
                    },
                },
            })
        end,
    },
    {
        "j-hui/fidget.nvim",
        lazy = true,
        opts = {
            -- options
        },
    },
}
