require('keybinds')
require('plugins')


vim.g.mapleader = ' '

-- cursor
vim.o.cursorline = true

-- line numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 4

-- indentations settings
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- invisible character
vim.o.list = true
vim.opt.listchars = {
  tab = '→ ',
  space = '·'
}

-- split directions
vim.o.splitbelow = true
vim.o.splitright = true
