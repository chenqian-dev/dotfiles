local M = {}

M.use = function(packer)
  packer.use {
    'williamboman/nvim-lsp-installer', 
    {
      "neovim/nvim-lspconfig",
      config = function()
        -- lsp-installer
        require("nvim-lsp-installer").setup({
          -- 自动安装 Language Servers
          automatic_installation = false,
        })

        -- lsppconfig
        local lspconfig = require("lspconfig")
        -- 安装列表
        -- { key: 服务器名， value: 配置文件 }
        -- key 必须为下列网址列出的 server name，不可以随便写
        -- https://github.com/williamboman/nvim-lsp-installer#available-lsps
        local servers = {
          clangd = require("plugins.lsp.configs.clangd"),
          sumneko_lua = require("plugins.lsp.configs.sumneko_lua"), -- lua/lsp/config/lua.lua
          bashls = require("plugins.lsp.configs.bashls"),
          pyright = require("plugins.lsp.configs.pyright"),
          jsonls = require("plugins.lsp.configs.jsonls"),
        }

        for name, config in pairs(servers) do
          if config ~= nil and type(config) == "table" then
            -- 自定义初始化配置文件必须实现on_setup 方法
            config.on_setup(lspconfig[name])
          else
            -- 使用默认参数
            lspconfig[name].setup({})
          end
        end

      end
    }
  }

  vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  })
end

return M
