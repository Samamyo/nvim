return {
	{
		"echasnovski/mini.nvim",
		-- event = "VeryLazy",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		version = "*",
		config = function()
			require("mini.ai").setup({})
			-- require("mini.notify").setup({})
			require("mini.pairs").setup({})
			require("mini.splitjoin").setup({})

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
		end,
	},
}
