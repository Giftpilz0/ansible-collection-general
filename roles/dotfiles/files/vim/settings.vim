" ------------------------------------------------------------------------------
" Settings
" ------------------------------------------------------------------------------
set nowrap
set nomodeline
set lazyredraw
set autowrite
set novisualbell      " disable screenflash
set viminfofile=NONE  " disable viminfo
set number            " line numbers

" Invisible characters
set list
set listchars=tab:>-<,lead:.

" Titlebar
set title
set titlestring=%t

" wildmode
set wildmenu
set wildmode=longest:full,list:full

" Appearance
syntax enable
colorscheme tender
set background=dark
autocmd vimenter * highlight Normal guibg=NONE ctermbg=NONE
autocmd vimenter * highlight EndOfBuffer guibg=NONE ctermbg=NONE

" Tab, indent
set autoindent
set expandtab      " spaces instead of tabs
set shiftwidth=2   " number of spaces to use in each autoindent step
set softtabstop=2  " number of spaces to skip or insert when <BS>ing or <Tab>ing
set tabstop=2      " two tab spaces

" Search
set ignorecase  " case-insenitiv
set incsearch   " incremental search
set showmatch   " jump to matches
set smartcase   " no ignorecase
set hlsearch

" Enable mouse
if has("mouse")
  set mouse=a
endif
