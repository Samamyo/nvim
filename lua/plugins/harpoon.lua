return {
    "ThePrimeagen/harpoon",
    keys = {
        { "<leader>e" },
        { "<leader>a" },
        { "<C-q>" },
        { "<C-w>" },
        { "<C-e>" },
        { "<C-r>" },
        { "<leader>1" },
        { "<leader>2" },
        { "<leader>3" },
        { "<leader>4" },
        { "<leader>5" },
    },
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<C-q>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-w>", function() harpoon:list():select(2) end, { nowait = true })
        vim.keymap.set("n", "<C-e>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-r>", function() harpoon:list():select(4) end)

        for _, idx in ipairs { 1, 2, 3, 4, 5 } do
            vim.keymap.set("n", string.format("<space>%d", idx), function()
                harpoon:list():select(idx)
            end)
        end

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)
    end,
}
