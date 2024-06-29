return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				-- transparent = true, -- do not set background color
			})
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					-- transparent = true,
				},
			})
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
