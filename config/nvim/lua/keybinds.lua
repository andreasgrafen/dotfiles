require('utils')

-- file saving and closing
Nmap('<leader>w', '<cmd>w<cr>')
Nmap('<leader>q', '<cmd>q<cr>')
Nmap('<leader>Q', '<cmd>q!<cr>')

-- easier split navigation
Nmap("<C-J>", "<C-w>j")
Nmap("<C-K>", "<C-w>k")
Nmap("<C-L>", "<C-w>l")
Nmap("<C-H>", "<C-w>h")

-- toggle zen mode
Nmap('<enter>', '<cmd>TZMinimalist<cr>')
Nmap('<C-w>f', '<cmd>TZFocus<cr>')

-- reload config
Nmap('<C-n>', '<cmd>source ~/.config/nvim/init.lua<cr>')