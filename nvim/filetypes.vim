"ファイルタイプに関係する設定
augroup MyFileTypes
  autocmd!
  autocmd BufRead,BufNewFile *.{md,mkd,mark*} set filetype=markdown
  autocmd BufRead,BufNewFile *.scss           set filetype=scss.css
  autocmd BufRead,BufNewFile *.rb             set filetype=ruby
  autocmd BufRead,BufNewFile *.{js,jsx}       set filetype=javascript
  autocmd BufRead,BufNewFile *.{ts,tsx}       set filetype=typescript
  autocmd BufRead,BufNewFile *.go             set filetype=go
  autocmd BufRead,BufNewFile *.toml           set filetype=toml
  autocmd BufRead,BufNewFile *.json           set filetype=json
  autocmd FileType scss set iskeyword+=-
augroup END
