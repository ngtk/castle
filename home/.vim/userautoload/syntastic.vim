" syntastic.vim
let g:syntastic_enable_signs  = 1
let g:syntastic_check_on_wq   = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['ruby', 'javascript', 'coffeescript'],
      \ 'passive_filetypes': ['nerdtree']
      \ }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['jshint']

" styles
hi SyntasticErrorSign   ctermbg=black ctermfg=1
hi SyntasticWarningSign ctermbg=black ctermfg=3
" let g:syntastic_error_symbol         = emoji#for('x')
" let g:syntastic_warning_symbol       = emoji#for('warning')
" let g:syntastic_style_error_symbol   = emoji#for('x')
" let g:syntastic_style_warning_symbol = emoji#for('warning')
