local M = {}

M.use = function(packer)
  packer.use {
    "numToStr/Comment.nvim",
    config = function()
      vim.api.nvim_set_keymap("n", "<leader>/", ":lua require('Comment.api').toggle_current_linewise()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("v", "<leader>/", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", { noremap = true, silent = true })
    end
  }
end

return M
