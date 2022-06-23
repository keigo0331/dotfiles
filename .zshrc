# HomebrewのGitを使うパス
export PATH=/opt/homebrew/opt/git:$PATH

# Zinitの導入
# https://github.com/zdharma-continuum/zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# 環境変数
export LANG=ja_JP.UTF-8
export KCODE=u

# hook関数を登録する
autoload -Uz add-zsh-hook

# 色を使用出来るようにする
autoload -Uz colors
colors

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# 区切り文字の設定
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|_-."
zstyle ':zle:*' word-style unspecified

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# '#' 以降をコメントとして扱う
setopt interactive_comments

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# リダイレクトの上書きを不可
setopt clobber

# ----------------
# プロンプトの設定
setopt prompt_subst

autoload -Uz vcs_info

zstyle ':vcs_info:*' max-exports 3
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b' '%c%u %m'
zstyle ':vcs_info:git:*' actionformats '%b' '%c%u %m' '<!%a>'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "+"
zstyle ':vcs_info:git:*' unstagedstr "-"
zstyle ':vcs_info:git+set-message:*' hooks git-hook-begin git-untracked

function +vi-git-hook-begin() {
    if [[ $(command git rev-parse --is-inside-work-tree 2> /dev/null) != 'true' ]]; then
        return 1
    fi

    return 0
}

function +vi-git-untracked() {
    if [[ "$1" != "1" ]]; then
        return 0
    fi

    if command git status --porcelain 2> /dev/null | awk '{print $1}' | command grep -F '??' > /dev/null 2>&1 ; then
        hook_com[unstaged]+='?'
    fi
}

function _update_vcs_info_msg() {
    local -a messages
    local prompt

    LANG=en_US.UTF-8 vcs_info

    if [[ -z ${vcs_info_msg_0_} ]]; then
        prompt=""
    else
      if [[ -n $(echo "$vcs_info_msg_1_""$vcs_info_msg_2_" | sed 's/ //g') ]]; then
          messages+=( " | %F{red}${vcs_info_msg_0_}%f" )
      else
          messages+=( " | %F{green}${vcs_info_msg_0_}%f" )
      fi

      [[ -n $(echo $vcs_info_msg_1_ | sed 's/ //g') ]] && messages+=( "%F{yellow}$(echo $vcs_info_msg_1_ | sed 's/ //g')%f" )
      [[ -n $(echo $vcs_info_msg_2_ | sed 's/ //g') ]] && messages+=( "%F{red}${vcs_info_msg_2_}%f" )

        prompt="${(j: :)messages}"
    fi

    echo $prompt
}

PROMPT="%{${fg[green]}%}%~%{${reset_color}%}"$'`_update_vcs_info_msg` $ '
# ----------------

# ----------------
# プラグイン
zinit light momo-lab/zsh-abbrev-alias
zinit ice wait lucid;
zinit light zdharma-continuum/history-search-multi-word
zinit ice wait lucid;
zinit light zdharma-continuum/fast-syntax-highlighting
zinit ice wait lucid;
zinit light zsh-users/zsh-autosuggestions
zinit ice wait lucid;
zinit light zsh-users/zsh-completions
# ----------------

# ----------------
# aliasの設定
abbrev-alias relogin='exec $SHELL -l'
abbrev-alias G='| grep'
abbrev-alias L='| less'
abbrev-alias ls="ls -aG"
abbrev-alias ll='ls -l'
abbrev-alias rm='rm -i'
abbrev-alias cp='cp -i'
abbrev-alias mv='mv -i'
abbrev-alias mkdir='mkdir -p'
abbrev-alias grepd='grep -dskip'
abbrev-alias d-c='docker-compose'
abbrev-alias nv='nvim'
abbrev-alias tm='tmux'
abbrev-alias tm-kill='tmux kill-session'
# ----------------
