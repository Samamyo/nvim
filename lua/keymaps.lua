-- nvim tree
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<Cr>")
vim.keymap.set("n", "<Leader>r", ":NvimTreeFocus<Cr>")

-- Neorg
vim.keymap.set("n", "<C-1>", ":e ~/Notes/notes/index.norg<Cr> :Neorg workspace notes<Cr>")
vim.keymap.set("n", "<C-0>", ":e ~/Notes/work/index.norg<Cr> :Neorg workspace work<Cr>")

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<Cr>")

-- lspconfig
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)

-- Navigate with tmux
vim.keymap.set("n", "<c-h>", "wincmd h<CR>")
vim.keymap.set("n", "<c-j>", "wincmd j<CR>")
vim.keymap.set("n", "<c-k>", "wincmd k<CR>")
vim.keymap.set("n", "<c-l>", "wincmd l<CR>")

-- move.nvim
-- Normal-mode commands
vim.keymap.set("n", "J", ":MoveLine(1)<CR>",opts)
vim.keymap.set("n", "K", ":MoveLine(-1)<CR>",opts)

-- Visual-mode commands
vim.keymap.set("v", "J", ":MoveBlock(1)<CR>",opts)
vim.keymap.set("v", "K", ":MoveBlock(-1)<CR>",opts)

-- Colour Schemes
vim.keymap.set("n", "<leader>csk", ":colorscheme kanagawa-wave<Cr>")

-- Get to files
vim.keymap.set("n", "<leader>nvc", function()
	vim.cmd("cd ~/.config/nvim/")
	vim.cmd("e ~/.config/nvim/")
end)

--nvim
vim.keymap.set("n", "U", "<C-r>", { desc = "redo" })
vim.keymap.set("n", "E", "$", { desc = "get end of line" })
vim.keymap.set("i", "<C-<Bs>>", "<C-o>ciw")
vim.keymap.set("n", "<C-<Bs>>", "ciw")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>h" , "<cmd>noh<Cr>")

-- a bit of a swapsees
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", ":", ";")

-- terminal keybinds
vim.keymap.set("i", "<C-a>", "<C-o>_", { desc = "home" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "end" })
-- these two are not default, you have to use esc + f/b which is weird as hell
vim.keymap.set("i", "<C-f>", "<C-o>w", { desc = "forward" })
vim.keymap.set("i", "<C-b>", "<C-o>b", { desc = "backward" })
