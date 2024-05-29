" ------------------------------------------------------------------------------
" Autocommand
" ------------------------------------------------------------------------------

if has("autocmd")
  " Automatically removing all trailing whitespace
  autocmd BufWritePre * :call StripTrailingWhitespace()

  " F5 to run Python
  autocmd FileType python map  <buffer> <F5>       :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>
  autocmd FileType python imap <buffer> <F5> <esc> :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>
endif
