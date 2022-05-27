local M = {}

M.use = function(packer)
  packer.use {
    "RRethy/vim-illuminate",
    config = function()
      vim.g.Illuminate_ftblacklist = {
        "NvimTree",
        "vista_kind",
        "toggleterm"
      }
    end
  }
end

return M
