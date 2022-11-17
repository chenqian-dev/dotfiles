-- https://github.com/windwp/nvim-autopairs
local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
  vim.notify("没有找到 nvim-autopairs")
  return
end
autopairs.setup({
  check_ts = true,
  ts_config = {
    lua = { "string" }, -- it will not add a pair on that treesitter node
    javascript = { "template_string" },
    java = false, -- don't check treesitter on java
  },
})
-- If you want insert `(` after select function or method item
local cmp_autopairs_status, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_status then
  vim.notify("没有找到 cmp_autopairs")
  return
end
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  vim.notify("没有找到 cmp")
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
