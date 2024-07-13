return {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
    config = function()
        require("supermaven-nvim").setup({})
        local api = require("supermaven-nvim.api")
        api.use_free_version() -- switch to the free version

        vim.keymap.set("n", "<leader>ts", function()
            api.toggle()
        end)
    end,
}
