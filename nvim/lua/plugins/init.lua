local packer = require("plugins.packer")

local use = packer.use
vim.g.current_theme = "onenord"

return packer.startup(function()
  ----------------------- base --------------------------
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "lewis6991/impatient.nvim" -- Speed up loading Lua modules    TODO: figure out how to use this
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "rcarriga/nvim-notify" -- notify
  use "kyazdani42/nvim-web-devicons" -- icons

  ---------------------- common --------------------------
  require('plugins.common.gitsigns').use(packer)
  require('plugins.common.hop').use(packer)
  require('plugins.common.indent-blankline').use(packer)
  require('plugins.common.nvim-treesitter').use(packer)

  ---------------------- util --------------------------
  require('plugins.util.comment').use(packer)
  require('plugins.util.neoformat').use(packer)
  require('plugins.util.nvim-autopairs').use(packer)
  require('plugins.util.neovim-session-manager').use(packer)
  require('plugins.util.which-key').use(packer)
  require('plugins.util.nvim-spectre').use(packer)

  ---------------------- note --------------------------
  require('plugins.note.neorg').use(packer)

  ----------------------- ui ---------------------------
  require('plugins.ui.aerial').use(packer)
  require('plugins.ui.nvim-tree').use(packer)
  require('plugins.ui.bufferline').use(packer)
  require('plugins.ui.lualine').use(packer)
  require('plugins.ui.toggleterm').use(packer)
  require('plugins.ui.nvim-colorizer').use(packer)
  require('plugins.ui.vim-illuminate').use(packer)

  -------------------- telescope ------------------------
  require('plugins.telescope.telescope').use(packer)
  require('plugins.telescope.telescope-ui-select').use(packer)

  ----------------------- cmp ---------------------------
  require('plugins.cmp.nvim-cmp').use(packer)

  ----------------------- lsp ---------------------------
  require('plugins.lsp.lsp-signature').use(packer)
  require('plugins.lsp.nvim-lsp-installer').use(packer)
  require('plugins.lsp.litee').use(packer)

  ----------------------- dap ---------------------------
  require('plugins.dap.nvim-dap').use(packer)
  require('plugins.dap.nvim-dap-ui').use(packer)
  require('plugins.dap.nvim-dap-virtual-text').use(packer)


  ---------------------- theme --------------------------
  require('plugins.theme.catppuccin').use(packer)

end)
