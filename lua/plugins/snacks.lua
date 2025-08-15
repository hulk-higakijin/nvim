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
