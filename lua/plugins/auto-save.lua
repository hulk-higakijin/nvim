return {
  "Pocco81/auto-save.nvim",
  opts = {
    execution_message = {
      enabled = false,
      message = function()
        return ""
      end,
    },
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")
      
      -- バッファが有効かチェック
      if not vim.api.nvim_buf_is_valid(buf) then
        return false
      end
      
      -- overseerのバッファを除外
      local filetype = vim.api.nvim_buf_get_option(buf, "filetype")
      if filetype == "overseer" or filetype == "OverseerList" or filetype == "OverseerForm" then
        return false
      end
      
      -- デフォルトの除外条件
      if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
        return true
      end
      return false
    end,
  },
}
