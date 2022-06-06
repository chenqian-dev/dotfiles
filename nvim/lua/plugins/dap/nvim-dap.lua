local M = {}

M.use = function(packer)
  packer.use {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require('dap')
      -- server
      require('plugins.dap.configs.cpptools').on_setup(dap)
      require('plugins.dap.configs.debugpy').on_setup(dap)
      -- require('plugins.dap.configs.codelldb').on_setup(dap)
      -- config
      dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
      dap.set_log_level("DEBUG")
      require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'c', 'cpp' } })
      -- key map
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      -- 结束
      map(
      "n",
      "<leader>de",
      ":lua require'dap'.close()<CR>"
      .. ":lua require'dap'.terminate()<CR>"
      .. ":lua require'dap.repl'.close()<CR>"
      .. ":lua require'dapui'.close()<CR>"
      .. ":lua require('dap').clear_breakpoints()<CR>"
      .. "<C-w>o<CR>",
      opts
      )
      -- 设置断点
      map("n", "<leader>dd", ":lua require('dap').toggle_breakpoint()<CR>", opts)
      map("n", "<leader>dc", ":lua require('dap').clear_breakpoints()<CR>", opts)
      -- 调试
      map("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
      map("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
      map("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
      map("n", "<F8>", "<cmd>lua require'dap'.step_over()<cr>", opts)
      map("n", "<F9>", "<cmd>lua require'dap'.step_out()<cr>", opts)
    end
  }
end

return M
