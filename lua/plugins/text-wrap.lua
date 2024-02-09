return {
    "benlubas/wrapping-paper.nvim",
    -- dev = true,
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
            "gww",
            function()
                require("wrapping-paper").wrap_line()
            end,
            desc = "fake wrap current line",
        },
    },
}
