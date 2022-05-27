local M = {}

M.use = function(packer)
   packer.use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      config = function()
         require("nvim-treesitter.configs").setup {
            ensure_installed = {
               "lua",
               "vim",
               "norg",
               "markdown",
            },
            highlight = {
               enable = true,
               use_languagetree = true,
               additional_vim_regex_highlighting = false,
            },
            -- 启用增量选择
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<CR>',
                    node_incremental = '<CR>',
                    node_decremental = '<BS>',
                    scope_incremental = '<TAB>',
                }
            },
            matchup = {
               enable = true,              -- mandatory, false will disable the whole extension
            },
            theme = vim.g.current_theme
         }
      end
   }
end

return M
