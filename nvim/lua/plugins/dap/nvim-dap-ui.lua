local M = {}

M.use = function(packer)
  packer.use {
    'rcarriga/nvim-dap-ui',
    config = function ()
      local dap_ok, dap = pcall(require, 'dap')
      if not dap_ok then
        vim.notify("dap not found")
        return
      end

      local dapui_ok, dapui = pcall(require, 'dapui')
      if not dapui_ok then
        vim.notify("dapui not found")
        return
      end

      vim.fn.sign_define("DapBreakpoint", {
        text = "🛑",
        texthl = "LspDiagnosticsSignError",
        linehl = "",
        numhl = "",
      })

      vim.fn.sign_define("DapStopped", {
        text = "",
        texthl = "LspDiagnosticsSignInformation",
        linehl = "DiagnosticUnderlineInfo",
        numhl = "LspDiagnosticsSignInformation",
      })

      vim.fn.sign_define("DapBreakpointRejected", {
        text = "",
        texthl = "LspDiagnosticsSignHint",
        linehl = "",
        numhl = "",
      })

      dapui.setup({
        icons = { expanded = "▾", collapsed = "▸" },
        mappings = {
          -- Use a table to apply multiple mappings
          expand = { "o", "<CR>", "<2-LeftMouse>" },
          open = "o",
          remove = "d",
          edit = "e",
          repl = "r",
          toggle = "t",
        },
        layouts = {
          {
            elements = {
              -- Elements can be strings or table with id and size keys.
              { id = "scopes", size = 0.25 },
              "breakpoints",
              "stacks",
              "watches",
            },
            size = 40, -- 40 columns
            position = "left",
          },
          {
            elements = {
              "repl",
              "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
          },
        },
        floating = {
          max_height = nil, -- These can be integers or a float between 0 and 1.
          max_width = nil, -- Floats will be treated as percentage of your screen.
          border = "single", -- Border style. Can be "single", "double" or "rounded"
          mappings = {
            close = { "q", "<Esc>" },
          },
        },
        windows = { indent = 1 },
        render = {
          max_type_length = nil, -- Can be integer or nil.
        },
      }) -- use default


      local debug_open = function()
        dapui.open()
        vim.api.nvim_command("DapVirtualTextEnable")
      end
      local debug_close = function()
        dap.repl.close()
        dapui.close()
        vim.api.nvim_command("DapVirtualTextDisable")
        vim.api.nvim_command("bdelete! term:")   -- close debug temrinal
      end

      dap.listeners.after.event_initialized["dapui_config"] = function()
        debug_open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        debug_close()
      end
      dap.listeners.before.event_exited["dapui_config"]     = function()
        debug_close()
      end
      dap.listeners.before.disconnect["dapui_config"]       = function()
        debug_close()
      end
    end
  }
end

return M
