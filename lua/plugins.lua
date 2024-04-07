return {
	{
		"fedepujol/move.nvim",
		config = function()
			require("move").setup({
				line = {
					enable = true, -- Enables line movement
					indent = true, -- Toggles indentation
				},
				block = {
					enable = true, -- Enables block movement
					indent = true, -- Toggles indentation
				},
				word = {
					enable = true, -- Enables word movement
				},
				char = {
					enable = false, -- Enables char movement
				},
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
        config = true
	},
}
