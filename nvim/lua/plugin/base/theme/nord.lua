local status, nord = pcall(require, "nord")
if not status then
  vim.notify("没有找到 nord")
  return
end

nord.set()
vim.cmd[[colorscheme nord]]