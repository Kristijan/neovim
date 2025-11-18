return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<space>N", "<cmd>enew | startinsert<CR>", desc = "New buffer" },
      { "<space><Del>", "<cmd>bdelete<CR>", desc = "Close current buffer" },
    },
  },
}
