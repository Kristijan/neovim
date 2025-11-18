-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Join lines with pipes in visual mode
require("which-key").add({
  { "<leader>S", group = "+selection", mode = "v" },
  { "<leader>Sp", ":JoinWithPipes<CR>", desc = "Join selected lines with pipes", mode = "v" },
})

-- Create regex from selected lines in visual mode
require("which-key").add({
  { "<leader>S", group = "+selection", mode = "v" },
  { "<leader>Sr", ":RegexSelection<CR>", desc = "Create regex from selected lines", mode = "v" },
})
