local opt = vim.opt
local g = vim.g

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
opt.wrap = false
opt.signcolumn = "yes"
opt.colorcolumn = "+1"
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- vim.opt.cursorline = true

--clipboard
opt.clipboard:append("unnamedplus")
-- vim.opt.hlsearch = false

--other
opt.scrolloff = 50
opt.iskeyword:append("-")
opt.inccommand = "split"
opt.smartindent = true

opt.swapfile = false
opt.undofile = true
opt.title = true

--leader
g.mapleader = " "
g.maplocalleader = ","
g.netrw_liststyle = 3

-- zig 
g.zig_fmt_autosave = 0

vim.keymap.set("n", "<Leader><Leader>", function()
    print("Hello World!")
end)
