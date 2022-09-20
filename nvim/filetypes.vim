"ファイルタイプに関係する設定
augroup MyFileTypes
  autocmd!
  autocmd BufRead,BufNewFile *.{md,mkd,mark*} set filetype=markdown
  autocmd BufRead,BufNewFile *.scss           set filetype=scss.css
  autocmd BufRead,BufNewFile *.rb             set filetype=ruby
  autocmd BufRead,BufNewFile *.js             set filetype=javascript
  autocmd BufRead,BufNewFile *.jsx            set filetype=javascript.jsx
  autocmd BufRead,BufNewFile *.ts             set filetype=typescript
  autocmd BufRead,BufNewFile *.tsx            set filetype=typescript.tsx
  autocmd BufRead,BufNewFile *.go             set filetype=go
  autocmd BufRead,BufNewFile *.toml           set filetype=toml
  autocmd BufRead,BufNewFile *.json           set filetype=json
  autocmd FileType scss set iskeyword+=-
augroup END
