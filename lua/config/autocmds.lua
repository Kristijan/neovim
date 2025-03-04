-- Autoformat setting
local set_autoformat = function(pattern, bool_val)
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = pattern,
    callback = function()
      vim.b.autoformat = bool_val
    end,
  })
end

-- You can show the detected FileType of a file using `:set filetype?`
set_autoformat({ "ruby" }, false)
