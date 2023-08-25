" ------------------------------------------------------------------------------
" Autocommand
" ------------------------------------------------------------------------------

if has("autocmd")
  " Automatically removing all trailing whitespace
  autocmd BufWritePre * :call StripTrailingWhitespace()

  " F5 to run Python
  autocmd FileType python map  <buffer> <F5>       :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>
  autocmd FileType python imap <buffer> <F5> <esc> :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>

  " F5 to run SQL
  autocmd FileType sql map  <buffer> <F5>       :SQHExecute<CR>
  autocmd FileType sql imap <buffer> <F5> <esc> :SQHExecute<CR>

  autocmd FileType sql :autocmd BufNew * :vert sb
endif
