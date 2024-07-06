return {
    {
        "nvim-telescope/telescope.nvim",
        dependancies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
        },
        tag = "0.1.8",
        keys = {
            { "<leader>cs", ":Telescope colorscheme <Cr>", desc = "Search Colorschemes" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Grep" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Helps" },
            { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Find Theme" },
        },
        config = function()
            require("telescope").setup({
                pickers = {
                    find_files = {
                        -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
                        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                    },
                },
            })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        lazy = true,
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({
                            -- even more opts
                        }),
                    },
                    ["zf-native"] = {
                        -- options for sorting file-like items
                        file = {
                            -- override default telescope file sorter
                            enable = true,
                            -- highlight matching text in results
                            highlight_results = true,
                            -- enable zf filename match priority
                            match_filename = true,
                            -- optional function to define a sort order when the query is empty
                            initial_sort = nil,
                        },

                        -- options for sorting all other items
                        generic = {
                            -- override default telescope generic item sorter
                            enable = true,
                            -- highlight matching text in results
                            highlight_results = true,
                            -- disable zf filename match priority
                            match_filename = false,
                            -- optional function to define a sort order when the query is empty
                            initial_sort = nil,
                        },
                    },
                },
            })
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("zf-native")
        end,
    },
}
