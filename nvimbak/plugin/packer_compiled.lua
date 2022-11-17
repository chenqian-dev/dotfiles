-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\2õ\2\0\0\5\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\b\0005\4\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2L:lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>\6v\1\0\2\vsilent\2\fnoremap\2>:lua require('Comment.api').toggle_current_linewise()<CR>\14<leader>/\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\2\v\0\1\1\0\0\0\1K\0\1\0\v\0\1\1\0\0\0\1L\0\2\0É\n\1\0\a\0(\00046\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0(Ä9\2\6\0015\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0034\4\0\0=\4\f\0035\4\r\0004\5\0\0=\5\14\4=\4\15\0035\4\16\0=\4\17\0033\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0005\5\23\0=\5\24\0043\5\25\0=\5\26\4=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\3B\2\2\0016\2\3\0009\2\"\0029\2#\2'\3$\0'\4%\0'\5&\0005\6'\0B\2\5\1K\0\1\0K\0\1\0\1\0\2\vsilent\2\fnoremap\2\27<cmd>AerialToggle!<cr>\14<leader>1\6n\20nvim_set_keymap\bapi\rmarkdown\1\0\1\17update_delay\3¨\2\15treesitter\1\0\1\17update_delay\3¨\2\blsp\1\0\3\17update_delay\3¨\2\23update_when_errors\2\31diagnostics_trigger_update\2\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4ö≥ÊÃ\tô≥Ê˝\3\1\0\3\15max_height\4Õô≥Ê\fÃô≥ˇ\3\rrelative\vcursor\vborder\frounded\vguides\1\0\4\rmid_item\v‚îú‚îÄ\14last_item\v‚îî‚îÄ\15whitespace\a  \15nested_top\t‚îÇ \14on_attach\0\14max_width\1\2\0\0\0032\vignore\14filetypes\1\0\3\rwintypes\fspecial\rbuftypes\fspecial\21unlisted_buffers\2\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\rbackends\1\0\20\19open_automatic\1\23highlight_on_hover\2\18update_events\28TextChanged,InsertLeave\22disable_max_lines\3êN\22highlight_closest\2\23link_folds_to_tree\1\21disable_max_size\3Ä≠‚\4\14nerd_font\tauto\22highlight_on_jump\3¨\2\19close_behavior\tauto\14min_width\3\30\22default_direction\17prefer_right\18post_jump_cmd\15normal! zz\17manage_folds\1\20close_on_select\1\16show_guides\2\23link_tree_to_folds\1\26placement_editor_edge\1\21default_bindings\2\19highlight_mode\16split_width\1\4\0\0\blsp\15treesitter\rmarkdown\nsetup\21aerial not found\vnotify\bvim\vaerial\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2D\0\0\3\1\4\0\0066\0\0\0009\0\1\0009\0\2\0-\1\0\0'\2\3\0D\0\3\0\0¿\14term_type\21nvim_buf_get_var\bapi\bvimp\1\1\4\0\4\0\0226\1\0\0003\2\1\0B\1\2\3\15\0\1\0X\3\14Ä\a\2\2\0X\3\4Ä+\3\1\0002\0\0ÄL\3\2\0X\3\5Ä\a\2\3\0X\3\3Ä+\3\1\0002\0\0ÄL\3\2\0+\3\2\0002\0\0ÄL\3\2\0+\3\2\0002\0\0ÄL\3\2\0\thori\tvert\0\npcallÏ\5\1\0\5\0\23\0#6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\f\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0023\3\6\0=\3\a\0026\3\b\0009\3\t\0039\3\n\3=\3\v\2=\2\r\1B\0\2\0016\0\b\0009\0\14\0009\0\15\0'\1\16\0'\2\17\0'\3\18\0005\4\19\0B\0\5\0016\0\b\0009\0\14\0009\0\15\0'\1\16\0'\2\20\0'\3\21\0005\4\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCyclePrev <CR>\f<S-TAB>\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCycleNext <CR>\n<TAB>\6n\20nvim_set_keymap\bapi\foptions\1\0\0\ntheme\18current_theme\6g\bvim\18custom_filter\0\foffsets\1\0\16\25enforce_regular_tabs\1\22left_trunc_marker\bÔÇ®\rtab_size\3\20\16diagnostics\1\24show_tab_indicators\2\28show_buffer_close_icons\2\20separator_style\tthin\22buffer_close_icon\bÔôï\20max_name_length\3\14\15close_icon\bÔôò\tview\16multiwindow\23right_trunc_marker\bÔÇ©\22max_prefix_length\3\r\27always_show_bufferline\2\20show_close_icon\2\18modified_icon\bÔëÑ\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\2ò\a\0\0\5\0\20\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0005\3\a\0005\4\b\0=\4\t\0035\4\n\0=\4\v\3=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\2=\2\19\1B\0\2\1K\0\1\0\17integrations\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\fneotree\1\0\3\14show_root\1\fenabled\1\22transparent_panel\1\rnvimtree\1\0\3\14show_root\1\fenabled\2\22transparent_panel\1\15native_lsp\15underlines\1\0\4\16information\14underline\rwarnings\14underline\verrors\14underline\nhints\14underline\17virtual_text\1\0\4\16information\vitalic\rwarnings\vitalic\verrors\vitalic\nhints\vitalic\1\0\1\fenabled\2\1\0\21\15treesitter\2\14vim_sneak\1\15lightspeed\1\14which_key\1\14dashboard\2\rlsp_saga\1\rgitsigns\2\rmarkdown\2\16lsp_trouble\1\15bufferline\2\vbarbar\1\bhop\1\bcmp\2\20symbols_outline\2\vnotify\2\tfern\1\15telekasten\2\15ts_rainbow\1\14telescope\2\vneogit\1\14gitgutter\1\vstyles\1\0\f\rcomments\vitalic\14variables\tNONE\17conditionals\vitalic\14functions\tNONE\fnumbers\tNONE\rbooleans\tNONE\14operators\tNONE\fstrings\tNONE\15properties\tNONE\ntypes\tNONE\rkeywords\tNONE\nloops\tNONE\1\0\2\16term_colors\1\27transparent_background\1\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2ª\4\0\0\4\0\18\0\0216\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\14\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2=\2\15\0015\2\16\0=\2\17\1B\0\2\1K\0\1\0\fkeymaps\1\0\2\vbuffer\2\fnoremap\2\nsigns\1\0\0\17changedelete\1\0\4\ttext\b‚ñé\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚ñî\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b‚ñã\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚ñã\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚ñã\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\2U\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\2\1\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\0\0\1\v\0\0\thelp\rterminal\14dashboard\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\22nvchad_cheatsheet\18lsp-installer\5\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["litee-calltree.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/litee-calltree.nvim",
    url = "https://github.com/ldelossa/litee-calltree.nvim"
  },
  ["litee.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/litee.nvim",
    url = "https://github.com/ldelossa/litee.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2≠\4\0\0\4\0\r\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2'\3\a\0B\2\2\2'\3\b\0&\2\3\2=\2\t\0015\2\n\0=\2\v\0014\2\0\0=\2\f\1B\0\2\1K\0\1\0\24extra_trigger_chars\17handler_opts\1\0\1\vborder\frounded\rlog_path\23/lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\21\14doc_lines\3\n\26floating_window_off_y\3\1\ndebug\1\tbind\2\fverbose\1\16hint_scheme\vString\vzindex\3»\1\19timer_interval\3»\1\16hint_enable\2\14max_width\3P\fpadding\5\15max_height\3\f\20floating_window\2#floating_window_above_cur_line\2\ffix_pos\1\26floating_window_off_x\3\1\17hi_parameter LspSignatureActiveParameter\16hint_prefix\nüêº \17shadow_guibg\nBlack\19always_trigger\1\17shadow_blend\3$\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2\\\0\0\3\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1'\2\4\0B\1\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\2\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\1\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\5\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\2\5\0\18\3\0\0'\4\6\0&\3\4\3B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\4\1\4\0\b6\1\0\0009\1\1\1-\2\0\0009\2\2\0029\2\3\2\18\3\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\4\1\4\0\b6\1\0\0009\1\1\1-\2\0\0009\2\2\0029\2\3\2\18\3\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñä„\3\0\0\6\1&\0M5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\2 \0006\3\29\0009\3!\0039\3\"\3B\3\1\0028\3\3\0'\4#\0-\5\0\0009\5$\5&\2\5\2B\1\2\1'\1%\0L\1\2\0\1¿\bÔåå\abg\f guibg=\tmode\afn\27hi! LualineMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=ô\2\0\0\f\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\4\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\4\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\n\b\0\18\v\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäö\14\1\0\v\0]\0ª\0016\0\0\0'\1\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\0035\4\15\0004\5\0\0=\5\16\0044\5\0\0=\5\17\0044\5\0\0=\5\18\0044\5\0\0=\5\19\0044\5\0\0=\5\20\0044\5\0\0=\5\21\4=\4\22\0035\4\23\0004\5\0\0=\5\16\0044\5\0\0=\5\17\0044\5\0\0=\5\18\0044\5\0\0=\5\19\0044\5\0\0=\5\20\0044\5\0\0=\5\21\4=\4\24\0033\4\25\0003\5\26\0\18\6\4\0005\a\31\0003\b\27\0>\b\1\a5\b\29\0009\t\28\1=\t\30\b=\b \a5\b!\0=\b\"\aB\6\2\1\18\6\4\0005\a$\0003\b#\0>\b\1\a5\b%\0=\b\"\aB\6\2\1\18\6\4\0005\a&\0009\b\5\2=\b'\aB\6\2\1\18\6\4\0005\a(\0009\b\5\2=\b'\a5\b*\0009\t)\1=\t\30\b=\b \aB\6\2\1\18\6\4\0005\a+\0B\6\2\1\18\6\4\0005\a,\0005\b-\0009\t\30\1=\t\30\b=\b \aB\6\2\1\18\6\4\0005\a.\0005\b/\0=\b0\a5\b1\0=\b2\a5\b5\0005\t4\0009\n3\1=\n\30\t=\t6\b5\t8\0009\n7\1=\n\30\t=\t9\b5\t;\0009\n:\1=\n\30\t=\t<\b=\b=\aB\6\2\1\18\6\4\0004\a\3\0003\b>\0>\b\1\aB\6\2\1\18\6\4\0005\a@\0003\b?\0>\b\1\a5\bA\0=\b \aB\6\2\1\18\6\5\0005\aB\0006\bC\0009\bD\b=\bE\a9\b\a\2=\b'\a5\bG\0009\tF\1=\t\30\b=\b \aB\6\2\1\18\6\5\0005\aH\0006\bC\0009\bD\b=\bE\a5\bI\0009\tF\1=\t\30\b=\b \aB\6\2\1\18\6\5\0005\aJ\0005\bL\0009\tK\1=\t\30\b=\b \aB\6\2\1\18\6\5\0005\aM\0005\bN\0=\b2\a5\bP\0005\tO\0009\nF\1=\n\30\t=\tQ\b5\tS\0009\nR\1=\n\30\t=\tT\b5\tU\0009\n3\1=\n\30\t=\tV\b=\bW\a9\b\a\2=\b'\aB\6\2\1\18\6\5\0005\aZ\0003\bX\0>\b\1\a5\bY\0009\t\28\1=\t\30\b=\b \a5\b[\0=\b\"\aB\6\2\0019\6\\\0\18\a\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\tleft\3\1\1\0\0\1\0\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\1\0\3\nadded\tÔÉæ \rmodified\tÔßâ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\ngreen\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\bgui\tbold\afg\f#ffffff\1\0\1\ticon\rÔÇÖ LSP:\0\0\22diagnostics_color\15color_info\1\0\0\tcyan\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsymbols\1\0\3\tinfo\tÔÅ™ \twarn\tÔÅ± \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\afg\1\0\0\tblue\0\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\1\0\3\23section_separators\5\25component_separators\5\ntheme\15catppuccin\1\2\0\0\rNvimTree\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\vyellow\f#ECBE7B\rdarkblue\f#081633\abg\f#202328\fmagenta\f#c678dd\tblue\f#51afef\vorange\f#FF8800\afg\f#bbc2cf\bred\f#ec5f67\flualine\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neoformat = {
    config = { "\27LJ\2\2e\0\0\2\0\5\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\3\0=\1\4\0K\0\1\0\23neoformat_enable_c\16clangforamt\25neoformat_enable_cpp\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  neorg = {
    config = { "\27LJ\2\2∑\5\0\0\a\0 \0.6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\2\r\0B\1\2\0029\1\14\0015\2\30\0005\3\15\0004\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0035\4\22\0005\5\20\0005\6\19\0=\6\21\5=\5\23\4=\4\24\0035\4\26\0005\5\25\0=\5\23\4=\4\27\0034\4\0\0=\4\28\0034\4\0\0=\4\29\3=\3\31\2B\1\2\1K\0\1\0\tload\1\0\0\22core.norg.qol.toc\22core.norg.journal\18core.gtd.base\1\0\0\1\0\1\14workspace\thome\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\1\thome$~/workspace/personal/note/Plans\24core.norg.concealer\25core.norg.completion\18core.defaults\1\0\0\nsetup\nneorg\1\0\0\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl9https://github.com/nvim-neorg/tree-sitter-norg-table\15norg_table\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl8https://github.com/nvim-neorg/tree-sitter-norg-meta\14norg_meta\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\2≥\5\0\0\t\0\23\0(6\0\0\0'\1\1\0B\0\2\0026\1\2\0006\2\0\0'\3\3\0B\1\3\3\14\0\1\0X\3\5Ä6\3\4\0009\3\5\3'\4\6\0B\3\2\1K\0\1\0009\3\a\0025\4\r\0\18\6\0\0009\5\b\0006\a\4\0009\a\t\a9\a\n\a'\b\v\0B\a\2\2'\b\f\0B\5\4\2=\5\14\0046\5\0\0'\6\15\0B\5\2\0029\5\16\0059\5\17\5=\5\18\0045\5\19\0=\5\20\4B\3\2\0016\3\4\0009\3\21\3'\4\22\0B\3\2\1K\0\1\0†\1    augroup _open_nvim_tree\n    autocmd! * <buffer>\n    autocmd SessionLoadPost * silent! lua require(\"nvim-tree\").toggle(false, true)\n    augroup end\n    \bcmd\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\15CurrentDir\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\20max_path_length\3P\26autosave_last_session\2\19colon_replacer\a++\29autosave_only_in_session\1\18path_replacer\a__\rsessions\tdata\fstdpath\afn\bnew\nsetup\31session_manager not found!\vnotify\bvim\20session_manager\npcall\17plenary.path\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireR\0\1\2\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_next_item\fvisible˜\6\1\0\b\0002\0u6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0005\2\b\0005\3\6\0003\4\5\0=\4\a\3=\3\t\0025\3\r\0009\4\n\0003\5\v\0005\6\f\0B\4\3\2=\4\14\0039\4\n\0009\5\n\0009\5\15\5)\6¸ˇB\5\2\0025\6\16\0B\4\3\2=\4\17\0039\4\n\0009\5\n\0009\5\15\5)\6\4\0B\5\2\0025\6\18\0B\4\3\2=\4\19\0039\4\n\0009\5\n\0009\5\20\5B\5\1\0025\6\21\0B\4\3\2=\4\22\0039\4\23\0009\4\24\4=\4\25\0039\4\n\0005\5\27\0009\6\n\0009\6\26\6B\6\1\2=\6\28\0059\6\n\0009\6\29\6B\6\1\2=\6\30\5B\4\2\2=\4\31\0039\4\n\0009\4 \0045\5!\0B\4\2\2=\4\"\3=\3\n\0029\3\23\0009\3#\0034\4\5\0005\5$\0>\5\1\0045\5%\0>\5\2\0045\5&\0>\5\3\0045\5'\0>\5\4\0044\5\3\0005\6(\0>\6\1\5B\3\3\2=\3#\2B\1\2\0019\1\4\0009\1)\1'\2*\0005\3,\0009\4\n\0009\4+\0049\4)\4B\4\1\2=\4\n\0034\4\3\0005\5-\0>\5\1\4=\4#\3B\1\3\0019\1\4\0009\1)\1'\2.\0005\3/\0009\4\n\0009\4+\0049\4)\4B\4\1\2=\4\n\0039\4\23\0009\4#\0044\5\3\0005\0060\0>\6\1\0054\6\3\0005\a1\0>\a\1\6B\4\3\2=\4#\3B\1\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\15treesitter\1\0\1\tname\fluasnip\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\1\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\tload luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\2ç\2\0\0\6\0\f\0\0206\0\0\0006\1\1\0'\2\2\0B\0\3\3\15\0\0\0X\2\rÄ5\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0029\3\b\0019\4\5\0029\5\a\2B\3\3\0016\3\t\0009\3\n\3'\4\v\0B\3\2\1K\0\1\0\30ColorizerReloadAllBuffers\bcmd\bvim\nsetup\25user_default_options\1\0\t\vhsl_fn\1\tmode\15background\nnames\2\bcss\1\vRRGGBB\2\vrgb_fn\1\rRRGGBBAA\1\vcss_fn\1\bRGB\2\14filetypes\1\0\0\1\2\0\0\6*\14colorizer\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\2»\a\0\0\f\0$\0P6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\1\18\2\0\0B\1\2\0019\1\4\0'\2\5\0B\1\2\0016\1\0\0'\2\6\0B\1\2\0029\1\a\1+\2\0\0005\3\t\0005\4\b\0=\4\n\3B\1\3\0016\1\v\0009\1\f\0019\1\r\0015\2\14\0\18\3\1\0'\4\15\0'\5\16\0'\6\17\0'\a\18\0'\b\19\0'\t\20\0'\n\21\0'\v\22\0&\6\v\6\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\23\0'\6\24\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\25\0'\6\21\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\26\0'\6\27\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\28\0'\6\29\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\30\0'\6\31\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5 \0'\6!\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\"\0'\6#\0\18\a\2\0B\3\5\1K\0\1\0)<cmd>lua require'dap'.step_out()<cr>\t<F9>*<cmd>lua require'dap'.step_over()<cr>\t<F8>*<cmd>lua require'dap'.step_into()<cr>\t<F7>)<cmd>lua require'dap'.continue()<cr>\t<F5>*<cmd>lua require'dap'.terminate()<cr>\t<F4>\15<leader>dc0:lua require('dap').toggle_breakpoint()<CR>\15<leader>dd\15<C-w>o<CR>0:lua require('dap').clear_breakpoints()<CR>$:lua require'dapui'.close()<CR>':lua require'dap.repl'.close()<CR>&:lua require'dap'.terminate()<CR>\":lua require'dap'.close()<CR>\15<leader>de\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\vcppdbg\1\0\0\1\3\0\0\6c\bcpp\18load_launchjs\19dap.ext.vscode\nDEBUG\18set_log_level\ron_setup!plugins.dap.configs.cpptools\bdap\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\2\\\0\0\2\1\5\0\t-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0009\0\3\0'\1\4\0B\0\2\1K\0\1\0\3¿\25DapVirtualTextEnable\17nvim_command\bapi\bvim\topenò\1\0\0\2\2\a\0\18-\0\0\0009\0\0\0009\0\1\0B\0\1\1-\0\1\0009\0\1\0B\0\1\0016\0\2\0009\0\3\0009\0\4\0'\1\5\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0'\1\6\0B\0\2\1K\0\1\0\1¿\3¿\19bdelete! term:\26DapVirtualTextDisable\17nvim_command\bapi\bvim\nclose\trepl\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\4¿\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\5¿\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\5¿\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\5¿∂\t\1\0\n\0006\0a6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0TÄ6\2\0\0006\3\1\0'\4\6\0B\2\3\3\14\0\2\0X\4\5Ä6\4\3\0009\4\4\4'\5\a\0B\4\2\0012\0JÄ6\4\3\0009\4\b\0049\4\t\4'\5\n\0005\6\v\0B\4\3\0016\4\3\0009\4\b\0049\4\t\4'\5\f\0005\6\r\0B\4\3\0016\4\3\0009\4\b\0049\4\t\4'\5\14\0005\6\15\0B\4\3\0019\4\16\0035\5\18\0005\6\17\0=\6\19\0055\6\21\0005\a\20\0=\a\22\6=\6\23\0054\6\3\0005\a\26\0005\b\25\0005\t\24\0>\t\1\b=\b\27\a>\a\1\0065\a\29\0005\b\28\0=\b\27\a>\a\2\6=\6\30\0055\6\31\0005\a!\0005\b \0=\b\"\a=\a\23\6=\6#\0055\6$\0=\6%\0055\6&\0=\6'\5B\4\2\0013\4(\0003\5)\0009\6*\0019\6+\0069\6,\0063\a.\0=\a-\0069\6*\0019\6/\0069\0060\0063\a1\0=\a-\0069\6*\0019\6/\0069\0062\0063\a3\0=\a-\0069\6*\0019\6/\0069\0064\0063\a5\0=\a-\0062\0\0ÄK\0\1\0K\0\1\0K\0\1\0\0\15disconnect\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\0\0\vrender\1\0\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\flayouts\1\0\2\tsize\4\0ÄÄ¿˛\3\rposition\vbottom\1\3\0\0\trepl\fconsole\relements\1\0\2\tsize\3(\rposition\tleft\1\5\0\0\0\16breakpoints\vstacks\fwatches\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\rmappings\vexpand\1\0\5\topen\6o\trepl\6r\vtoggle\6t\tedit\6e\vremove\6d\1\4\0\0\6o\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\1\0\4\vtexthl\27LspDiagnosticsSignHint\ttext\bÔó£\vlinehl\5\nnumhl\5\26DapBreakpointRejected\1\0\4\vtexthl\"LspDiagnosticsSignInformation\ttext\bÔïî\vlinehl\28DiagnosticUnderlineInfo\nnumhl\"LspDiagnosticsSignInformation\15DapStopped\1\0\4\vtexthl\28LspDiagnosticsSignError\ttext\tüõë\vlinehl\5\nnumhl\5\18DapBreakpoint\16sign_define\afn\20dapui not found\ndapui\18dap not found\vnotify\bvim\bdap\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\2„\1\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\t\fenabled\2\15all_frames\1\18virt_text_pos\beol\15virt_lines\1\14commented\1\29highlight_new_as_changed\2 highlight_changed_variables\2\21show_stop_reason\2\21enabled_commands\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2\3\0\0\t\0\20\00046\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0016\0\0\0'\1\4\0B\0\2\0025\1\6\0006\2\0\0'\3\5\0B\2\2\2=\2\a\0016\2\0\0'\3\b\0B\2\2\2=\2\t\0016\2\0\0'\3\n\0B\2\2\2=\2\v\0016\2\0\0'\3\f\0B\2\2\2=\2\r\0016\2\0\0'\3\14\0B\2\2\2=\2\15\0016\2\16\0\18\3\1\0B\2\2\4H\5\15Ä\n\6\0\0X\a\tÄ6\a\17\0\18\b\6\0B\a\2\2\a\a\18\0X\a\4Ä9\a\19\0068\b\5\0B\a\2\1X\a\4Ä8\a\5\0009\a\2\a4\b\0\0B\a\2\1F\5\3\3R\5ÔK\0\1\0\ron_setup\ntable\ttype\npairs\vjsonls\31plugins.lsp.configs.jsonls\fpyright plugins.lsp.configs.pyright\vbashls\31plugins.lsp.configs.bashls\16sumneko_lua$plugins.lsp.configs.sumneko_lua\vclangd\1\0\0\31plugins.lsp.configs.clangd\14lspconfig\1\0\1\27automatic_installation\1\nsetup\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\2¡\5\0\0\6\0\20\0\0276\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\1K\0\1\0009\2\6\0015\3\18\0005\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\19\3B\2\2\1K\0\1\0\fmapping\1\0\0\21change_view_mode\1\0\3\bmap\14<leader>v\bcmd2<cmd>lua require('spectre').change_view()<CR>\tdesc\28change result view mode\16run_replace\1\0\3\bmap\14<leader>r\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\tdesc\16replace all\21show_option_menu\1\0\3\bmap\14<leader>o\bcmd3<cmd>lua require('spectre').show_options()<CR>\tdesc\16show option\15enter_file\1\0\3\bmap\6o\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\tdesc\22goto current file\16toggle_line\1\0\0\1\0\3\bmap\add\bcmd2<cmd>lua require('spectre').toggle_line()<CR>\tdesc\24toggle current item\nsetup\23spectre not found!\vnotify\bvim\fspectre\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2û\t\0\0\b\0/\00086\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\23\0005\3\14\0005\4\15\0005\5\17\0005\6\16\0=\6\18\0055\6\19\0=\6\20\5=\5\21\4=\4\22\3=\3\24\2=\2\25\0015\2 \0006\3\26\0009\3\27\0035\4\28\0006\5\29\0009\5\30\5'\6\31\0)\aË\3B\5\3\2>\5\2\4B\3\2\2=\3!\0025\3\"\0005\4#\0=\4$\3=\3%\0025\3&\0005\4'\0=\4(\0035\4)\0005\5*\0=\5\r\0045\5+\0=\5,\4=\4-\3=\3$\2=\2.\1B\0\2\1K\0\1\0\rrenderer\vglyphs\vfolder\1\0\6\topen\bÔêì\15empty_open\bÔêî\fdefault\bÔêì\nempty\bÔêì\fsymlink\bÔíÇ\17symlink_open\bÓóæ\1\0\a\runstaged\b‚úó\fdeleted\bÔëò\14untracked\b‚òÖ\frenamed\b‚ûú\runmerged\bÓúß\fignored\b‚óå\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\tshow\1\0\4\17folder_arrow\2\bgit\2\vfolder\2\tfile\2\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\nicons\1\0\3\tedge\t‚îÇ \tnone\a  \vcorner\t‚îî \1\0\1\venable\2\25root_folder_modifier\1\0\0\6 \brep\vstring\1\4\0\0\16:t:gs?$?/..\0\r?:gs?^??\vconcat\ntable\factions\14open_file\1\0\0\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\bgit\1\0\2\vignore\1\venable\1\tview\1\0\4\21hide_root_folder\2\tside\tleft\nwidth\3\25 preserve_window_proportions\2\24update_focused_file\1\0\2\15update_cwd\1\venable\1\23ignore_ft_on_setup\1\2\0\0\14dashboard\ffilters\1\0\5\15update_cwd\2\18disable_netrw\2\16open_on_tab\1\18hijack_cursor\2\17hijack_netrw\2\1\0\1\rdotfiles\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "neorg" },
    config = { "\27LJ\2\2™\3\0\0\4\0\18\0\0216\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\0016\2\14\0009\2\15\0029\2\16\2=\2\17\1B\0\2\1K\0\1\0\ntheme\18current_theme\6g\bvim\fmatchup\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\t<CR>\21node_decremental\t<BS>\21node_incremental\t<CR>\22scope_incremental\n<TAB>\1\0\1\venable\2\14highlight\1\0\3\21use_languagetree\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\5\0\0\blua\bvim\tnorg\rmarkdown\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2M\0\0\a\2\2\0\v6\0\0\0-\1\0\0B\0\2\4X\3\4Ä-\5\1\0009\5\1\5\18\6\4\0B\5\2\1E\3\3\3R\3˙K\0\1\0\3¿\1¿\19load_extension\vipairsä\15\1\0\v\0A\0á\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0Ä5\2#\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\0045\5\t\0=\5\n\4=\4\v\0036\4\1\0'\5\f\0B\4\2\0029\4\r\4=\4\14\0035\4\15\0=\4\16\0036\4\1\0'\5\f\0B\4\2\0029\4\17\4=\4\18\0035\4\19\0=\4\20\0034\4\0\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0036\4\1\0'\5\26\0B\4\2\0029\4\27\0049\4\28\4=\4\29\0036\4\1\0'\5\26\0B\4\2\0029\4\30\0049\4\28\4=\4\31\0036\4\1\0'\5\26\0B\4\2\0029\4 \0049\4\28\4=\4!\0036\4\1\0'\5\26\0B\4\2\0029\4\"\4=\4\"\3=\3$\0029\3%\1\18\4\2\0B\3\2\0015\3&\0006\4\0\0003\5'\0B\4\2\0016\4(\0009\4)\0049\4*\0045\5+\0\18\6\4\0'\a,\0'\b-\0'\t.\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b/\0'\t0\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b1\0'\t2\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b3\0'\t4\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b5\0'\t6\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b7\0'\t8\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b9\0'\t:\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b;\0'\t<\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b=\0'\t>\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b?\0'\t@\0\18\n\5\0B\6\5\0012\0\0ÄK\0\1\0K\0\1\0\27:Telescope themes <CR>\15<leader>th\29:Telescope oldfiles <CR>\15<leader>of\30:Telescope live_grep <CR>\15<leader>lg\30:Telescope help_tags <CR>\15<leader>fh\31:Telescope git_status <CR>\15<leader>gs :Telescope git_commits <CR>\15<leader>gcF:Telescope find_files follow=true no_ignore=true hidden=true <CR>\15<leader>fa\31:Telescope find_files <CR>\15<leader>ff\28:Telescope buffers <CR>\15<leader>fb\26:Telescope terms <CR>\15<leader>te\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0\1\5\0\0\14ui-select\vthemes\nterms\bfzf\nsetup\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rtruncate\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\3\0\0\17node_modules\b*.o\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\19preview_cutoff\3x\nwidth\4◊«¬Î\3äÆØˇ\3\1\0\3\18preview_width\4ö≥ÊÃ\tô≥Üˇ\3\20prompt_position\btop\18results_width\4ö≥ÊÃ\tô≥¶ˇ\3\22vimgrep_arguments\1\0\n\23selection_strategy\nreset\20layout_strategy\15horizontal\ruse_less\2\17entry_prefix\a  \21sorting_strategy\14ascending\18prompt_prefix\v ÔÄÇ  \17initial_mode\vinsert\rwinblend\3\0\19color_devicons\2\20selection_caret\a  \1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\14telescope\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\2é\6\0\0\5\0#\0G6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2=\2\6\0015\2\a\0005\3\b\0=\3\t\2=\2\n\1B\0\2\0016\0\4\0009\0\v\0009\0\f\0'\1\r\0'\2\14\0'\3\15\0005\4\16\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\18\0'\3\19\0005\4\20\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\21\0'\3\19\0005\4\22\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\23\0'\3\24\0005\4\25\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\26\0'\3\27\0005\4\28\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\29\0'\3\30\0005\4\31\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2 \0'\3!\0005\4\"\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>l\n<C-l>\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>k\n<C-k>\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>j\n<C-j>\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>h\n<C-h>\1\0\1\fnoremap\2\ajk\1\0\1\fnoremap\2\15<C-\\><C-n>\n<esc>\6t\1\0\1\fnoremap\2\24<cmd>ToggleTerm<cr>\14<leader>2\6n\20nvim_set_keymap\bapi\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vsingle\nshell\6o\bvim\1\0\a\17persist_size\2\17open_mapping\n<c-\\>\20start_in_insert\2\20insert_mappings\2\22terminal_mappings\2\14direction\nfloat\17hide_numbers\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\2[\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\4\0\0\rNvimTree\15vista_kind\15toggleterm\27Illuminate_ftblacklist\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2‹*\0\0\b\0î\1\0Œ\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\3=\3\26\0025\3\27\0=\3\28\0025\3\30\0005\4\29\0=\4\31\0035\4 \0=\4!\3=\3\"\0025\3#\0005\4%\0005\5$\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\0045\5-\0=\5.\0045\5/\0=\0050\0045\0051\0=\0052\0045\0053\0=\0054\0045\0055\0=\0056\0045\0057\0=\0058\0045\0059\0=\5:\0045\5;\0=\5!\0045\5<\0005\6=\0=\6>\0055\6?\0=\0068\0055\6@\0=\6A\0055\6B\0=\6C\0055\6D\0=\6&\0055\6E\0=\6(\0055\6F\0=\6G\0055\6H\0=\6I\0055\6J\0=\0060\5=\5I\0045\5K\0005\6L\0=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6A\0055\6S\0=\0064\0055\6T\0=\6(\0055\6U\0=\6V\5=\5G\0045\5W\0005\6X\0=\0068\0055\6Y\0=\6G\0055\6Z\0=\6[\0055\6\\\0=\6V\0055\6]\0=\6^\0055\6_\0=\6>\5=\5A\0045\5`\0005\6a\0=\6>\0055\6b\0=\6,\0055\6c\0=\0064\0055\6d\0=\6e\0055\6f\0=\6g\0055\6h\0=\6i\0055\6j\0=\6(\0055\6k\0=\6M\0055\6l\0=\0060\0055\6m\0=\0062\0055\6n\0=\6^\0055\6o\0=\6p\0055\6q\0=\6:\0055\6r\0=\6C\0055\6s\0=\6I\0055\6t\0=\6G\5=\5>\0045\5u\0005\6v\0=\6,\0055\6w\0=\0064\0055\6x\0=\0060\5=\5M\0045\5y\0005\6z\0=\6i\0055\6{\0=\6G\0055\6|\0=\6[\0055\6}\0=\6,\0055\6~\0=\6\31\0055\6\0=\6Ä\0055\6Å\0=\6Ç\0055\6É\0=\6Ñ\0055\6Ö\0=\6V\0055\6Ü\0=\6(\0055\6á\0=\0060\0055\6à\0=\0062\5=\5i\0045\5â\0005\6ä\0=\6I\0055\6ã\0=\6å\0055\6ç\0=\6é\0055\6è\0=\6M\0055\6ê\0=\6Ñ\0055\6ë\0=\6*\5=\5å\0049\5í\1\18\6\2\0B\5\2\0019\5ì\1\18\6\4\0\18\a\3\0B\5\3\1K\0\1\0\rregister\nsetup\1\3\0\0 <cmd>Telescope commands<cr>\rCommands\1\3\0\0\31<cmd>Telescope keymaps<cr>\fKeymaps\1\3\0\0!<cmd>Telescope registers<cr>\14Registers\6M\1\3\0\0!<cmd>Telescope man_pages<cr>\14Man Pages\6h\1\3\0\0!<cmd>Telescope help_tags<cr>\14Find Help\1\3\0\0#<cmd>Telescope colorscheme<cr>\16Colorscheme\1\0\1\tname\tHelp\1\3\0\0005<cmd>Telescope lsp_dynamic_workspace_symbols<cr>\22Workspace Symbols\1\3\0\0,<cmd>Telescope lsp_document_symbols<cr>\21Document Symbols\1\3\0\0&<cmd>lua vim.lsp.buf.rename()<cr>\vRename\1\3\0\0002<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>\rQuickfix\6k\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\20Prev Diagnostic\6j\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\20Next Diagnostic\6I\1\3\0\0\28<cmd>LspInstallInfo<cr>\19Installer Info\1\3\0\0\21<cmd>LspInfo<cr>\tInfo\1\3\0\0\20<cmd>Format<cr>\vFormat\1\3\0\0001<cmd>Telescope lsp_workspace_diagnostics<cr>\26Workspace Diagnostics\1\3\0\0000<cmd>Telescope lsp_document_diagnostics<cr>\25Document Diagnostics\1\3\0\0+<cmd>lua vim.lsp.buf.code_action()<cr>\16Code Action\1\0\1\tname\bLSP\1\3\0\0D<cmd>lua require('spectre').open_visual({select_word=true})<CR>\vSearch\1\3\0\0+<cmd>lua require('spectre').open()<CR>\20Replace Project\1\3\0\0007<cmd>lua require('spectre').open_file_search()<CR>\17Replace File\1\0\1\tname\fReplace\1\3\0\0$<cmd>Gitsigns diffthis HEAD<cr>\tDiff\1\3\0\0#<cmd>Telescope git_commits<cr>\20Checkout commit\1\3\0\0$<cmd>Telescope git_branches<cr>\20Checkout branch\1\3\0\0\"<cmd>Telescope git_status<cr>\22Open changed file\6U\1\3\0\0006<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>\20Undo Stage Hunk\1\3\0\0006<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>\20Undo Stage Hunk\1\3\0\0003<cmd>lua require 'gitsigns'.stage_buffer()<cr>\15Stage Hunk\1\3\0\0001<cmd>lua require 'gitsigns'.stage_hunk()<cr>\15Stage Hunk\1\3\0\0003<cmd>lua require 'gitsigns'.reset_buffer()<cr>\17Reset Buffer\1\3\0\0001<cmd>lua require 'gitsigns'.reset_hunk()<cr>\15Reset Hunk\6l\1\3\0\0001<cmd>lua require 'gitsigns'.blame_line()<cr>\nBlame\6N\1\3\0\0000<cmd>lua require 'gitsigns'.prev_hunk()<cr>\14Prev Hunk\6n\1\3\0\0000<cmd>lua require 'gitsigns'.next_hunk()<cr>\14Next Hunk\1\3\0\0\26<cmd>DiffviewOpen<CR>\17Diff Project\1\3\0\0!<cmd>DiffviewFileHistory<CR>\17File History\1\3\0\0#<cmd>lua _LAZYGIT_TOGGLE()<CR>\fLazygit\1\0\1\tname\bGit\1\3\0\0!<cmd>Gitsigns setloclist<cr>\22Open changed hunk\6u\1\3\0\0$<cmd>Trouble lsp_references<cr>\nUsage\1\3\0\0\30<cmd>Trouble quickfix<cr>\14Quick Fix\6w\1\3\0\0+<cmd>Trouble workspace_diagnostics<cr>\26Workspace Diagnostics\1\3\0\0*<cmd>Trouble document_diagnostics<cr>\25Document Diagnostics\1\3\0\0\21<cmd>Trouble<cr>\18ToggleTrouble\1\0\1\tname\fTrouble\6q\1\3\0\0&<cmd>lua require'dap'.close()<cr>\tQuit\1\3\0\0,<cmd>lua require'dap'.repl.toggle()<cr>\16Toggle Repl\1\3\0\0&<cmd>lua require'dap'.pause()<cr>\nPause\1\3\0\0002<cmd>lua require'dapui'.toggle('sidebar')<cr>\19Toggle Sidebar\6X\1\3\0\0*<cmd>lua require'dap'.terminate()<cr>\14Terminate\6E\1\3\0\0E<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>\19Evaluate Input\6R\1\3\0\0.<cmd>lua require'dap'.run_to_cursor()<cr>\18Run to Cursor\1\0\1\tname\nDebug\1\3\0\0#<cmd>CMake set_target_args<CR>\vSetArg\6c\1\3\0\0\26<cmd>CMake cancel<CR>\vCancel\6d\1\3\0\0#<cmd>CMake build_and_debug<CR>\16DebugTarget\1\3\0\0!<cmd>CMake build_and_run<CR>\bRun\1\3\0\0\29<cmd>CMake build_all<CR>\rBuildAll\6b\1\3\0\0\25<cmd>CMake build<CR>\16BuildTarget\6T\1\3\0\0%<cmd>CMake select_build_type<CR>\20SelectBuildType\1\3\0\0!<cmd>CMake select_target<CR>\17SelectTarget\6g\1\3\0\0\29<cmd>CMake configure<CR>\14Configure\1\0\1\tname\nCMake\1\3\0\0h<cmd>lua require('telescope').extensions.neoclip.default(require('telescope.themes').get_ivy())<cr>\22Clipboard Manager\6o\1\3\0\0\26<cmd>AerialToggle<CR>\fOutline\6t\1\3\0\0\27<cmd>UltestSummary<CR>\14Unit Test\6P\1\3\0\0)<cmd>SessionManager load_session<cr>\rProjects\6p\1\3\0\0 <cmd>Telescope projects<cr>\rProjects\6S\1\3\0\0N<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>\17Find Symobls\6s\1\3\0\0E<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>\26Find Document Symbols\6F\1\3\0\0t<cmd>lua require('telescope').extensions.live_grep_raw.live_grep_raw(require('telescope.themes').get_ivy())<cr>\14Find Text\6f\1\3\0\0;<cmd>lua require('telescope.builtin').find_files()<cr>\15Find files\6C\1\3\0\0\20<cmd>%bd|e#<CR>\24Close Other Buffers\6r\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\6a\1\0\0\1\3\0\0\19<cmd>Alpha<cr>\fWelcome\1\0\5\vnowait\2\tmode\6n\vprefix\f<Space>\vsilent\2\fnoremap\2\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\vhidden\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\tcall\blua\a^:\a^ \vlayout\nwidth\1\0\2\bmax\0032\bmin\3\20\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmax\3\25\bmin\3\4\vwindow\fpadding\1\5\0\0\3\2\3\2\3\2\3\2\vmargin\1\5\0\0\3\1\3\0\3\1\3\0\1\0\3\rposition\vbottom\rwinblend\3\0\vborder\frounded\19popup_mappings\1\0\2\14scroll_up\n<c-u>\16scroll_down\n<c-d>\nicons\1\0\3\ngroup\6+\14separator\b‚ûú\15breadcrumb\a¬ª\15key_labels\fplugins\1\0\3\19ignore_missing\2\14show_help\2\rtriggers\tauto\fpresets\1\0\a\6g\1\6z\1\fwindows\2\fmotions\1\bnav\2\17text_objects\1\14operators\1\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\1\14which-key\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\2≠\4\0\0\4\0\r\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2'\3\a\0B\2\2\2'\3\b\0&\2\3\2=\2\t\0015\2\n\0=\2\v\0014\2\0\0=\2\f\1B\0\2\1K\0\1\0\24extra_trigger_chars\17handler_opts\1\0\1\vborder\frounded\rlog_path\23/lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\21\14doc_lines\3\n\26floating_window_off_y\3\1\ndebug\1\tbind\2\fverbose\1\16hint_scheme\vString\vzindex\3»\1\19timer_interval\3»\1\16hint_enable\2\14max_width\3P\fpadding\5\15max_height\3\f\20floating_window\2#floating_window_above_cur_line\2\ffix_pos\1\26floating_window_off_x\3\1\17hi_parameter LspSignatureActiveParameter\16hint_prefix\nüêº \17shadow_guibg\nBlack\19always_trigger\1\17shadow_blend\3$\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2\3\0\0\t\0\20\00046\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0016\0\0\0'\1\4\0B\0\2\0025\1\6\0006\2\0\0'\3\5\0B\2\2\2=\2\a\0016\2\0\0'\3\b\0B\2\2\2=\2\t\0016\2\0\0'\3\n\0B\2\2\2=\2\v\0016\2\0\0'\3\f\0B\2\2\2=\2\r\0016\2\0\0'\3\14\0B\2\2\2=\2\15\0016\2\16\0\18\3\1\0B\2\2\4H\5\15Ä\n\6\0\0X\a\tÄ6\a\17\0\18\b\6\0B\a\2\2\a\a\18\0X\a\4Ä9\a\19\0068\b\5\0B\a\2\1X\a\4Ä8\a\5\0009\a\2\a4\b\0\0B\a\2\1F\5\3\3R\5ÔK\0\1\0\ron_setup\ntable\ttype\npairs\vjsonls\31plugins.lsp.configs.jsonls\fpyright plugins.lsp.configs.pyright\vbashls\31plugins.lsp.configs.bashls\16sumneko_lua$plugins.lsp.configs.sumneko_lua\vclangd\1\0\0\31plugins.lsp.configs.clangd\14lspconfig\1\0\1\27automatic_installation\1\nsetup\23nvim-lsp-installer\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireR\0\1\2\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_next_item\fvisible˜\6\1\0\b\0002\0u6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0005\2\b\0005\3\6\0003\4\5\0=\4\a\3=\3\t\0025\3\r\0009\4\n\0003\5\v\0005\6\f\0B\4\3\2=\4\14\0039\4\n\0009\5\n\0009\5\15\5)\6¸ˇB\5\2\0025\6\16\0B\4\3\2=\4\17\0039\4\n\0009\5\n\0009\5\15\5)\6\4\0B\5\2\0025\6\18\0B\4\3\2=\4\19\0039\4\n\0009\5\n\0009\5\20\5B\5\1\0025\6\21\0B\4\3\2=\4\22\0039\4\23\0009\4\24\4=\4\25\0039\4\n\0005\5\27\0009\6\n\0009\6\26\6B\6\1\2=\6\28\0059\6\n\0009\6\29\6B\6\1\2=\6\30\5B\4\2\2=\4\31\0039\4\n\0009\4 \0045\5!\0B\4\2\2=\4\"\3=\3\n\0029\3\23\0009\3#\0034\4\5\0005\5$\0>\5\1\0045\5%\0>\5\2\0045\5&\0>\5\3\0045\5'\0>\5\4\0044\5\3\0005\6(\0>\6\1\5B\3\3\2=\3#\2B\1\2\0019\1\4\0009\1)\1'\2*\0005\3,\0009\4\n\0009\4+\0049\4)\4B\4\1\2=\4\n\0034\4\3\0005\5-\0>\5\1\4=\4#\3B\1\3\0019\1\4\0009\1)\1'\2.\0005\3/\0009\4\n\0009\4+\0049\4)\4B\4\1\2=\4\n\0039\4\23\0009\4#\0044\5\3\0005\0060\0>\6\1\0054\6\3\0005\a1\0>\a\1\6B\4\3\2=\4#\3B\1\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\15treesitter\1\0\1\tname\fluasnip\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\1\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\tload luasnip.loaders.from_vscode\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2‹*\0\0\b\0î\1\0Œ\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\3=\3\26\0025\3\27\0=\3\28\0025\3\30\0005\4\29\0=\4\31\0035\4 \0=\4!\3=\3\"\0025\3#\0005\4%\0005\5$\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\0045\5-\0=\5.\0045\5/\0=\0050\0045\0051\0=\0052\0045\0053\0=\0054\0045\0055\0=\0056\0045\0057\0=\0058\0045\0059\0=\5:\0045\5;\0=\5!\0045\5<\0005\6=\0=\6>\0055\6?\0=\0068\0055\6@\0=\6A\0055\6B\0=\6C\0055\6D\0=\6&\0055\6E\0=\6(\0055\6F\0=\6G\0055\6H\0=\6I\0055\6J\0=\0060\5=\5I\0045\5K\0005\6L\0=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6A\0055\6S\0=\0064\0055\6T\0=\6(\0055\6U\0=\6V\5=\5G\0045\5W\0005\6X\0=\0068\0055\6Y\0=\6G\0055\6Z\0=\6[\0055\6\\\0=\6V\0055\6]\0=\6^\0055\6_\0=\6>\5=\5A\0045\5`\0005\6a\0=\6>\0055\6b\0=\6,\0055\6c\0=\0064\0055\6d\0=\6e\0055\6f\0=\6g\0055\6h\0=\6i\0055\6j\0=\6(\0055\6k\0=\6M\0055\6l\0=\0060\0055\6m\0=\0062\0055\6n\0=\6^\0055\6o\0=\6p\0055\6q\0=\6:\0055\6r\0=\6C\0055\6s\0=\6I\0055\6t\0=\6G\5=\5>\0045\5u\0005\6v\0=\6,\0055\6w\0=\0064\0055\6x\0=\0060\5=\5M\0045\5y\0005\6z\0=\6i\0055\6{\0=\6G\0055\6|\0=\6[\0055\6}\0=\6,\0055\6~\0=\6\31\0055\6\0=\6Ä\0055\6Å\0=\6Ç\0055\6É\0=\6Ñ\0055\6Ö\0=\6V\0055\6Ü\0=\6(\0055\6á\0=\0060\0055\6à\0=\0062\5=\5i\0045\5â\0005\6ä\0=\6I\0055\6ã\0=\6å\0055\6ç\0=\6é\0055\6è\0=\6M\0055\6ê\0=\6Ñ\0055\6ë\0=\6*\5=\5å\0049\5í\1\18\6\2\0B\5\2\0019\5ì\1\18\6\4\0\18\a\3\0B\5\3\1K\0\1\0\rregister\nsetup\1\3\0\0 <cmd>Telescope commands<cr>\rCommands\1\3\0\0\31<cmd>Telescope keymaps<cr>\fKeymaps\1\3\0\0!<cmd>Telescope registers<cr>\14Registers\6M\1\3\0\0!<cmd>Telescope man_pages<cr>\14Man Pages\6h\1\3\0\0!<cmd>Telescope help_tags<cr>\14Find Help\1\3\0\0#<cmd>Telescope colorscheme<cr>\16Colorscheme\1\0\1\tname\tHelp\1\3\0\0005<cmd>Telescope lsp_dynamic_workspace_symbols<cr>\22Workspace Symbols\1\3\0\0,<cmd>Telescope lsp_document_symbols<cr>\21Document Symbols\1\3\0\0&<cmd>lua vim.lsp.buf.rename()<cr>\vRename\1\3\0\0002<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>\rQuickfix\6k\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\20Prev Diagnostic\6j\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\20Next Diagnostic\6I\1\3\0\0\28<cmd>LspInstallInfo<cr>\19Installer Info\1\3\0\0\21<cmd>LspInfo<cr>\tInfo\1\3\0\0\20<cmd>Format<cr>\vFormat\1\3\0\0001<cmd>Telescope lsp_workspace_diagnostics<cr>\26Workspace Diagnostics\1\3\0\0000<cmd>Telescope lsp_document_diagnostics<cr>\25Document Diagnostics\1\3\0\0+<cmd>lua vim.lsp.buf.code_action()<cr>\16Code Action\1\0\1\tname\bLSP\1\3\0\0D<cmd>lua require('spectre').open_visual({select_word=true})<CR>\vSearch\1\3\0\0+<cmd>lua require('spectre').open()<CR>\20Replace Project\1\3\0\0007<cmd>lua require('spectre').open_file_search()<CR>\17Replace File\1\0\1\tname\fReplace\1\3\0\0$<cmd>Gitsigns diffthis HEAD<cr>\tDiff\1\3\0\0#<cmd>Telescope git_commits<cr>\20Checkout commit\1\3\0\0$<cmd>Telescope git_branches<cr>\20Checkout branch\1\3\0\0\"<cmd>Telescope git_status<cr>\22Open changed file\6U\1\3\0\0006<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>\20Undo Stage Hunk\1\3\0\0006<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>\20Undo Stage Hunk\1\3\0\0003<cmd>lua require 'gitsigns'.stage_buffer()<cr>\15Stage Hunk\1\3\0\0001<cmd>lua require 'gitsigns'.stage_hunk()<cr>\15Stage Hunk\1\3\0\0003<cmd>lua require 'gitsigns'.reset_buffer()<cr>\17Reset Buffer\1\3\0\0001<cmd>lua require 'gitsigns'.reset_hunk()<cr>\15Reset Hunk\6l\1\3\0\0001<cmd>lua require 'gitsigns'.blame_line()<cr>\nBlame\6N\1\3\0\0000<cmd>lua require 'gitsigns'.prev_hunk()<cr>\14Prev Hunk\6n\1\3\0\0000<cmd>lua require 'gitsigns'.next_hunk()<cr>\14Next Hunk\1\3\0\0\26<cmd>DiffviewOpen<CR>\17Diff Project\1\3\0\0!<cmd>DiffviewFileHistory<CR>\17File History\1\3\0\0#<cmd>lua _LAZYGIT_TOGGLE()<CR>\fLazygit\1\0\1\tname\bGit\1\3\0\0!<cmd>Gitsigns setloclist<cr>\22Open changed hunk\6u\1\3\0\0$<cmd>Trouble lsp_references<cr>\nUsage\1\3\0\0\30<cmd>Trouble quickfix<cr>\14Quick Fix\6w\1\3\0\0+<cmd>Trouble workspace_diagnostics<cr>\26Workspace Diagnostics\1\3\0\0*<cmd>Trouble document_diagnostics<cr>\25Document Diagnostics\1\3\0\0\21<cmd>Trouble<cr>\18ToggleTrouble\1\0\1\tname\fTrouble\6q\1\3\0\0&<cmd>lua require'dap'.close()<cr>\tQuit\1\3\0\0,<cmd>lua require'dap'.repl.toggle()<cr>\16Toggle Repl\1\3\0\0&<cmd>lua require'dap'.pause()<cr>\nPause\1\3\0\0002<cmd>lua require'dapui'.toggle('sidebar')<cr>\19Toggle Sidebar\6X\1\3\0\0*<cmd>lua require'dap'.terminate()<cr>\14Terminate\6E\1\3\0\0E<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>\19Evaluate Input\6R\1\3\0\0.<cmd>lua require'dap'.run_to_cursor()<cr>\18Run to Cursor\1\0\1\tname\nDebug\1\3\0\0#<cmd>CMake set_target_args<CR>\vSetArg\6c\1\3\0\0\26<cmd>CMake cancel<CR>\vCancel\6d\1\3\0\0#<cmd>CMake build_and_debug<CR>\16DebugTarget\1\3\0\0!<cmd>CMake build_and_run<CR>\bRun\1\3\0\0\29<cmd>CMake build_all<CR>\rBuildAll\6b\1\3\0\0\25<cmd>CMake build<CR>\16BuildTarget\6T\1\3\0\0%<cmd>CMake select_build_type<CR>\20SelectBuildType\1\3\0\0!<cmd>CMake select_target<CR>\17SelectTarget\6g\1\3\0\0\29<cmd>CMake configure<CR>\14Configure\1\0\1\tname\nCMake\1\3\0\0h<cmd>lua require('telescope').extensions.neoclip.default(require('telescope.themes').get_ivy())<cr>\22Clipboard Manager\6o\1\3\0\0\26<cmd>AerialToggle<CR>\fOutline\6t\1\3\0\0\27<cmd>UltestSummary<CR>\14Unit Test\6P\1\3\0\0)<cmd>SessionManager load_session<cr>\rProjects\6p\1\3\0\0 <cmd>Telescope projects<cr>\rProjects\6S\1\3\0\0N<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>\17Find Symobls\6s\1\3\0\0E<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>\26Find Document Symbols\6F\1\3\0\0t<cmd>lua require('telescope').extensions.live_grep_raw.live_grep_raw(require('telescope.themes').get_ivy())<cr>\14Find Text\6f\1\3\0\0;<cmd>lua require('telescope.builtin').find_files()<cr>\15Find files\6C\1\3\0\0\20<cmd>%bd|e#<CR>\24Close Other Buffers\6r\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\6a\1\0\0\1\3\0\0\19<cmd>Alpha<cr>\fWelcome\1\0\5\vnowait\2\tmode\6n\vprefix\f<Space>\vsilent\2\fnoremap\2\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\vhidden\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\tcall\blua\a^:\a^ \vlayout\nwidth\1\0\2\bmax\0032\bmin\3\20\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmax\3\25\bmin\3\4\vwindow\fpadding\1\5\0\0\3\2\3\2\3\2\3\2\vmargin\1\5\0\0\3\1\3\0\3\1\3\0\1\0\3\rposition\vbottom\rwinblend\3\0\vborder\frounded\19popup_mappings\1\0\2\14scroll_up\n<c-u>\16scroll_down\n<c-d>\nicons\1\0\3\ngroup\6+\14separator\b‚ûú\15breadcrumb\a¬ª\15key_labels\fplugins\1\0\3\19ignore_missing\2\14show_help\2\rtriggers\tauto\fpresets\1\0\a\6g\1\6z\1\fwindows\2\fmotions\1\bnav\2\17text_objects\1\14operators\1\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\1\14which-key\frequire\npcall\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\2ò\a\0\0\5\0\20\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0005\3\a\0005\4\b\0=\4\t\0035\4\n\0=\4\v\3=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\2=\2\19\1B\0\2\1K\0\1\0\17integrations\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\fneotree\1\0\3\14show_root\1\fenabled\1\22transparent_panel\1\rnvimtree\1\0\3\14show_root\1\fenabled\2\22transparent_panel\1\15native_lsp\15underlines\1\0\4\16information\14underline\rwarnings\14underline\verrors\14underline\nhints\14underline\17virtual_text\1\0\4\16information\vitalic\rwarnings\vitalic\verrors\vitalic\nhints\vitalic\1\0\1\fenabled\2\1\0\21\15treesitter\2\14vim_sneak\1\15lightspeed\1\14which_key\1\14dashboard\2\rlsp_saga\1\rgitsigns\2\rmarkdown\2\16lsp_trouble\1\15bufferline\2\vbarbar\1\bhop\1\bcmp\2\20symbols_outline\2\vnotify\2\tfern\1\15telekasten\2\15ts_rainbow\1\14telescope\2\vneogit\1\14gitgutter\1\vstyles\1\0\f\rcomments\vitalic\14variables\tNONE\17conditionals\vitalic\14functions\tNONE\fnumbers\tNONE\rbooleans\tNONE\14operators\tNONE\fstrings\tNONE\15properties\tNONE\ntypes\tNONE\rkeywords\tNONE\nloops\tNONE\1\0\2\16term_colors\1\27transparent_background\1\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2\\\0\0\3\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1'\2\4\0B\1\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\2\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\1\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\5\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\2\5\0\18\3\0\0'\4\6\0&\3\4\3B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\4\1\4\0\b6\1\0\0009\1\1\1-\2\0\0009\2\2\0029\2\3\2\18\3\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\4\1\4\0\b6\1\0\0009\1\1\1-\2\0\0009\2\2\0029\2\3\2\18\3\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñä„\3\0\0\6\1&\0M5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\2 \0006\3\29\0009\3!\0039\3\"\3B\3\1\0028\3\3\0'\4#\0-\5\0\0009\5$\5&\2\5\2B\1\2\1'\1%\0L\1\2\0\1¿\bÔåå\abg\f guibg=\tmode\afn\27hi! LualineMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=ô\2\0\0\f\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\4\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\4\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\n\b\0\18\v\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäö\14\1\0\v\0]\0ª\0016\0\0\0'\1\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\0035\4\15\0004\5\0\0=\5\16\0044\5\0\0=\5\17\0044\5\0\0=\5\18\0044\5\0\0=\5\19\0044\5\0\0=\5\20\0044\5\0\0=\5\21\4=\4\22\0035\4\23\0004\5\0\0=\5\16\0044\5\0\0=\5\17\0044\5\0\0=\5\18\0044\5\0\0=\5\19\0044\5\0\0=\5\20\0044\5\0\0=\5\21\4=\4\24\0033\4\25\0003\5\26\0\18\6\4\0005\a\31\0003\b\27\0>\b\1\a5\b\29\0009\t\28\1=\t\30\b=\b \a5\b!\0=\b\"\aB\6\2\1\18\6\4\0005\a$\0003\b#\0>\b\1\a5\b%\0=\b\"\aB\6\2\1\18\6\4\0005\a&\0009\b\5\2=\b'\aB\6\2\1\18\6\4\0005\a(\0009\b\5\2=\b'\a5\b*\0009\t)\1=\t\30\b=\b \aB\6\2\1\18\6\4\0005\a+\0B\6\2\1\18\6\4\0005\a,\0005\b-\0009\t\30\1=\t\30\b=\b \aB\6\2\1\18\6\4\0005\a.\0005\b/\0=\b0\a5\b1\0=\b2\a5\b5\0005\t4\0009\n3\1=\n\30\t=\t6\b5\t8\0009\n7\1=\n\30\t=\t9\b5\t;\0009\n:\1=\n\30\t=\t<\b=\b=\aB\6\2\1\18\6\4\0004\a\3\0003\b>\0>\b\1\aB\6\2\1\18\6\4\0005\a@\0003\b?\0>\b\1\a5\bA\0=\b \aB\6\2\1\18\6\5\0005\aB\0006\bC\0009\bD\b=\bE\a9\b\a\2=\b'\a5\bG\0009\tF\1=\t\30\b=\b \aB\6\2\1\18\6\5\0005\aH\0006\bC\0009\bD\b=\bE\a5\bI\0009\tF\1=\t\30\b=\b \aB\6\2\1\18\6\5\0005\aJ\0005\bL\0009\tK\1=\t\30\b=\b \aB\6\2\1\18\6\5\0005\aM\0005\bN\0=\b2\a5\bP\0005\tO\0009\nF\1=\n\30\t=\tQ\b5\tS\0009\nR\1=\n\30\t=\tT\b5\tU\0009\n3\1=\n\30\t=\tV\b=\bW\a9\b\a\2=\b'\aB\6\2\1\18\6\5\0005\aZ\0003\bX\0>\b\1\a5\bY\0009\t\28\1=\t\30\b=\b \a5\b[\0=\b\"\aB\6\2\0019\6\\\0\18\a\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\tleft\3\1\1\0\0\1\0\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\1\0\3\nadded\tÔÉæ \rmodified\tÔßâ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\ngreen\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\bgui\tbold\afg\f#ffffff\1\0\1\ticon\rÔÇÖ LSP:\0\0\22diagnostics_color\15color_info\1\0\0\tcyan\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsymbols\1\0\3\tinfo\tÔÅ™ \twarn\tÔÅ± \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\afg\1\0\0\tblue\0\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\1\0\3\23section_separators\5\25component_separators\5\ntheme\15catppuccin\1\2\0\0\rNvimTree\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\vyellow\f#ECBE7B\rdarkblue\f#081633\abg\f#202328\fmagenta\f#c678dd\tblue\f#51afef\vorange\f#FF8800\afg\f#bbc2cf\bred\f#ec5f67\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\2≥\5\0\0\t\0\23\0(6\0\0\0'\1\1\0B\0\2\0026\1\2\0006\2\0\0'\3\3\0B\1\3\3\14\0\1\0X\3\5Ä6\3\4\0009\3\5\3'\4\6\0B\3\2\1K\0\1\0009\3\a\0025\4\r\0\18\6\0\0009\5\b\0006\a\4\0009\a\t\a9\a\n\a'\b\v\0B\a\2\2'\b\f\0B\5\4\2=\5\14\0046\5\0\0'\6\15\0B\5\2\0029\5\16\0059\5\17\5=\5\18\0045\5\19\0=\5\20\4B\3\2\0016\3\4\0009\3\21\3'\4\22\0B\3\2\1K\0\1\0†\1    augroup _open_nvim_tree\n    autocmd! * <buffer>\n    autocmd SessionLoadPost * silent! lua require(\"nvim-tree\").toggle(false, true)\n    augroup end\n    \bcmd\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\15CurrentDir\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\20max_path_length\3P\26autosave_last_session\2\19colon_replacer\a++\29autosave_only_in_session\1\18path_replacer\a__\rsessions\tdata\fstdpath\afn\bnew\nsetup\31session_manager not found!\vnotify\bvim\20session_manager\npcall\17plenary.path\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\2„\1\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\t\fenabled\2\15all_frames\1\18virt_text_pos\beol\15virt_lines\1\14commented\1\29highlight_new_as_changed\2 highlight_changed_variables\2\21show_stop_reason\2\21enabled_commands\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\1\1\0\0\0\1K\0\1\0\v\0\1\1\0\0\0\1L\0\2\0É\n\1\0\a\0(\00046\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0(Ä9\2\6\0015\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0034\4\0\0=\4\f\0035\4\r\0004\5\0\0=\5\14\4=\4\15\0035\4\16\0=\4\17\0033\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0005\5\23\0=\5\24\0043\5\25\0=\5\26\4=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\3B\2\2\0016\2\3\0009\2\"\0029\2#\2'\3$\0'\4%\0'\5&\0005\6'\0B\2\5\1K\0\1\0K\0\1\0\1\0\2\vsilent\2\fnoremap\2\27<cmd>AerialToggle!<cr>\14<leader>1\6n\20nvim_set_keymap\bapi\rmarkdown\1\0\1\17update_delay\3¨\2\15treesitter\1\0\1\17update_delay\3¨\2\blsp\1\0\3\17update_delay\3¨\2\23update_when_errors\2\31diagnostics_trigger_update\2\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4ö≥ÊÃ\tô≥Ê˝\3\1\0\3\15max_height\4Õô≥Ê\fÃô≥ˇ\3\rrelative\vcursor\vborder\frounded\vguides\1\0\4\rmid_item\v‚îú‚îÄ\14last_item\v‚îî‚îÄ\15whitespace\a  \15nested_top\t‚îÇ \14on_attach\0\14max_width\1\2\0\0\0032\vignore\14filetypes\1\0\3\rwintypes\fspecial\rbuftypes\fspecial\21unlisted_buffers\2\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\rbackends\1\0\20\19open_automatic\1\23highlight_on_hover\2\18update_events\28TextChanged,InsertLeave\22disable_max_lines\3êN\22highlight_closest\2\23link_folds_to_tree\1\21disable_max_size\3Ä≠‚\4\14nerd_font\tauto\22highlight_on_jump\3¨\2\19close_behavior\tauto\14min_width\3\30\22default_direction\17prefer_right\18post_jump_cmd\15normal! zz\17manage_folds\1\20close_on_select\1\16show_guides\2\23link_tree_to_folds\1\26placement_editor_edge\1\21default_bindings\2\19highlight_mode\16split_width\1\4\0\0\blsp\15treesitter\rmarkdown\nsetup\21aerial not found\vnotify\bvim\vaerial\frequire\npcall\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\2\\\0\0\2\1\5\0\t-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0009\0\3\0'\1\4\0B\0\2\1K\0\1\0\3¿\25DapVirtualTextEnable\17nvim_command\bapi\bvim\topenò\1\0\0\2\2\a\0\18-\0\0\0009\0\0\0009\0\1\0B\0\1\1-\0\1\0009\0\1\0B\0\1\0016\0\2\0009\0\3\0009\0\4\0'\1\5\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0'\1\6\0B\0\2\1K\0\1\0\1¿\3¿\19bdelete! term:\26DapVirtualTextDisable\17nvim_command\bapi\bvim\nclose\trepl\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\4¿\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\5¿\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\5¿\21\0\0\1\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\5¿∂\t\1\0\n\0006\0a6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0TÄ6\2\0\0006\3\1\0'\4\6\0B\2\3\3\14\0\2\0X\4\5Ä6\4\3\0009\4\4\4'\5\a\0B\4\2\0012\0JÄ6\4\3\0009\4\b\0049\4\t\4'\5\n\0005\6\v\0B\4\3\0016\4\3\0009\4\b\0049\4\t\4'\5\f\0005\6\r\0B\4\3\0016\4\3\0009\4\b\0049\4\t\4'\5\14\0005\6\15\0B\4\3\0019\4\16\0035\5\18\0005\6\17\0=\6\19\0055\6\21\0005\a\20\0=\a\22\6=\6\23\0054\6\3\0005\a\26\0005\b\25\0005\t\24\0>\t\1\b=\b\27\a>\a\1\0065\a\29\0005\b\28\0=\b\27\a>\a\2\6=\6\30\0055\6\31\0005\a!\0005\b \0=\b\"\a=\a\23\6=\6#\0055\6$\0=\6%\0055\6&\0=\6'\5B\4\2\0013\4(\0003\5)\0009\6*\0019\6+\0069\6,\0063\a.\0=\a-\0069\6*\0019\6/\0069\0060\0063\a1\0=\a-\0069\6*\0019\6/\0069\0062\0063\a3\0=\a-\0069\6*\0019\6/\0069\0064\0063\a5\0=\a-\0062\0\0ÄK\0\1\0K\0\1\0K\0\1\0\0\15disconnect\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\0\0\vrender\1\0\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\flayouts\1\0\2\tsize\4\0ÄÄ¿˛\3\rposition\vbottom\1\3\0\0\trepl\fconsole\relements\1\0\2\tsize\3(\rposition\tleft\1\5\0\0\0\16breakpoints\vstacks\fwatches\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\rmappings\vexpand\1\0\5\topen\6o\trepl\6r\vtoggle\6t\tedit\6e\vremove\6d\1\4\0\0\6o\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\1\0\4\vtexthl\27LspDiagnosticsSignHint\ttext\bÔó£\vlinehl\5\nnumhl\5\26DapBreakpointRejected\1\0\4\vtexthl\"LspDiagnosticsSignInformation\ttext\bÔïî\vlinehl\28DiagnosticUnderlineInfo\nnumhl\"LspDiagnosticsSignInformation\15DapStopped\1\0\4\vtexthl\28LspDiagnosticsSignError\ttext\tüõë\vlinehl\5\nnumhl\5\18DapBreakpoint\16sign_define\afn\20dapui not found\ndapui\18dap not found\vnotify\bvim\bdap\frequire\npcall\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2û\t\0\0\b\0/\00086\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\23\0005\3\14\0005\4\15\0005\5\17\0005\6\16\0=\6\18\0055\6\19\0=\6\20\5=\5\21\4=\4\22\3=\3\24\2=\2\25\0015\2 \0006\3\26\0009\3\27\0035\4\28\0006\5\29\0009\5\30\5'\6\31\0)\aË\3B\5\3\2>\5\2\4B\3\2\2=\3!\0025\3\"\0005\4#\0=\4$\3=\3%\0025\3&\0005\4'\0=\4(\0035\4)\0005\5*\0=\5\r\0045\5+\0=\5,\4=\4-\3=\3$\2=\2.\1B\0\2\1K\0\1\0\rrenderer\vglyphs\vfolder\1\0\6\topen\bÔêì\15empty_open\bÔêî\fdefault\bÔêì\nempty\bÔêì\fsymlink\bÔíÇ\17symlink_open\bÓóæ\1\0\a\runstaged\b‚úó\fdeleted\bÔëò\14untracked\b‚òÖ\frenamed\b‚ûú\runmerged\bÓúß\fignored\b‚óå\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\tshow\1\0\4\17folder_arrow\2\bgit\2\vfolder\2\tfile\2\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\nicons\1\0\3\tedge\t‚îÇ \tnone\a  \vcorner\t‚îî \1\0\1\venable\2\25root_folder_modifier\1\0\0\6 \brep\vstring\1\4\0\0\16:t:gs?$?/..\0\r?:gs?^??\vconcat\ntable\factions\14open_file\1\0\0\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\bgit\1\0\2\vignore\1\venable\1\tview\1\0\4\21hide_root_folder\2\tside\tleft\nwidth\3\25 preserve_window_proportions\2\24update_focused_file\1\0\2\15update_cwd\1\venable\1\23ignore_ft_on_setup\1\2\0\0\14dashboard\ffilters\1\0\5\15update_cwd\2\18disable_netrw\2\16open_on_tab\1\18hijack_cursor\2\17hijack_netrw\2\1\0\1\rdotfiles\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2M\0\0\a\2\2\0\v6\0\0\0-\1\0\0B\0\2\4X\3\4Ä-\5\1\0009\5\1\5\18\6\4\0B\5\2\1E\3\3\3R\3˙K\0\1\0\3¿\1¿\19load_extension\vipairsä\15\1\0\v\0A\0á\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0Ä5\2#\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\0045\5\t\0=\5\n\4=\4\v\0036\4\1\0'\5\f\0B\4\2\0029\4\r\4=\4\14\0035\4\15\0=\4\16\0036\4\1\0'\5\f\0B\4\2\0029\4\17\4=\4\18\0035\4\19\0=\4\20\0034\4\0\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0036\4\1\0'\5\26\0B\4\2\0029\4\27\0049\4\28\4=\4\29\0036\4\1\0'\5\26\0B\4\2\0029\4\30\0049\4\28\4=\4\31\0036\4\1\0'\5\26\0B\4\2\0029\4 \0049\4\28\4=\4!\0036\4\1\0'\5\26\0B\4\2\0029\4\"\4=\4\"\3=\3$\0029\3%\1\18\4\2\0B\3\2\0015\3&\0006\4\0\0003\5'\0B\4\2\0016\4(\0009\4)\0049\4*\0045\5+\0\18\6\4\0'\a,\0'\b-\0'\t.\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b/\0'\t0\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b1\0'\t2\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b3\0'\t4\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b5\0'\t6\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b7\0'\t8\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b9\0'\t:\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b;\0'\t<\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b=\0'\t>\0\18\n\5\0B\6\5\1\18\6\4\0'\a,\0'\b?\0'\t@\0\18\n\5\0B\6\5\0012\0\0ÄK\0\1\0K\0\1\0\27:Telescope themes <CR>\15<leader>th\29:Telescope oldfiles <CR>\15<leader>of\30:Telescope live_grep <CR>\15<leader>lg\30:Telescope help_tags <CR>\15<leader>fh\31:Telescope git_status <CR>\15<leader>gs :Telescope git_commits <CR>\15<leader>gcF:Telescope find_files follow=true no_ignore=true hidden=true <CR>\15<leader>fa\31:Telescope find_files <CR>\15<leader>ff\28:Telescope buffers <CR>\15<leader>fb\26:Telescope terms <CR>\15<leader>te\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0\1\5\0\0\14ui-select\vthemes\nterms\bfzf\nsetup\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rtruncate\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\3\0\0\17node_modules\b*.o\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\19preview_cutoff\3x\nwidth\4◊«¬Î\3äÆØˇ\3\1\0\3\18preview_width\4ö≥ÊÃ\tô≥Üˇ\3\20prompt_position\btop\18results_width\4ö≥ÊÃ\tô≥¶ˇ\3\22vimgrep_arguments\1\0\n\23selection_strategy\nreset\20layout_strategy\15horizontal\ruse_less\2\17entry_prefix\a  \21sorting_strategy\14ascending\18prompt_prefix\v ÔÄÇ  \17initial_mode\vinsert\rwinblend\3\0\19color_devicons\2\20selection_caret\a  \1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\2é\6\0\0\5\0#\0G6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2=\2\6\0015\2\a\0005\3\b\0=\3\t\2=\2\n\1B\0\2\0016\0\4\0009\0\v\0009\0\f\0'\1\r\0'\2\14\0'\3\15\0005\4\16\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\18\0'\3\19\0005\4\20\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\21\0'\3\19\0005\4\22\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\23\0'\3\24\0005\4\25\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\26\0'\3\27\0005\4\28\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2\29\0'\3\30\0005\4\31\0B\0\5\0016\0\4\0009\0\v\0009\0\f\0'\1\17\0'\2 \0'\3!\0005\4\"\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>l\n<C-l>\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>k\n<C-k>\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>j\n<C-j>\1\0\1\fnoremap\2\21<C-\\><C-n><C-W>h\n<C-h>\1\0\1\fnoremap\2\ajk\1\0\1\fnoremap\2\15<C-\\><C-n>\n<esc>\6t\1\0\1\fnoremap\2\24<cmd>ToggleTerm<cr>\14<leader>2\6n\20nvim_set_keymap\bapi\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vsingle\nshell\6o\bvim\1\0\a\17persist_size\2\17open_mapping\n<c-\\>\20start_in_insert\2\20insert_mappings\2\22terminal_mappings\2\14direction\nfloat\17hide_numbers\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: neoformat
time([[Config for neoformat]], true)
try_loadstring("\27LJ\2\2e\0\0\2\0\5\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\3\0=\1\4\0K\0\1\0\23neoformat_enable_c\16clangforamt\25neoformat_enable_cpp\6g\bvim\0", "config", "neoformat")
time([[Config for neoformat]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\2[\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\4\0\0\rNvimTree\15vista_kind\15toggleterm\27Illuminate_ftblacklist\6g\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2ª\4\0\0\4\0\18\0\0216\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\14\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2=\2\15\0015\2\16\0=\2\17\1B\0\2\1K\0\1\0\fkeymaps\1\0\2\vbuffer\2\fnoremap\2\nsigns\1\0\0\17changedelete\1\0\4\ttext\b‚ñé\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚ñî\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b‚ñã\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚ñã\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚ñã\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\2¡\5\0\0\6\0\20\0\0276\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\1K\0\1\0009\2\6\0015\3\18\0005\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\19\3B\2\2\1K\0\1\0\fmapping\1\0\0\21change_view_mode\1\0\3\bmap\14<leader>v\bcmd2<cmd>lua require('spectre').change_view()<CR>\tdesc\28change result view mode\16run_replace\1\0\3\bmap\14<leader>r\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\tdesc\16replace all\21show_option_menu\1\0\3\bmap\14<leader>o\bcmd3<cmd>lua require('spectre').show_options()<CR>\tdesc\16show option\15enter_file\1\0\3\bmap\6o\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\tdesc\22goto current file\16toggle_line\1\0\0\1\0\3\bmap\add\bcmd2<cmd>lua require('spectre').toggle_line()<CR>\tdesc\24toggle current item\nsetup\23spectre not found!\vnotify\bvim\fspectre\frequire\npcall\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2D\0\0\3\1\4\0\0066\0\0\0009\0\1\0009\0\2\0-\1\0\0'\2\3\0D\0\3\0\0¿\14term_type\21nvim_buf_get_var\bapi\bvimp\1\1\4\0\4\0\0226\1\0\0003\2\1\0B\1\2\3\15\0\1\0X\3\14Ä\a\2\2\0X\3\4Ä+\3\1\0002\0\0ÄL\3\2\0X\3\5Ä\a\2\3\0X\3\3Ä+\3\1\0002\0\0ÄL\3\2\0+\3\2\0002\0\0ÄL\3\2\0+\3\2\0002\0\0ÄL\3\2\0\thori\tvert\0\npcallÏ\5\1\0\5\0\23\0#6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\f\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0023\3\6\0=\3\a\0026\3\b\0009\3\t\0039\3\n\3=\3\v\2=\2\r\1B\0\2\0016\0\b\0009\0\14\0009\0\15\0'\1\16\0'\2\17\0'\3\18\0005\4\19\0B\0\5\0016\0\b\0009\0\14\0009\0\15\0'\1\16\0'\2\20\0'\3\21\0005\4\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCyclePrev <CR>\f<S-TAB>\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCycleNext <CR>\n<TAB>\6n\20nvim_set_keymap\bapi\foptions\1\0\0\ntheme\18current_theme\6g\bvim\18custom_filter\0\foffsets\1\0\16\25enforce_regular_tabs\1\22left_trunc_marker\bÔÇ®\rtab_size\3\20\16diagnostics\1\24show_tab_indicators\2\28show_buffer_close_icons\2\20separator_style\tthin\22buffer_close_icon\bÔôï\20max_name_length\3\14\15close_icon\bÔôò\tview\16multiwindow\23right_trunc_marker\bÔÇ©\22max_prefix_length\3\r\27always_show_bufferline\2\20show_close_icon\2\18modified_icon\bÔëÑ\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\2õ\2\0\0\5\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\b\0005\4\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2L:lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>\6v\1\0\2\vsilent\2\fnoremap\2>:lua require('Comment.api').toggle_current_linewise()<CR>\14<leader>/\6n\20nvim_set_keymap\bapi\bvim\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\2»\a\0\0\f\0$\0P6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\1\18\2\0\0B\1\2\0019\1\4\0'\2\5\0B\1\2\0016\1\0\0'\2\6\0B\1\2\0029\1\a\1+\2\0\0005\3\t\0005\4\b\0=\4\n\3B\1\3\0016\1\v\0009\1\f\0019\1\r\0015\2\14\0\18\3\1\0'\4\15\0'\5\16\0'\6\17\0'\a\18\0'\b\19\0'\t\20\0'\n\21\0'\v\22\0&\6\v\6\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\23\0'\6\24\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\25\0'\6\21\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\26\0'\6\27\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\28\0'\6\29\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\30\0'\6\31\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5 \0'\6!\0\18\a\2\0B\3\5\1\18\3\1\0'\4\15\0'\5\"\0'\6#\0\18\a\2\0B\3\5\1K\0\1\0)<cmd>lua require'dap'.step_out()<cr>\t<F9>*<cmd>lua require'dap'.step_over()<cr>\t<F8>*<cmd>lua require'dap'.step_into()<cr>\t<F7>)<cmd>lua require'dap'.continue()<cr>\t<F5>*<cmd>lua require'dap'.terminate()<cr>\t<F4>\15<leader>dc0:lua require('dap').toggle_breakpoint()<CR>\15<leader>dd\15<C-w>o<CR>0:lua require('dap').clear_breakpoints()<CR>$:lua require'dapui'.close()<CR>':lua require'dap.repl'.close()<CR>&:lua require'dap'.terminate()<CR>\":lua require'dap'.close()<CR>\15<leader>de\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\vcppdbg\1\0\0\1\3\0\0\6c\bcpp\18load_launchjs\19dap.ext.vscode\nDEBUG\18set_log_level\ron_setup!plugins.dap.configs.cpptools\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\2U\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim', 'nvim-colorizer.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
