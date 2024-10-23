" ------------------------------------------------------------------------------
" Keymap
" ------------------------------------------------------------------------------

" autocompletion
inoremap ,, <C-n><C-r>=pumvisible() ? "\<lt>Down>\<lt>C-p>\<lt>Down>" : ""<CR>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : exists("g:loaded_snips") ? "\<C-r>=TriggerSnippet()\<CR>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : exists("g:loaded_snips") ? "\<C-r>=BackwardsSnippet()\<CR>" : "\<S-Tab>"

" change buffer
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
