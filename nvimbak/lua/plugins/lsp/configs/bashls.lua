return {
    on_setup = function(server)
      server.setup({
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        flags = {
          debounce_text_changes = 150,
        },
        on_attach = function(client, bufnr)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false
          require("plugins.lsp.lsp_key_mappings").lsp_keymap(client, bufnr)
          require("aerial").on_attach(client, bufnr)
          require("lsp_signature").on_attach()
        end,
      })
    end,
  }
  