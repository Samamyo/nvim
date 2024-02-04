return {
	{
		"fcancelinha/northern.nvim",
		name = "northern",
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			-- code
			require("kanagawa").setup({
				transparent = true, -- do not set background color
			})
		end,
	},
	{
		"HoNamDuong/hybrid.nvim",
		name = "hybrid",
		priority = 1000,
		config = function()
			-- code
			require("hybrid").setup({
				transparent = true, -- do not set background color
			})
		end,
	},
	{
		"hardhackerlabs/theme-vim",
		name = "hardhacker",
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("kanagawa")
			require("catppuccin").setup({
				transparent_background = true, -- do not set background color
			})
		end,
	},
}
