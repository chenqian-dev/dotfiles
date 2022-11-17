local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("没有找到 telescope")
  return
end

-- local actions = require("telescope.actions")
telescope.setup({
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
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    -- vertical , center , cursor
    layout_strategy = "horizontal",
  --   layout_config = {
  --     horizontal = {
  --        prompt_position = "top",
  --        preview_width = 0.55,
  --        results_width = 0.8,
  --     },
  --     vertical = {
  --        mirror = false,
  --     },
  --     width = 0.87,
  --     height = 0.80,
  --     preview_cutoff = 120,
  --  },
  },
  pickers = {
    find_files = {
      -- theme = "dropdown", -- 可选参数： dropdown, cursor, ivy
    },
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({
        -- even more opts
      }),
    },
    live_grep_args = {
      auto_quoting = true,
    },
  },
})

telescope.load_extension("ui-select")
-- 需要安装 ripgrep
telescope.load_extension("live_grep_args")

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
map("n", "<leader>lg", ":lua require('telescope').extensions.live_grep_args.live_grep_args() <CR>", opts)
map("n", "<leader>of", ":Telescope oldfiles <CR>", opts)
map("n", "<leader>th", ":Telescope themes <CR>", opts)
