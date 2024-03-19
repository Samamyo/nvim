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

-- move.nvim
-- Normal-mode commands
vim.keymap.set("n", "J", ":MoveLine(1)<CR>")
vim.keymap.set("n", "K", ":MoveLine(-1)<CR>")
vim.keymap.set("n", "H", ":MoveHChar(-1)<CR>")
vim.keymap.set("n", "L", ":MoveHChar(1)<CR>")
vim.keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>")
vim.keymap.set("n", "<leader>wb", ":MoveWord(-1)<CR>")

-- Visual-mode commands
vim.keymap.set("v", "J", ":MoveBlock(1)<CR>")
vim.keymap.set("v", "K", ":MoveBlock(-1)<CR>")
vim.keymap.set("v", "H", ":MoveHBlock(-1)<CR>")
vim.keymap.set("v", "L", ":MoveHBlock(1)<CR>")

-- Colour Schemes
vim.keymap.set("n", "<leader>csk", ":colorscheme kanagawa-wave<Cr>")
vim.keymap.set("n", "<leader>csh", ":colorscheme hybrid<Cr>")

-- Get to files
vim.keymap.set("n", "<leader>nvc", function()
	vim.cmd("cd ~/.config/nvim/")
	vim.cmd("e ~/.config/nvim/")
end)

--nvim
vim.keymap.set("n", "U", "<C-r>", { desc = "redo" })
vim.keymap.set("n", "E", "$", { desc = "get end of line" })
vim.keymap.set("i", "<C-<Bs>>", "<C-c>ciw")
vim.keymap.set("i", "jk", "<ESC>")
-- a bit of a swapsees
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", ":", ";")

-- terminal keybinds
vim.keymap.set("i", "<C-a>", "<C-o>_", { desc = "home" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "end" })
-- these two are not default, you have to use esc + f/b which is weird as hell
vim.keymap.set("i", "<C-f>", "<C-o>w", { desc = "forward" })
vim.keymap.set("i", "<C-b>", "<C-o>b", { desc = "backward" })
