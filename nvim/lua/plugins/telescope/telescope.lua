local M = {}

M.use = function(packer)
   packer.use {
      'nvim-telescope/telescope.nvim',
      config = function()
         local present, telescope = pcall(require, "telescope")

         if not present then
            return
         end

         local default = {
            defaults = {
               vimgrep_arguments = {
                  "rg",
                  "--color=never",
                  "--no-heading",
                  "--with-filename",
                  "--line-number",
                  "--column",
                  "--smart-case",
               },
               prompt_prefix = "   ",
               selection_caret = "  ",
               entry_prefix = "  ",
               initial_mode = "insert",
               selection_strategy = "reset",
               sorting_strategy = "ascending",
               layout_strategy = "horizontal",
               layout_config = {
                  horizontal = {
                     prompt_position = "top",
                     preview_width = 0.55,
                     results_width = 0.8,
                  },
                  vertical = {
                     mirror = false,
                  },
                  width = 0.87,
                  height = 0.80,
                  preview_cutoff = 120,
               },
               file_sorter = require("telescope.sorters").get_fuzzy_file,
               file_ignore_patterns = { "node_modules", "*.o"},
               generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
               path_display = { "truncate" },
               winblend = 0,
               border = {},
               borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
               color_devicons = true,
               use_less = true,
               set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
               file_previewer = require("telescope.previewers").vim_buffer_cat.new,
               grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
               qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
               -- Developer configurations: Not meant for general override
               buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
            },
         }
      
         telescope.setup(default)
      
         local extensions = { "themes", "terms", "fzf"}
      
         pcall(function()
            for _, ext in ipairs(extensions) do
               telescope.load_extension(ext)
            end
         end)

         -- key map
         local map = vim.api.nvim_set_keymap
         local opts = { noremap = true, silent = true }
         map("n", "<leader>te", ":Telescope terms <CR>", opts)
         map("n", "<leader>fb", ":Telescope buffers <CR>", opts)
         map("n", "<leader>ff", ":Telescope find_files <CR>", opts)
         map("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>", opts)
         map("n", "<leader>gc", ":Telescope git_commits <CR>", opts)
         map("n", "<leader>gs", ":Telescope git_status <CR>", opts)
         map("n", "<leader>fh", ":Telescope help_tags <CR>", opts)
         map("n", "<leader>lg", ":Telescope live_grep <CR>", opts)
         map("n", "<leader>of", ":Telescope oldfiles <CR>", opts)
         map("n", "<leader>th", ":Telescope themes <CR>", opts)
      end
   }
end

return M
