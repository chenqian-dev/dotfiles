local status, lspconfig = pcall(require, "lspconfig")
if not status then
  vim.notify("没有找到 lspconfig")
  return
end

local servers = {
  clangd = require("plugin.lsp.configs.clangd"),
  sumneko_lua = require("plugin.lsp.configs.sumneko_lua"), -- lua/lsp/config/lua.lua
  bashls = require("plugin.lsp.configs.bashls"),
  pyright = require("plugin.lsp.configs.pyright"),
  jsonls = require("plugin.lsp.configs.jsonls"),
  cmake = require("plugin.lsp.configs.cmake"),
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

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
})