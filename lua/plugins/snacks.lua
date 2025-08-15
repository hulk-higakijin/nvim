return {
  "folke/snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    terminal = {
      win = {
        position = "float",
        border = "rounded"
      },
    },
    lazygit = {
      enabled = true,
      configure = true,
      config = {
        os = {
          editPreset = "nvim-remote",
        },
        gui = {
          showFileTree = true,
          nerdFontsVersion = "3",
        },
      },
    },
  },
}
