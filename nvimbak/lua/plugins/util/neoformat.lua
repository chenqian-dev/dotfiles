local M = {}

M.use = function(packer)
  packer.use {
    "sbdchd/neoformat",
    config = function()
      vim.g.neoformat_enable_cpp = 'clangforamt'
      vim.g.neoformat_enable_c = 'clangforamt'
    end
  }
end

return M