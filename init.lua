-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load all files in lua/custom/
local custom_path = vim.fn.stdpath("config") .. "/lua/custom"
local custom_files = vim.fn.globpath(custom_path, "*.lua", false, true)

for _, file in ipairs(custom_files) do
  local module_name = "custom." .. vim.fn.fnamemodify(file, ":t:r")
  pcall(require, module_name)
end
