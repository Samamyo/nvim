return {
    {
        "nvim-neorg/neorg",
        ft = "norg",
        -- lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        config = function()
            require("neorg").setup({
                ["core.defaults"] = {}, -- Loads default behaviour

                ["core.concealer"] = {
                    config = {
                        icons = {
                            todo = {
                                urgent = { icon = "" },
                            },
                        },
                    },
                }, -- adds pretty icons to your documents
                ["core.completion"] = {
                    config = { engine = "nvim-cmp" },
                },
                ["core.summary"] = {},

                ["core.integrations.treesitter"] = {},

                ["core.esupports.metagen"] = {
                    config = { timezones = "implicit-local", type = "auto" },
                },

                ["core.journal"] = {
                    config = {
                        strategy = "flat",
                        workspace = "notes",
                    },
                },

                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/Notes/notes",
                            work = "~/Notes/work",
                        },
                        default_workspace = "notes",
                    },
                },

                ["core.keybinds"] = {
                    config = {
                        hook = function(keybinds)
                            keybinds.map("norg", "n", "<localleader>r", ":Neorg return<CR>")
                            keybinds.map("norg", "i", "-(", "- ( ) ")
                        end,
                    },
                },
            })
        end,
    },
}
