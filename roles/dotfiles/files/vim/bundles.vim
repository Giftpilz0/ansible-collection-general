" ------------------------------------------------------------------------------
" Manager
" ------------------------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo
    \ ~/.vim/autoload/plug.vim
    \ --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source /etc/vimrc | :quit | :quit
endif

" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call plug#begin(expand($HOME.'/.vim/bundle'))
  Plug 'vim-airline/vim-airline'
  Plug 'jacoborus/tender.vim'
call plug#end()
