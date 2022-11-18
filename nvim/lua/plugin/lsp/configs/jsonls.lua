return {
    on_setup = function(server)
      server.setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        flags = {
          debounce_text_changes = 150,
        },
        on_attach = function(client, bufnr)
          -- 禁用格式化功能，交给专门插件插件处理
          client.server_capabilities.document_formatting = false
          client.server_capabilities.document_range_formatting = false
          require("plugin.lsp.lsp_key_mappings").lsp_keymap(client, bufnr)
        end
      })
    end,
  }
  
