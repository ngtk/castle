" syntastic.vim
let g:syntastic_enable_signs  = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['ruby', 'javascript', 'coffeescript'],
      \ 'passive_filetypes': ['nerdtree']
      \ }
let g:syntastic_ruby_checkers = ['rubocop']
