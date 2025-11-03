# Overseer カスタムタスクの作成方法

## 基本構造

カスタムタスクは `~/.config/nvim/lua/overseer/template/user/` ディレクトリに配置します。

## タスクファイルの作成

### 1. ファイルを作成

例: `~/.config/nvim/lua/overseer/template/user/hello.lua`

```lua
return {
  name = "Hello World",
  builder = function()
    return {
      cmd = { "echo" },
      args = { "Hello world" },
    }
  end,
  condition = {
    callback = function()
      return true
    end,
  },
}
```

### 2. overseer設定に追加

`lua/plugins/overseer.lua` の `opts.templates` に追加：

```lua
opts = {
  templates = { "builtin", "user.hello" },
}
```

### 3. 使い方

1. Neovimを再起動
2. `:OverseerRun` を実行
3. タスクを選択して実行

## タスク定義の詳細

### 必須フィールド

- `name`: タスク名
- `builder`: タスク定義を返す関数
  - `cmd`: 実行するコマンド（配列）
  - `args`: コマンドの引数（配列、オプション）

### オプションフィールド

- `desc`: タスクの説明
- `cwd`: 作業ディレクトリ
- `env`: 環境変数
- `components`: コンポーネントのリスト
- `condition`: タスクの表示条件
  - `filetype`: 特定のファイルタイプでのみ表示
  - `dir`: 特定のディレクトリでのみ表示
  - `callback`: カスタム条件

## 例

### シンプルなビルドタスク

```lua
return {
  name = "Build",
  builder = function()
    return {
      cmd = { "make" },
      args = { "build" },
    }
  end,
}
```

### ファイルタイプ制限付きタスク

```lua
return {
  name = "Run Rust",
  builder = function()
    return {
      cmd = { "cargo" },
      args = { "run" },
    }
  end,
  condition = {
    filetype = { "rust" },
  },
}
```

### 環境変数を使うタスク

```lua
return {
  name = "Custom Build",
  builder = function()
    return {
      cmd = { "npm" },
      args = { "run", "build" },
      env = {
        NODE_ENV = "production",
      },
    }
  end,
}
```

## 参考

詳細は公式ドキュメント参照:
https://github.com/stevearc/overseer.nvim/blob/master/doc/guides.md
