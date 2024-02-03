-- nvim tree
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<Cr>")
vim.keymap.set("n", "<Leader>r", ":NvimTreeFocus<Cr>")

-- Neorg
vim.keymap.set("n", "<C-1>", ":e ~/Notes/notes/index.norg<Cr>")
vim.keymap.set("n", "<C-0>", ":e ~/Notes/work/index.norg<Cr>")

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<Cr>")

-- lspconfig
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})

-- move.nvim
-- Normal-mode commands
vim.keymap.set("n", "J", ":MoveLine(1)<Cr>")
vim.keymap.set("n", "K", ":MoveLine(-1)<Cr>")
vim.keymap.set("n", "H", ":MoveHChar(-1)<Cr>")
vim.keymap.set("n", "L", ":MoveHChar(1)<Cr>")
vim.keymap.set("n", "<Leader>wf", ":MoveWord(1)<Cr>")
vim.keymap.set("n", "<Leader>wb", ":MoveWord(-1)<Cr>")

-- Visual-mode commands
vim.keymap.set("v", "J", ":MoveBlock(1)<Cr>")
vim.keymap.set("v", "K", ":MoveBlock(-1)<Cr>")
vim.keymap.set("v", "H", ":MoveHBlock(-1)<Cr>")
vim.keymap.set("v", "L", ":MoveHBlock(1)<Cr>")

-- Colour Schemes
vim.keymap.set("n", "<leader>csk", ":colorscheme kanagawa-wave<Cr>")
vim.keymap.set("n", "<leader>csn", ":colorscheme northern<Cr>")

-- Get to files
vim.keymap.set("n", "<leader>nvc", function()
vim.cmd("cd ~/.config/nvim/")
vim.cmd("e ~/.config/nvim/")
end)


--nvim
vim.keymap.set("n", "U", "<C-r>", { desc = "redo" })
vim.keymap.set("n", "E", "$", { desc = "get end of line" })
vim.keymap.set("i", "<C-<BS>>", "<ESC>caw")
vim.keymap.set("i", "jk", "<ESC>" )
