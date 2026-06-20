return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    opts = {
      servers = {
        marksman = false,
      },
    },
    init_options = {
      userLanguages = {
        eelixir = "html-eex",
        eruby = "erb",
        rust = "html",
      },
    },
  },
}
