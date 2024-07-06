return {
    {
        "echasnovski/mini.statusline",
        version = "*",
        config = function()
            require("mini.statusline").setup()
        end,
    },
    {
        "echasnovski/mini.nvim",
        -- event = "VeryLazy",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        version = "*",
        config = function()
            require("mini.ai").setup()
            -- require("mini.notify").setup({})
            require("mini.pairs").setup()
            require("mini.splitjoin").setup()

            require("mini.move").setup({
                mappings = {
                    -- Move visual selection in Visual mode.
                    left = "H",
                    right = "L",
                    down = "J",
                    up = "K",

                    -- Move current line in Normal mode
                    line_left = "H",
                    line_right = "L",
                    line_down = "J",
                    line_up = "K",
                },
            })
            local hipatterns = require("mini.hipatterns")
            hipatterns.setup({
                highlighters = {
                    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
                    fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
                    hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
                    todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
                    note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

                    -- Highlight hex color strings (`#rrggbb`) using that color
                    hex_color = hipatterns.gen_highlighter.hex_color(),
                },
            })
        end,
    },
}
