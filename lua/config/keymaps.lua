-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Visual mode which-key mappings
if not vim.g.vscode then
  require("which-key").add({
    { "<leader>S", group = "+selection", mode = "v" },
    -- Join lines with pipes in visual mode
    { "<leader>Sp", ":JoinWithPipes<CR>", desc = "Join selected lines with pipes", mode = "v" },
    -- Create regex from selected lines in visual mode
    { "<leader>Sr", ":RegexSelection<CR>", desc = "Create regex from selected lines", mode = "v" },
  })
end
