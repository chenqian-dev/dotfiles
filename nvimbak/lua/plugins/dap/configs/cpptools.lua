return {
  on_setup = function (dap)
    dap.adapters.cppdbg = {
      id = 'cppdbg',
      type = "executable",
      command = os.getenv('HOME') .. '/.config/nvim/data/dap/cpptools/debugAdapters/bin/OpenDebugAD7',
    }
    dap.configurations.cpp = {
      -- launch exe
      {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = true,
        setupCommands = {
          {
            description =  'enable pretty printing',
            text = '-enable-pretty-printing',
            ignoreFailures = true
          },
        },
      },
      -- attach process
      {
        name = "Attach process",
        type = "cppdbg",
        request = "attach",
        processId = require('dap.utils').pick_process,
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        setupCommands = {
          {
            description =  'enable pretty printing',
            text = '-enable-pretty-printing',
            ignoreFailures = true
          },
        },
      },
    }

    -- setup other language
    dap.configurations.c = dap.configurations.cpp
  end

}
