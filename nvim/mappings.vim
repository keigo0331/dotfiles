" Yの動作をDやCと同じにする
map Y y$

" Normal
" C-cでカーソル行以降改行
nnoremap <C-c> i<CR><ESC>

" C-でカーソル移動
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>

" Insert
" C-でカーソル移動
inoremap <C-b> <ESC>i
inoremap <C-f> <ESC>la
inoremap <C-a> <ESC>^i
inoremap <C-e> <ESC>$a
inoremap <C-k> <ESC>lDa

" Enter で改行
augroup main
  autocmd!
augroup END
autocmd main BufWinEnter *
  \  if &modifiable
  \|   nnoremap <buffer> <CR> o<ESC>
  \| else
  \|   nunmap <buffer> <CR>
  \| endif
