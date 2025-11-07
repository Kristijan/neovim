return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            jump = {
              close = true,
            },
            layout = {
              preset = "default",
              preview = true,
            },
          },
          grep = { hidden = true },
          files = { hidden = true },
        },
      },
    },
  },
}
