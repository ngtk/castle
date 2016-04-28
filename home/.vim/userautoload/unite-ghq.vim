nnoremap <silent><leader>g    :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent><leader>f    :<C-u>Unite -start-insert file_rec/async<CR>
nnoremap <silent><leader>gc   :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
