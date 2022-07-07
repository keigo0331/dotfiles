let g:lightline = {
  \   'colorscheme': 'wombat',
  \   'active': {
  \     'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filepath', 'modified' ] ],
  \     'right': [ [ 'lineinfo' ] ],
  \   },
  \   'inactive': {
  \     'left': [ [ 'readonly', 'filepath', 'modified' ] ],
  \     'right': [ [ 'lineinfo' ] ],
  \   },
  \   'component': {
  \     'lineinfo': '%3l[%L]:%-2v'
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \     'filepath': 'Filepath'
  \   },
  \ }

function! Filepath()
  return expand('%')
endfunction

set noshowmode
