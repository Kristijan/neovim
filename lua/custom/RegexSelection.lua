--- Take selected lines, generate a regex using grex, and copy to clipboard
vim.api.nvim_create_user_command("RegexSelection", function(opts)
  local buf = vim.api.nvim_get_current_buf()
  local start_pos = opts.line1 - 1
  local end_pos = opts.line2

  -- Get selected lines
  local lines = vim.api.nvim_buf_get_lines(buf, start_pos, end_pos, false)

  if #lines == 0 then
    require("lazyvim.util").info("No text selected", { title = "LazyVim" })
    return
  end

  -- Trim whitespace
  for i, line in ipairs(lines) do
    lines[i] = vim.trim(line)
  end

  -- Build the command
  local cmd = { "grex", "--no-anchors" }
  vim.list_extend(cmd, lines)

  -- Run external command and capture output
  local output = vim.fn.system(cmd)

  if vim.v.shell_error ~= 0 then
    require("lazyvim.util").error("Error running grex", { title = "LazyVim" })
    return
  end

  -- Surround output with single quotes and trim
  local quoted_output = "'" .. vim.trim(output) .. "'"

  -- Copy to system clipboard
  vim.fn.setreg("+", quoted_output)

  -- Truncate if too long
  local max_length = 80
  local display_regex = quoted_output
  if #display_regex > max_length then
    display_regex = display_regex:sub(1, max_length) .. "..."
  end

  -- Notify with truncated regex
  require("lazyvim.util").info(string.format(display_regex), { title = "Regex copied to clipboard" })
end, {
  desc = "Generate regex from selected strings using grex and copy to clipboard",
  range = true,
})
