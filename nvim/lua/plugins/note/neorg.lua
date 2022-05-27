local M = {}

M.use = function(packer)
  packer.use {
    "nvim-neorg/neorg",
    after = 'nvim-treesitter',
    config = function()
      local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

      parser_configs.norg_meta = {
        install_info = {
          url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
          files = {
            "src/parser.c",
          },
          branch = "main",
        },
      }

      parser_configs.norg_table = {
        install_info = {
          url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
          files = {
            "src/parser.c",
          },
          branch = "main",
        },
      }
      require('neorg').setup {
        load = {
          -- core
          ["core.defaults"] = {},
          ["core.norg.completion"] = {},
          ["core.norg.concealer"] = {},
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                home = "~/workspace/personal/note",
              }
            }
          },
          ["core.gtd.base"] = {
            config = {
              workspace = "home"
            }
          },
          ["core.norg.journal"] = {},
          ["core.norg.qol.toc"] = {},
          -- external
          -- ["cool.module"] = {},
          -- community
          -- ['core.integrations.telescope'] = {},
          -- ['external.gtd-project-tags'] = {},
          -- ['external.integrations.gtd-things'] = {},
          -- ['external.context'] = {},
          -- ['external.kanban'] = {},
        }
      }
    end
  }
end

return M
