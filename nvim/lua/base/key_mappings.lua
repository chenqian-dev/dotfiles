local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--全局-----------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "
map("n", "<C-s>", ":w <CR>", opts)
map("i", "<C-s>", ":w <CR>", opts)
map("v", "<C-s>", ":w <CR>", opts)

--移动-----------------------------------------------------------
map("i", "<C-h>", "<left>", opts)
map("i", "<C-j>", "<down>", opts)
map("i", "<C-k>", "<up>", opts)
map("i", "<C-l>", "<right>", opts)
map("i", "<C-n>", "<Esc>o", opts)
-- 快速移动
map("n", "H", "5h", opts)
map("n", "J", "5j", opts)
map("n", "K", "5k", opts)
map("n", "L", "5l", opts)
map("v", "H", "5h", opts)
map("v", "J", "5j", opts)
map("v", "K", "5k", opts)
map("v", "L", "5l", opts)

-- buffer--------------------------------------------------------
map("n", "<m-d>", ":lua require('base.utils').close_buffer() <CR>", opts)

-- window--------------------------------------------------------
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-d>", "<C-w>d", opts)
-- 分屏快捷键
map("n", "sv", ":vsp<cr>", opts)
map("n", "sh", ":sp<cr>", opts)
-- 比例控制
map("n", "<C-Left>", ":vertical resize -2<cr>", opts)
map("n", "<C-Right>", ":vertical resize +2<cr>", opts)
map("n", "<C-Up>", ":resize +2<cr>", opts)
map("n", "<C-Down>", ":resize -2<cr>", opts)

-- 注释
map("n", "<leader>/", "gcc", { noremap = false })
map("v", "<leader>/", "gcc", { noremap = false })
