local lspconfig_opts = {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    flags = {
        debounce_text_changes = 150
    },
    filetypes = { "c", "cc", "cpp", "objc", "objcpp" },
    on_attach = function(client, bufnr)
        -- 禁用格式化功能，交给专门插件插件处理
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
        require("plugins.lsp.lsp_key_mappings").lsp_keymap(client, bufnr)
        require("aerial").on_attach(client, bufnr)
        require("lsp_signature").on_attach()
    end
}

return {
    on_setup = function(server)
        server.setup(lspconfig_opts)
    end
}
