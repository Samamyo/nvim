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
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},
}
