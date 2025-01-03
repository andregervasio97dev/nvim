-- Sets default colorscheme
vim.cmd("colorscheme catppuccin-macchiato")

-- Changes clipboard to system
vim.opt.clipboard = "unnamedplus"

-- Shows relative line number around the line and actual line number on cursor position
vim.opt.rnu = true
vim.opt.number = true

-- Better indenting
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showtabline = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Turns of search highlights
vim.opt.hlsearch = false

-- Turns off case sensitivity when using search
vim.opt.ignorecase = true

-- Sets minimum number of lines above/below the cursor
vim.opt.scrolloff = 5

-- Turns on list mode
vim.opt.list = true

-- Changes <Tab> character
vim.opt.listchars = {
	tab = "╎ ",
	space = " "
}
