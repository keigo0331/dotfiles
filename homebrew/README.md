# homebrew ディレクトリの使い方

このディレクトリでは Homebrew のパッケージ一覧（`Brewfile`）を管理します。`Brewfile` の更新とソートは付属スクリプトで自動化しています。

## 前提条件
- Homebrew がインストールされていること
- Ruby が利用できること（Brewfile のソートに使用）

## 環境変数
- `DOTFILES_PATH`：リポジトリのルートパスをセットしてください。例）`export DOTFILES_PATH="$(pwd)"`

## Brewfile を更新する
1. リポジトリのルートディレクトリ（`$DOTFILES_PATH` と同じ場所）にいることを確認します。
2. `DOTFILES_PATH` を設定した上で下記を実行します。
   ```bash
   DOTFILES_PATH="$PWD" ./homebrew/update_brewfile.sh
   ```
3. `brew bundle dump` で最新のインストール状況を `homebrew/Brewfile` へ書き出し、`sort_brewfile.rb` でカテゴリ別にソートされます。

## Brewfile から復元する
```bash
brew bundle --file=homebrew/Brewfile
```

## 参考
- `homebrew/update_brewfile.sh`：Brewfile の更新とソートを一括で行うスクリプト。
- `homebrew/sort_brewfile.rb`：Brewfile のエントリをカテゴリごとに並べ替えます。
