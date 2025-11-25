#!/usr/bin/env bash
set -euo pipefail

# Update Brewfile via `brew bundle dump` and sort entries to keep a stable order.
# リポジトリのルートディレクトリで実行してください。

if [ -z "${DOTFILES_PATH:-}" ]; then
  echo "DOTFILES_PATH が設定されていません。リポジトリのルートディレクトリで実行してください。" >&2
  exit 1
fi

if [ "$PWD" != "$DOTFILES_PATH" ]; then
  echo "現在のディレクトリ ($PWD) が DOTFILES_PATH ($DOTFILES_PATH) と一致しません。リポジトリのルートディレクトリで実行してください。" >&2
  exit 1
fi

BREWFILE="$DOTFILES_PATH/homebrew/Brewfile"
SORTER="$DOTFILES_PATH/homebrew/sort_brewfile.rb"

# Homebrew コマンドが存在するかを確認（Homebrew 未導入の環境では処理できないため）。
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrewが見つかりません。brewをインストールしてください。" >&2
  exit 1
fi

if [ ! -f "$SORTER" ]; then
  echo "ソートスクリプトが見つかりません: $SORTER" >&2
  exit 1
fi

brew bundle dump -f --file="$BREWFILE"
ruby "$SORTER"
