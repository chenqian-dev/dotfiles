local status, hop = pcall(require, "hop")
if not status then
  vim.notify("没有找到 hop")
  return
end

hop.setup({
    keys = 'etovxqpdygfblzhckisuran'
})

vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({current_line_only = true})<cr>", {})
vim.api.nvim_set_keymap('n', 'ff', "<cmd>lua require'hop'.hint_char2()<cr>", {})
vim.api.nvim_set_keymap('n', 'fl', "<cmd>lua require'hop'.hint_lines()<cr>", {})