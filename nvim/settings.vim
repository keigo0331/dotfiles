"Generally
set clipboard+=unnamedplus "クリップボードに保存
set confirm "バッファが変更されているとき、 保存するかどうか確認を求める
set noswapfile "スワップファイルを作らない
set nobackup "バックアップファイルを作らない
set spelllang=en,cjk "スペルチェック時に日本語を除外
set visualbell "ビープの代わりにビジュアルベル(画面フラッシュ)を使う
set t_vb= "ビジュアルベルも無効化する
set mouse=niv "マウスを有効にする
set modifiable
set write

"Display
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2 "カーソルの表示を変更
set number "行番号の表示
set ruler "ルーラ表示
set nolist "タブや改行を非表示
set nowrap "折り返しをしない
set cursorline "カーソル行を可視化
set list listchars=tab:\▸\-
set ambiwidth=double "マルチバイト文字の表示をいいかんじに
set laststatus=2 "ステータスラインを常に表示する
set cmdheight=2 "コマンドラインの高さを2行に
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:% "デフォルト不可視文字は美しくないのでUnicodeで綺麗に
set conceallevel=0 "カーソルが内行の内容を隠蔽しない
set pumheight=15 "補完メニューの幅
set termguicolors "True Colorでのシンタックスハイライト

"Normal Mode
set nostartofline "移動コマンドを使ったとき、行頭に移動しない
set matchpairs& matchpairs+=<:> "％でペアの括弧に飛ぶ

"CommandLine Mode
set showcmd "タイプ途中のコマンドを画面最下行に表示
set wildmenu "コマンドラインでファイルが名の補完を便利に

"Search
set ignorecase "検索時に大文字・小文字を区別しない
set smartcase "大文字で検索したときは区別する
set hlsearch "検索結果をハイライト
set incsearch "逐次検索
set wrapscan "検索時にファイルの下まで行ったら上まで戻る

"Visual Mode
set backspace=indent,eol,start "オートインデント、改行、インサートモード開始直後にバックスペースキーで削除できるようにする
set showmatch "閉じ括弧入力時に対応している括弧が画面内にある場合に、一瞬開き括弧にジャンプ
set matchtime=1 "対応括弧のハイライト表示を0.1秒に
set formatoptions+=mM "テキスト挿入の自動折り返しに日本語を対応
set virtualedit=block "ビジュアルモードで文字の無いところにもカーソル移動を可能に
set notimeout "キーコードはすぐにタイムアウト
set ttimeout ttimeoutlen=100 "マッピングは200ms待つ

"Tab
set tabstop=2 "画面上でタブ文字が占める幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set shiftwidth=2 "自動インデントでずれる幅
set expandtab "タブ入力を複数の空白入力に置き換える
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set shiftround "<や>でインデントする際にshiftwidthの倍数に丸める
