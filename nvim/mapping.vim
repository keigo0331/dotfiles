" Yの動作をDやCと同じにする
map Y y$

" Normal
nnoremap <CR> o<ESC>
" エンターで改行

" C-cでカーソル行以降改行
nnoremap <C-c> i<CR><ESC>

" C-cでカーソル行以降改行
nnoremap <C-c> i<CR><ESC>

" Insert
" C-でカーソル移動
inoremap <C-b> <ESC>i
inoremap <C-f> <ESC>la
inoremap <C-a> <ESC>^i
inoremap <C-e> <ESC>$a
inoremap <C-k> <ESC>lDa

"隣のウィンドウに移動
inoremap <C-W><C-W> <ESC><C-W><C-W><ESC>

" Command
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
