return {
  "APZelos/blamer.nvim",
  init = function()
    vim.g.blamer_enabled = true
    vim.g.blamer_date_format = "%Y/%m/%d %H:%M"
    vim.g.blamer_show_in_visual_modes = 0
    vim.g.blamer_show_in_insert_modes = 0
  end,
}
