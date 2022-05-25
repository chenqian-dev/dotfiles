local M = {}

M.use = function(packer)
  packer.use {
    "phaazon/hop.nvim",
    config = function()
      require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran'
      }
    end
  }
  -- place thnoremap = true, silent = trueis in one of your configuration file(s)
  vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})
  vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({current_line_only = true})<cr>", {})
  vim.api.nvim_set_keymap('n', 'ff', "<cmd>lua require'hop'.hint_char2()<cr>", {})
  vim.api.nvim_set_keymap('n', 'fl', "<cmd>lua require'hop'.hint_lines()<cr>", {})

end

return M
