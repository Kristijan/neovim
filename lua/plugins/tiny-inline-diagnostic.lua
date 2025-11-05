return {
  {
    {
      "rachartier/tiny-inline-diagnostic.nvim",
      event = "VeryLazy",
      priority = 1000,
      opts = {
        options = {
          show_source = {
            enabled = true,
          },
          multilines = {
            enabled = true,
          },
        },
      },
    },
    {
      "neovim/nvim-lspconfig",
      opts = { diagnostics = { virtual_text = false } },
    },
  },
}
