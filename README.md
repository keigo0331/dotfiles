# dotfiles

macOS 向けの個人設定ファイル集です。シンボリックリンクを作成して各種設定を反映します。

## 前提
- Git
- Homebrew（Brewfile を使う場合）
- direnv（任意。`.envrc` を使う場合）

## セットアップ
1. リポジトリをクローンします。
2. 環境変数 `DOTFILES_PATH` を設定します。

```bash
export DOTFILES_PATH="/path/to/dotfiles"
```

direnv を使う場合は、リポジトリ直下に `.envrc` を作成して以下を記載します。

```bash
export DOTFILES_PATH="$PWD"
```

3. シンボリックリンクを作成します。

```bash
./symbolic_links.sh
```

## Homebrew
Brewfile の更新や復元は `homebrew/README.md` を参照してください。

## 環境変数
- `DOTFILES_PATH`: リポジトリのルートパスを指定します。

## ディレクトリ構成
- `zsh/`: zsh 設定
- `tmux/`: tmux 設定
- `git/`: Git 設定
- `nvim/`: Neovim 設定
- `homebrew/`: Brewfile 管理
- `iterm2/`: iTerm2 設定
- `karabiner.json`: Karabiner 設定
- `codex/`: Codex 用設定

## メモ
- `.envrc` は Git 管理対象外です。
