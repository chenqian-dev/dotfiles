-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  paccker_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup({
  function(use)
    -- Packer 可以升级自己
    use("wbthomason/packer.nvim")

    ----------------------- base --------------------------
    use "lewis6991/impatient.nvim" -- Speed up loading Lua modules
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    use "kyazdani42/nvim-web-devicons" -- icons
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    })
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
      })
    use({
      "akinsho/bufferline.nvim",
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
      })
    use({ "akinsho/toggleterm.nvim" })
    use({ "norcalli/nvim-colorizer.lua" })
    use({ "RRethy/vim-illuminate" })
    use({ "lewis6991/gitsigns.nvim" })
    use({ "numToStr/Comment.nvim" })
    -- use({ "ur4ltz/surround.nvim" })
    use({ "windwp/nvim-autopairs" })
    use({ "lukas-reineke/indent-blankline.nvim" })
    use({ 'phaazon/hop.nvim' })
    use("Shatur/neovim-session-manager")
    use("folke/which-key.nvim")
    use { "folke/zen-mode.nvim" }
    -- cmp
    use({ 'hrsh7th/nvim-cmp' })
    use("hrsh7th/vim-vsnip")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
    -- telescope
    use({
      "nvim-telescope/telescope.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })
    use("nvim-telescope/telescope-ui-select.nvim")
    use("nvim-telescope/telescope-live-grep-args.nvim")
    -- theme
    -- use("catppuccin/nvim")
    -- use("projekt0n/github-nvim-theme")
    -- use 'shaunsingh/nord.nvim'
    use 'rmehri01/onenord.nvim'
    
    ----------------------- lsp --------------------------
    use({ "neovim/nvim-lspconfig" })
    use({ 'stevearc/aerial.nvim' })
    use({ 'williamboman/mason.nvim' })
    use({ 'williamboman/mason-lspconfig.nvim' })
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    -- use({ "jose-elias-alvarez/null-ls.nvim" })
    use({ "sbdchd/neoformat" })

    ----------------------- dap --------------------------
    use("mfussenegger/nvim-dap")
    use("theHamsta/nvim-dap-virtual-text")
    use("rcarriga/nvim-dap-ui")
    use("Pocco81/DAPInstall.nvim")
    use("jbyuki/one-small-step-for-vimkind")

    
    ----------------------- 待安装 --------------------------
    -- ggandor/leap.nvim
    -- folke/todo-comments.nvim
    -- use("ahmedkhalf/project.nvim")
    -- -- 常见编程语言代码段
    -- use("rafamadriz/friendly-snippets")
    -- -- TypeScript 增强
    -- use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    -- -- Lua 增强
    -- use("folke/lua-dev.nvim")
    -- -- JSON 增强
    -- use("b0o/schemastore.nvim")
    -- -- Rust 增强
    -- use("simrat39/rust-tools.nvim")

    -- -------------------------------------------------------
    -- -- vimspector
    -- use("puremourning/vimspector")
    -- ----------------------------------------------


    if paccker_bootstrap then
      packer.sync()
    end

  end
})

-- load config
----------------------- base ---------------------------
require('plugin.base.nvim-treesitter')
require('plugin.base.nvim-tree')
require('plugin.base.bufferline')
require('plugin.base.lualine')
require('plugin.base.toggleterm')
require('plugin.base.nvim-colorizer')
require('plugin.base.vim-illuminate')
require('plugin.base.gitsigns')
require('plugin.base.comment')
-- require('plugin.base.surround')
require('plugin.base.nvim-autopairs')
require('plugin.base.indent-blankline')
require('plugin.base.hop')
require('plugin.base.neovim-session-manager')
require('plugin.base.which-key')
require('plugin.base.zen-mode')
require('plugin.base.cmp')
require('plugin.base.telescope')
-- require('plugin.base.theme.catppuccin')
-- require('plugin.base.theme.github-nvim-theme')
-- require('plugin.base.theme.nord')
require('plugin.base.theme.onenord')

----------------------- lsp ---------------------------
require('plugin.lsp.lspconfig')
require('plugin.lsp.aerial')
require('plugin.lsp.lspkind')
require('plugin.lsp.lspsaga')
-- require('plugin.lsp.null-ls')
require('plugin.lsp.neoformat')
require('plugin.lsp.mason')
