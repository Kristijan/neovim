-- Replaces running 'gs' with ';' for the mini.surround plugin
--
-- In order for this to work correctly, I also had to modify the flash.nvim configuration
-- to remove the ; command. (By default the ; key can be used as a “find next” behaviour
-- for the f and t keys, but the way flash is designed, you don’t need a separate key
-- for it; just press f or t again).
--
-- https://lazyvim-ambitious-devs.phillips.codes/course/chapter-7/#_modifying_the_keybindings
return {
  {
    "nvim-mini/mini.surround",
    opts = {
      mappings = {
        add = ";;",
        delete = ";d",
        find = ";f",
        find_left = ";F",
        highlight = ";h",
        replace = ";r",
        update_n_lines = ";n",
      },
    },
  },

  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          keys = { "f", "F", "t", "T" },
        },
      },
    },
  },
}
