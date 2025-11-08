return {
  {
    "iamcco/markdown-preview.nvim",
    opts = function()
      -- プレビューが消えないようにする設定
      vim.g.mkdp_auto_close = 0 -- ファイル切り替え時にプレビューを閉じない
      vim.g.mkdp_refresh_slow = 0 -- 編集時にリアルタイムで更新
      vim.g.mkdp_combine_preview = 1 -- 複数のMarkdownファイルで1つのプレビューウィンドウを使用
      vim.g.mkdp_preview_options = {
        disable_sync_scroll = 0, -- スクロール同期を有効化
        sync_scroll_type = "middle", -- スクロール位置を中央に
      }
    end,
  },
}
