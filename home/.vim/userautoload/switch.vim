" switch-vim
nnoremap - :Switch<cr>

" git rebase
autocmd FileType gitrebase let b:switch_custom_definitions =
    \ [
    \   ['pick', 'reword', 'edit', 'squash', 'fixup', 'exec']
    \ ]
