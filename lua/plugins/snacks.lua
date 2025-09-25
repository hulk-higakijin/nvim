return {
  "folke/snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
      preset = {
        header = [[
    ██╗  ██╗██╗ ██████╗  █████╗ ██╗  ██╗██╗     ██╗██╗███╗   ██╗
    ██║  ██║██║██╔════╝ ██╔══██╗██║ ██╔╝██║     ██║██║████╗  ██║
    ███████║██║██║  ███╗███████║█████╔╝ ██║     ██║██║██╔██╗ ██║
    ██╔══██║██║██║   ██║██╔══██║██╔═██╗ ██║██   ██║██║██║╚██╗██║
    ██║  ██║██║╚██████╔╝██║  ██║██║  ██╗██║╚█████╔╝██║██║ ╚████║
    ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚════╝ ╚═╝╚═╝  ╚═══╝
        ]],
        keys = {
          -- { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.picker()" },
          -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          -- { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.picker.grep()" },
          -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.picker.recent()" },
          -- { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.picker.files(vim.fn.stdpath('config'))" },
          -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          -- { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          -- { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          -- { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
    terminal = {
      win = {
        position = "float",
        border = "rounded"
      },
    },
    explorer = {
      enabled = true,
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        }
      }
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
          theme = {
            inactiveBorderColor = { "#777777" },
          },
        },
        git = {
          allBranchesLogCmd = "git log --graph --color=always --date=format:'%Y-%m-%d %H:%M' --pretty=format:'%C(#a0a0a0 reverse)%h%Creset %C(cyan)%ad%Creset %C(#dd4814)%ae%Creset %C(yellow reverse)%d%Creset %n%C(white bold)%s%Creset%n' --",
          paging = {
            colorArg = "always",
            pager = "delta --dark --paging=never --side-by-side",
          },
          log = {
            showWholeGraph = true,
          },
        }
      },
    },
  },
}
