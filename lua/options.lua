local opt = vim.opt

--numbers
opt.relativenumber = true
opt.number = true

--tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--new windows
opt.splitbelow = true
opt.splitright = true

--search
opt.ignorecase = true
opt.smartcase = true

--apperance
opt.termguicolors = true
opt.background = "dark"
vim.wo.conceallevel = 2
opt.wrap = false

--clipboard
opt.clipboard:append("unnamedplus")

--other
opt.scrolloff = 8
opt.iskeyword:append("-")
opt.inccommand = "split"

--leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<Leader><Leader>", function()
	print("Hello World!")
end)
