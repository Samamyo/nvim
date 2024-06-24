return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },

	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			go = { "golangcilint" },
			python = { "flake8" },
		}
		vim.keymap.set("n", "<leader>tl", function()
			lint.try_lint()
		end)
	end,
}
