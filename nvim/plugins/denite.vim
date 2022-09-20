call denite#custom#var('file/rec', 'command',
    \ ['rg', '--files', '--vimgrep'])

nmap <silent> <C-u><C-f> :<C-u>Denite file/rec<CR>
nmap <silent> <C-u><C-d> :<C-u>Denite directory_rec<CR>
nmap <silent> <C-u><C-l> :<C-u>Denite line<CR>
nmap <silent> <C-u><C-g> :<C-u>Denite grep<CR>
nmap <silent> <C-u><C-3> :<C-u>DeniteCursorWord grep<CR>
nmap <silent> <C-u><C-c> :<C-u>Denite command_history<CR>
nmap <silent> <C-u><C-o> :<C-u>Denite file_mru<CR>
nmap <silent> <C-u><C-y> :<C-u>Denite neoyank<CR>
nmap <silent> <C-u><C-r> :<C-u>Denite -resume<CR>

au FileType denite call s:denite_mappings()
function! s:denite_mappings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> <Tab>
  \ denite#do_map('choose_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  inoremap <silent><buffer><expr> <C-j> denite#incremant_parent_cursor(1)
  inoremap <silent><buffer><expr> <C-k> denite#incremant_parent_cursor(-1)
  nnoremap <silent><buffer><expr> <C-j> denite#incremant_parent_cursor(1)
  nnoremap <silent><buffer><expr> <C-k> denite#incremant_parent_cursor(-1)
endfunction
