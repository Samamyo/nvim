return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    keys = {
        { "<Leader>e", ":NvimTreeToggle<Cr>" },
        { "<Leader>r", ":NvimTreeFocus<Cr>" },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({})
    end,
}
