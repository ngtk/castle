" vim-emoji
if !exists('g:neocomplete#sources#vim#complete_functions')
  let g:neocomplete#sources#vim#complete_functions = {}
endif
let g:neocomplete#sources#vim#complete_functions.Emoji = 'emoji#complete'
