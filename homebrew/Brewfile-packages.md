# Brewfile のパッケージ説明

`homebrew/Brewfile` は `brew bundle dump` で再生成するため、コメントを書く場所としては不向きです。このドキュメントに各エントリの用途を残し、`Brewfile` 更新時は必要に応じてこちらも一緒に見直します。

## tap
- `homebrew/bundle`: `brew bundle` で `Brewfile` を読み書きするための公式 tap です。
- `microsoft/git`: Microsoft 製の Git 関連ツールを Homebrew から入れるための tap です。

## brew
- `bat`: シンタックスハイライト付きでファイルを読むための `cat` 代替です。
- `certbot`: Let's Encrypt の証明書を取得・更新するときに使います。
- `direnv`: ディレクトリごとに環境変数を自動で切り替えるために使います。
- `gh`: GitHub CLI です。PR 作成や issue 操作をターミナルから行うために使います。
- `git`: バージョン管理本体です。
- `git-delta`: `git diff` を見やすく表示する差分ビューアです。
- `go`: Go 言語本体です。Go 製 CLI や開発ツールの導入に使います。
- `imagemagick`: 画像の変換やリサイズをコマンドラインで行うために使います。
- `mas`: Mac App Store アプリを CLI で導入・更新するために使います。
- `n`: Node.js のバージョンを切り替えるための軽量マネージャです。
- `neovim`: エディタ本体です。`nvim/` 配下の設定で利用します。
- `pdftk-java`: PDF の結合や分割などを CLI で扱うために使います。
- `peco`: 候補をインクリメンタル検索しながら選ぶための CUI フィルタです。
- `pyenv`: Python のバージョン管理に使います。
- `python@3.11`: Python 3.11 系を明示的に使いたいツールや検証用のランタイムです。
- `rbenv`: Ruby のバージョン管理に使います。
- `ripgrep`: 高速な全文検索コマンドです。設定ファイルやコード検索に使います。
- `rlwrap`: 対話型 CLI に履歴編集や行編集を付けるためのラッパーです。
- `ruby-build`: `rbenv install` で Ruby をビルドするための定義集です。
- `six`: Python 2/3 互換レイヤーです。依存ツールの実行時に必要になることがあります。
- `tcl-tk`: Tk 系ライブラリです。Python や Ruby の GUI 関連ビルドで必要になることがあります。
- `tig`: Git 履歴をターミナルで閲覧するための TUI クライアントです。
- `tmux`: ターミナルを分割・多重化するために使います。`tmux/` 配下の設定で利用します。
- `tree`: ディレクトリ構造を木表示で確認するために使います。
- `webp`: WebP 画像の変換や確認に使うツール群です。
- `xz`: `xz` 形式の圧縮・展開ツールです。
- `zlib`: 圧縮ライブラリです。各種ビルドや依存関係で必要になります。
- `zsh`: シェル本体です。`zsh/` 配下の設定で利用します。

## cask
- `1password`: パスワードと秘密情報の管理に使います。
- `adobe-acrobat-reader`: PDF の閲覧や注釈付けに使います。
- `alfred`: アプリ起動や検索を効率化するランチャーです。
- `blackhole-16ch`: 仮想オーディオデバイスです。複数チャンネル収録向けに使います。
- `blackhole-2ch`: 仮想オーディオデバイスです。ステレオ入出力向けに使います。
- `brave-browser`: メイン利用の Chromium 系ブラウザです。
- `clipy`: クリップボード履歴を扱うために使います。
- `codex`: Codex のデスクトップアプリです。
- `docker-desktop`: Docker コンテナ実行環境です。
- `firefox`: Gecko 系ブラウザです。ブラウザ差分確認にも使います。
- `font-ricty-diminished`: コーディング向けの日本語対応フォントです。
- `git-credential-manager`: Git の認証情報を安全に管理するために使います。
- `google-chrome`: Brave 以外での検証やアカウント分離が必要なときに使う Chromium 系ブラウザです。
- `google-japanese-ime`: 日本語入力メソッドです。
- `inkscape`: ベクター画像の編集に使います。
- `iterm2`: ターミナルアプリです。`iterm2/` 配下の設定で利用します。
- `karabiner-elements`: キーボードリマップに使います。`karabiner.json` と連動します。
- `obs`: 画面録画や配信用のアプリです。
- `slack`: チームコミュニケーションに使います。
- `visual-studio-code`: GUI ベースのコードエディタです。
- `zoom`: オンライン会議に使います。

## mas
- `GarageBand`: 音声編集や簡単な作曲に使います。
- `iMovie`: 動画編集に使います。
- `Keynote`: プレゼン資料作成に使います。
- `LadioCast`: macOS 上で音声入出力をルーティングするために使います。
- `LINE`: メッセージングアプリです。
- `Numbers`: 表計算に使います。
- `Pages`: 文書作成に使います。

## go
- `github.com/golangci/golangci-lint/cmd/golangci-lint`: Go 向けの総合 Lint ツールです。
- `github.com/traefik/yaegi/cmd/yaegi`: Go コードをインタプリタ的に実行するためのツールです。
