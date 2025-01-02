-- Shows relative line number around the line and actual line number on cursor position
vim.opt.rnu = true
vim.opt.number = true

-- Better indenting
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showtabline = 2

-- Turns of search highlights
vim.opt.hlsearch = false

-- Turns off case sensitivity when using search
vim.opt.ignorecase = true

-- Sets minimum number of lines above/below the cursor
vim.opt.scrolloff = 5

-- Sets default colorscheme
vim.cmd("colorscheme catppuccin-macchiato")
