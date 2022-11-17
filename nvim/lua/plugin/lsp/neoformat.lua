vim.g.neoformat_enable_cpp = 'clangforamt'
vim.g.neoformat_enable_c = 'clangforamt'

local keymap = vim.keymap.set
keymap("n","fm", "<cmd>Neoformat<CR>",{ silent = true })