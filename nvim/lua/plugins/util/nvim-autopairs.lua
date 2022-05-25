local M = {}

M.use = function(packer)
  packer.use {
    "windwp/nvim-autopairs",
    config = function()
    end
  }

  local present, cmp = pcall(require, "cmp")
  if present then
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
  end
end

return M
