-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Diffview toggle keymap
vim.keymap.set("n", "<leader>dv", function()
  local view = require("diffview.lib").get_current_view()
  if view then
    -- より確実にDiffviewを閉じる
    view:close()
    vim.cmd("DiffviewClose")
  else
    vim.cmd("DiffviewOpen")
  end
end, { desc = "Toggle Diffview" })

-- Diffview with branch comparison
vim.keymap.set("n", "<leader>db", function()
  vim.ui.input({ prompt = "Compare with branch: " }, function(branch)
    if branch and branch ~= "" then
      vim.cmd("DiffviewOpen " .. branch)
    end
  end)
end, { desc = "Diff with branch" })
