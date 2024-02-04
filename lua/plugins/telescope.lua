return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Helps" },
			{ "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Find Theme" },
		},
		config = function()
			--Telescope find_files hidden=true no_ignore=true
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
        lazy = true,
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
