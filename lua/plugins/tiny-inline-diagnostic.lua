return {
  {
    {
      "rachartier/tiny-inline-diagnostic.nvim",
      event = "VeryLazy",
      priority = 1000,
      opts = {
        options = {
          add_messages = {
            display_count = true,
          },
          show_source = {
            enabled = true,
            if_many = true,
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
