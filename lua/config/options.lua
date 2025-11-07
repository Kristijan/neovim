-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

-- Disable mouse support
vim.opt.mouse = ""

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = {
  extends = "…",
  lead = "·",
  multispace = "·",
  nbsp = "␣",
  tab = "→ ",
  trail = "·",
}
