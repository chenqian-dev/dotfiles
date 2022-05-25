local M = {}

M.use = function(packer)
   packer.use {
      "lukas-reineke/indent-blankline.nvim",
      event = "BufRead",
      config = function()
         require("indent_blankline").setup {
            filetype_exclude = {
               "help",
               "terminal",
               "dashboard",
               "packer",
               "lspinfo",
               "TelescopePrompt",
               "TelescopeResults",
               "nvchad_cheatsheet",
               'lsp-installer',
               "",
            },
            buftype_exclude = { "terminal" },
         }
      end
   }
end

return M