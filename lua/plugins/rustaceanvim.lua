return {
  "mrcjkb/rustaceanvim",
  version = "^5",
  lazy = false,
  ft = { "rust" },
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          -- 優先度1: 安全に無効化できる機能
          lens = {
            enable = false, -- コードレンズを無効化（参照カウント等）
          },
          diagnostics = {
            experimental = {
              enable = false, -- 実験的診断を無効化
            },
          },
          cachePriming = {
            enable = false, -- キャッシュプライミングを無効化（起動時負荷軽減）
          },
          workspace = {
            symbol = {
              search = {
                limit = 128, -- シンボル検索の制限（大規模プロジェクト対策）
              },
            },
          },
          -- 優先度2: 条件付きで無効化
          procMacro = {
            enable = false, -- プロシージャマクロを無効化（マクロ不使用時）
          },
          highlightRelated = {
            references = {
              enable = false, -- 関連項目のハイライトを無効化
            },
            exitPoints = {
              enable = false,
            },
            breakPoints = {
              enable = false,
            },
            yieldPoints = {
              enable = false,
            },
          },
        },
      },
    },
  },
}
