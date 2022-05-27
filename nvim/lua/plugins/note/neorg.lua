local M = {}

M.use = function(packer)
  packer.use {
    "nvim-neorg/neorg",
    config = function()
      require('neorg').setup {
        load = {
          -- core
          ["core.defaults"] = {},
          ["core.gtd.base"] = {},
          ["core.norg.completion"] = {},
          ["core.norg.concealer"] = {},
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                work = "~/workspaces/personal/note",
                home = "~/workspaces/personal/note",
              }
            }
          },
          ["core.norg.journal"] = {},
          ["core.norg.qol.toc"] = {},
          ["core.presenter"] = {},
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
