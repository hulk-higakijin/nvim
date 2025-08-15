return {
  "lewis6991/gitsigns.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    -- Setup highlights before calling setup()
    vim.cmd[[ highlight GitSignsAdd    guifg=red ]]
    vim.cmd[[ highlight GitSignsChange guifg=red ]]
    vim.cmd[[ highlight GitSignsDelete guifg=red ]]
    
    require('gitsigns').setup({
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        
        -- 左右分割でdiffを表示
        vim.keymap.set("n", "<leader>gd", function()
          gs.diffthis()
        end, { buffer = bufnr, desc = "Git diff split" })
        
        -- HEADとの差分を左右分割で表示
        vim.keymap.set("n", "<leader>gD", function()
          gs.diffthis("~")
        end, { buffer = bufnr, desc = "Git diff split with HEAD~" })
      end,
    })
  end
}
