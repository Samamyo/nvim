local set = vim.keymap.set
-- nvim tree
-- vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<Cr>")
-- vim.keymap.set("n", "<Leader>r", ":NvimTreeFocus<Cr>")

set("n", "<C-f>", ":silent !tmux neww ~/.local/scripts/tmux-sessionizer<Cr>")
vim.api.nvim_set_keymap("n", "<leader>w", "<c-w>", { noremap = true, silent = true })

-- Neorg
set("n", "<C-1>", ":e ~/Notes/notes/index.norg<Cr> :Neorg workspace notes<Cr>")
set("n", "<C-0>", ":e ~/Notes/work/index.norg<Cr> :Neorg workspace work<Cr>")

-- oil
set("n", "-", "<CMD>Oil<Cr>")
-- vim.keymap.set("n", "<space>-", require("oil").toggle_float)

-- lspconfig
set("n", "<leader>k", vim.lsp.buf.hover, {})
set("n", "gd", vim.lsp.buf.definition, {})
set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
set("n", "]d", vim.diagnostic.goto_next, {})
set("n", "[d", vim.diagnostic.goto_prev, {})
set("n", "<leader>rr", vim.lsp.buf.references, {})
set("n", "<leader>rn", vim.lsp.buf.rename, {})

-- Navigate with tmux
set("n", "<c-h>", "wincmd h<CR>")
set("n", "<c-j>", "wincmd j<CR>")
set("n", "<c-k>", "wincmd k<CR>")
set("n", "<c-l>", "wincmd l<CR>")

-- Colour Schemes
set("n", "<leader>csk", ":colorscheme kanagawa-wave<Cr>")

-- Get to files
vim.keymap.set("n", "<leader>nvc", function()
	vim.cmd("cd ~/.config/nvim/")
	vim.cmd("e ~/.config/nvim/")
end)

--nvim
set("n", "U", "<C-r>", { desc = "redo" })
set("n", "E", "$", { desc = "get end of line" })
-- IDK man
-- vim.keymap.set("i", "<C-<BS>>", "<C-W>", { noreap = true, silent = true })
-- vim.keymap.set("n", "<C-BS>", "ciw")
set("i", "jk", "<ESC>")
set("n", "<leader>h", "<cmd>noh<Cr>")

-- a bit of a swapsees
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", ":", ";")
