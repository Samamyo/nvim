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
	{ "EdenEast/nightfox.nvim" }, -- lazy
}
