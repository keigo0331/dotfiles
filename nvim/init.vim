" hybrid の導入で使用する
augroup MyAutoCmd
  autocmd!
augroup END

" ----------------
" zinitの設定
let s:nvim_config_dir = expand('$XDG_CONFIG_HOME/nvim')
let s:dein_cache_dir  = expand('$XDG_CACHE_HOME/dein')
let s:dein_repo_dir   = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'
let s:undo_dir        = s:nvim_config_dir . '/undo'

if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')

if !isdirectory(s:dein_repo_dir)
  echo "Dein is not installed, install now!"

  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

" Required:
call dein#begin(s:dein_cache_dir)

" Let dein manage dein
call dein#add(s:dein_repo_dir)
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Add or remove your plugins here like this:
call dein#load_toml(s:nvim_config_dir . '/dein.toml',      {'lazy': 0})
"call dein#load_toml(s:nvim_config_dir . '/dein_lazy.toml', {'lazy': 1})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" ----------------

" 設定ファイルを読み込む
runtime! settings.vim
runtime! mappings.vim
runtime! filetypes.vim

" VimのUndoを永続化する
if has('persistent_undo')
  execute 'set undodir=' . fnamemodify(s:undo_dir, ':p')
  set undofile
endif

" quickfixからEnterキーで飛べるようにする
function! OpenModifiableQF()
  cw
  set nowrap
endfunction
autocmd QuickfixCmdPost vimgrep call OpenModifiableQF()

" 行番号の色を変更
autocmd ColorScheme * highlight lineNr guifg=lightgray

" tree-shitterの設定
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {
      'c_sharp',
    }
  }
}
EOF

" 現在のファイルのパスをクリップボードにコピーする
command! CopyPath let @+ = expand('%:.')
