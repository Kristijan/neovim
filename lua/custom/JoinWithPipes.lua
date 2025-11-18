-- Takes selected lines, joins them with pipes, wraps in single quotes,
-- copies to clipboard, and replaces the selection with the joined string.
vim.api.nvim_create_user_command("JoinWithPipes", function(opts)
  local buf = vim.api.nvim_get_current_buf()

  -- Use opts.line1 and opts.line2 for the range
  local start_pos = opts.line1 - 1 -- zero-based
  local end_pos = opts.line2 -- exclusive

  -- Get selected lines
  local lines = vim.api.nvim_buf_get_lines(buf, start_pos, end_pos, false)

  if #lines == 0 then
    require("lazyvim.util").info("No text selected", { title = "LazyVim" })
    return
  end

  -- Trim whitespace from each line
  for i, line in ipairs(lines) do
    lines[i] = vim.trim(line)
  end

  -- Join with pipes and wrap in single quotes
  local joined = "'" .. table.concat(lines, "|") .. "'"

  -- Copy to system clipboard
  vim.fn.setreg("+", joined)

  -- Replace the selected lines in the buffer with the joined string
  vim.api.nvim_buf_set_lines(buf, start_pos, end_pos, false, { joined })

  -- LazyVim notification
  require("lazyvim.util").info("Copied to clipboard and replaced selection", { title = "LazyVim" })
end, {
  desc = "Join selected lines with pipes, copy to clipboard, and replace selection",
  range = true,
})
