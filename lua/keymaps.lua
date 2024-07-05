-- nvim tree
-- vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<Cr>")
-- vim.keymap.set("n", "<Leader>r", ":NvimTreeFocus<Cr>")

vim.keymap.set("n", "<C-f>", ":silent !tmux neww ~/.local/scripts/tmux-sessionizer<Cr>")
vim.api.nvim_set_keymap("n", "<leader>w", "<c-w>", { noremap = true, silent = true })

-- Neorg
vim.keymap.set("n", "<C-1>", ":e ~/Notes/notes/index.norg<Cr> :Neorg workspace notes<Cr>")
vim.keymap.set("n", "<C-0>", ":e ~/Notes/work/index.norg<Cr> :Neorg workspace work<Cr>")

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<Cr>")
-- vim.keymap.set("n", "<space>-", require("oil").toggle_float)

-- lspconfig
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

-- Navigate with tmux
vim.keymap.set("n", "<c-h>", "wincmd h<CR>")
vim.keymap.set("n", "<c-j>", "wincmd j<CR>")
vim.keymap.set("n", "<c-k>", "wincmd k<CR>")
vim.keymap.set("n", "<c-l>", "wincmd l<CR>")

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
-- IDK man
-- vim.keymap.set("i", "<C-<BS>>", "<C-W>", { noreap = true, silent = true })
-- vim.keymap.set("n", "<C-BS>", "ciw")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>h", "<cmd>noh<Cr>")

-- a bit of a swapsees
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", ":", ";")
