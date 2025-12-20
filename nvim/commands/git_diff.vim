" git diff を新しいバッファで開く
function! OpenGitDiff(args) abort
  let l:cmd = 'git diff'

  if !empty(a:args)
    let l:cmd .= ' ' . a:args
  endif

  " 既存編集を汚さないように右側の縦分割で開く
  botright vnew

  " 一時バッファ扱いにして保存対象から外す
  " - buftype=nofile: ファイルに紐づけない
  " - bufhidden=wipe: 閉じたら破棄する
  " - nobuflisted: バッファ一覧に出さない
  " - noswapfile: スワップを作らない
  " - nowrap: 折り返しを無効化する
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap

  " 外部コマンドを実行し、その標準出力を行ごとの配列として受け取る
  " - systemlist(): 実行結果の各行を List にする
  " - l:output に入れて、後で setline() でバッファに流し込む
  let l:output = systemlist(l:cmd)

  if v:shell_error
    " git diff が失敗した場合は理由が分かるように表示
    call setline(1, ['[git diff failed] ' . l:cmd])
  elseif empty(l:output)
    " 差分がない場合は分かりやすいメッセージにする
    call setline(1, ['(no diff)'])
  else
    call setline(1, l:output)
  endif

  " diff としてハイライトさせる
  setlocal filetype=diff

  normal! gg
endfunction

" :GitDiff や :GitDiff --staged の形式で使う
command! -nargs=* GitDiff call OpenGitDiff(<q-args>)
