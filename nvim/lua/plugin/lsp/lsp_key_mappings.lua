return {
    lsp_keymap = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        local opts = {
            noremap = true,
            silent = true
        }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>t", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>u", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<A-cr>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>dj",
            '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>dk",
            '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gl", '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>dq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
    end
}
