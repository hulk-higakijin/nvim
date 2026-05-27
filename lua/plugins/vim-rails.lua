return {
  "tpope/vim-rails",
  lazy = false,
  keys = {
    { "<leader>ra", "<cmd>A<cr>", desc = "Rails alternate file" },
    { "<leader>rm", "<cmd>Emodel<cr>", desc = "Rails model" },
    { "<leader>rv", "<cmd>Eview<cr>", desc = "Rails view" },
    { "<leader>rc", "<cmd>Econtroller<cr>", desc = "Rails controller" },
  },
}
