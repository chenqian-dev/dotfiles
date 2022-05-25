local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- global
------------------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "
map("n", "<c-s>", ":w <CR>", opts) -- ctrl + s to save file

-- move
------------------------------------------------------------------
map("i", "<c-h>", "<left>", opts)
map("i", "<c-j>", "<down>", opts)
map("i", "<c-k>", "<up>", opts)
map("i", "<c-l>", "<right>", opts)

-- buffer
------------------------------------------------------------------
map("n", "<m-d>", ":lua require('core.utils').close_buffer() <CR>", opts)

-- window
------------------------------------------------------------------
map("n", "<c-h>", "<c-w>h", opts)
map("n", "<c-j>", "<c-w>j", opts)
map("n", "<c-k>", "<c-w>k", opts)
map("n", "<c-l>", "<c-w>l", opts)
map("n", "<c-d>", "<c-w>d", opts)
-- 分屏快捷键
map("n", "sv", ":vsp<cr>", opts)
map("n", "sh", ":sp<cr>", opts)
-- 比例控制
map("n", "<C-Left>", ":vertical resize -2<cr>", opts)
map("n", "<C-Right>", ":vertical resize +2<cr>", opts)
map("n", "<C-Up>", ":resize +2<cr>", opts)
map("n", "<C-Down>", ":resize -2<cr>", opts)

-- terminal
------------------------------------------------------------------
-- map("t", "jk", "<C-\\><C-n>", opts)
-- -- hide a term from within terminal mode
-- map("t", "JK", "<C-\\><C-n> :lua require('core.utils').close_buffer() <CR>", opts)
-- -- Open terminals
-- map("n", "<leader>h", ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>", opts)
-- map("n", "<leader>v", ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>", opts)
-- map("n", "<leader>w", ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>", opts)

-- plugins
------------------------------------------------------------------
local M = {}

M.lspconfig = function()
  map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  map("n", "gk", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  map("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  map("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  map("n", "ge", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
  map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  map("n", "<leader>sd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
end

return M
