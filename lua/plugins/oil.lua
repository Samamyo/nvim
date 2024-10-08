return {
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup({
                -- default_file_explorer = true,
                delete_to_trash = true,
                skip_confirm_for_simple_edits = true,
                columns = {
                    {
                        "type",
                        icons = {
                            directory = "d",
                            fifo = "p",
                            file = "-",
                            link = "l",
                            socket = "s",
                        },
                    },
                    {
                        "permissions",
                    },
                    { "size" },
                    { "mtime" },
                    { "icon" },
                },
                constrain_cursor = "name",
                view_options = {
                    -- Show files and directories that start with "."
                    --	show_hidden = true,
                    natural_order = true,
                },
                buf_options = {
                    filetype = "oil",
                },
                win_options = {
                    signcolumn = "yes",
                    cursorcolumn = false,
                    foldcolumn = "1",
                    spell = false,
                },
                keymaps = {
                    ["g?"] = "actions.show_help",
                    ["<CR>"] = "actions.select",
                    ["<C-s>"] = {
                        callback = function()
                            local dir = require("oil").get_current_dir()
                            local entry = require("oil").get_cursor_entry()
                            ---@diagnostic disable-next-line: undefined-field
                            if entry == nil or entry.type ~= "file" then
                                return
                            end

                            ---@diagnostic disable-next-line: undefined-field
                            local path = dir .. entry.name
                            local cwd = vim.fn.getcwd() .. "/"
                            path = path:gsub(cwd, "")
                            require("harpoon.mark").add_file(path)
                        end,
                        desc = "harpoon file",
                        mode = "n",
                    },
                    ["<C-h>"] = false,
                    ["<C-t>"] = false,
                    ["<C-p>"] = false,
                    ["<C-c>"] = false,
                    ["<C-l>"] = false,
                    ["-"] = "actions.parent",
                    ["_"] = "actions.open_cwd",
                    ["`"] = "actions.cd",
                    ["~"] = "actions.tcd",
                    ["gs"] = "actions.change_sort",
                    ["gx"] = "actions.open_external",
                    ["g."] = "actions.toggle_hidden",
                },
                float = {
                    -- Padding around the floating window
                    padding = 2,
                    max_width = 0,
                    max_height = 0,
                    border = "none",
                    win_options = {
                        winblend = 14,
                    },
                },
            })
        end,
    },
}
