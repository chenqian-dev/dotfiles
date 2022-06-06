local M = {}

M.use = function(packer)
  packer.use {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require('nvim-tree').setup {
        filters = {
          dotfiles = false,
        },
        disable_netrw = true,
        hijack_netrw = true,
        ignore_ft_on_setup = { "dashboard" },
        open_on_tab = false,
        hijack_cursor = true,
        update_cwd = true,
        update_focused_file = {
          enable = false,
          update_cwd = false,
        },
        view = {
          side = "left",
          width = 25,
          hide_root_folder = true,
          preserve_window_proportions = true,
        },
        git = {
          enable = false,
          ignore = false,
        },
        actions = {
          open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
              enable = true,
              chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
              exclude = {
                filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                buftype = { "nofile", "terminal", "help" },
              },
            },
          },
        },
        renderer = {
          root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
          indent_markers = {
            enable = true,
            icons = {
              corner = "└ ",
              edge = "│ ",
              none = "  ",
            },
          },
          icons = {
            webdev_colors = true,
            git_placement = "before",
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              git = {
                deleted = "",
                ignored = "◌",
                renamed = "➜",
                staged = "✓",
                unmerged = "",
                unstaged = "✗",
                untracked = "★",
              },
              folder = {
                default = "",
                empty = "",
                empty_open = "",
                open = "",
                symlink = "",
                symlink_open = "",
              }
            }
          },
        }
      }
    end
  }
  -- key map
  vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeFindFileToggle <CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<C-m>", ":NvimTreeFindFindFile <CR>", { noremap = true, silent = true })
end

return M
