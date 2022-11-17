local M = {}

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

M.use = function(packer)
  packer.use {
    'hrsh7th/nvim-cmp',
    requires = {{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'hrsh7th/cmp-cmdline'},
    {'rafamadriz/friendly-snippets'},
    {'L3MON4D3/LuaSnip'}, {'saadparwaiz1/cmp_luasnip'}},
    config = function()
      -- vim.cmd [[set completeopt=menu,menuone,noselect]]
      require("luasnip.loaders.from_vscode").load()
      local cmp = require 'cmp'
      cmp.setup {
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
          end
        },
        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            -- elseif has_words_before() then
            --   cmp.complete()
            else
              fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
          end, {"i", "s"}),
          ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
          ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
          ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
          ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
          }),
          -- Accept currently selected item. If none selected, `select` first item.
          -- Set `select` to `false` to only confirm explicitly selected items.
          ['<CR>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            -- elseif has_words_before() then
            --   cmp.complete()
            else
              fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
          end, {"i", "s"}),

        },
        sources = cmp.config.sources(
          {
            { name = 'nvim_lsp'},
            { name = "nvim_lsp_signature_help"},
            { name = 'luasnip' },
            { name = 'treesitter' }
          },
          {
            { name = 'buffer' }
          }
        )
    }
    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })
  end
}
end

return M
