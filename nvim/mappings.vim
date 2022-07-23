" Yの動作をDやCと同じにする
map Y y$

" Normal
" C-cでカーソル行以降改行
nnoremap <C-c> i<CR><ESC>

" r で改行
nnoremap r o<ESC>

" Command mode
" C-でカーソル移動
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>

" Insert mode
" C-でカーソル移動
inoremap <C-b> <ESC>i
inoremap <C-f> <ESC>la
inoremap <C-a> <ESC>^i
inoremap <C-e> <ESC>$a
inoremap <C-k> <ESC>lDa
