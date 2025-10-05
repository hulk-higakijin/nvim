return {
  "mrcjkb/rustaceanvim",
  version = "^5",
  lazy = false,
  ft = { "rust" },
  opts = {
    server = {
      root_dir = function(fname)
        -- Cargo.tomlがあるディレクトリをルートとする（ホームディレクトリを避ける）
        local cargo_toml = vim.fs.find("Cargo.toml", {
          upward = true,
          stop = vim.env.HOME, -- HOMEで検索を止める
          path = fname,
        })[1]
        if cargo_toml then
          return vim.fs.dirname(cargo_toml)
        end
        return nil
      end,
      default_settings = {
        ["rust-analyzer"] = {
          -- 最重要: パフォーマンス設定
          cargo = {
            allFeatures = false, -- 全機能解析を無効化
            buildScripts = {
              enable = false, -- ビルドスクリプト実行を無効化
            },
          },
          checkOnSave = {
            command = "check", -- cargo checkのみ実行（clippyより軽量）
            allTargets = false, -- 全ターゲットをチェックしない
          },
          files = {
            watcher = "client", -- ファイル監視を軽量化
            excludeDirs = { "target", ".git", "node_modules" }, -- 監視除外
          },
          notifications = {
            cargoTomlNotFound = false, -- 不要な通知を無効化
          },
          -- 優先度1: 安全に無効化できる機能
          lens = {
            enable = false, -- コードレンズを無効化（参照カウント等）
          },
          diagnostics = {
            disabled = { "macro-error" }, -- macro-error を無効化
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
