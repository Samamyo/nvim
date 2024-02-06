return {
    "benlubas/wrapping-paper.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
            "qww",
            function()
                require("wrapping-paper").wrap_line()
            end,
            desc = "fake wrap current line",
        },
    },
}
