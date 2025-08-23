return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    if (vim.g.colors_name or ""):find("catppuccin") then
      local catppuccin_bufferline = require("catppuccin.groups.integrations.bufferline")
      if catppuccin_bufferline.get_theme then
        opts.highlights = catppuccin_bufferline.get_theme()
      end
    end
    return opts
  end,
}