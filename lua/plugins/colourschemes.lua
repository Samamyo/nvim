return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
                transparent = true, -- do not set background color
			})
            vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"HoNamDuong/hybrid.nvim",
        event = "VeryLazy",
		name = "hybrid",
		priority = 1000,
		config = function()
			-- code
			require("hybrid").setup({
				transparent = true, -- do not set background color
			})
		end,
	},
}
