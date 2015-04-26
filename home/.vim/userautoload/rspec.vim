" vim-rspec
let s:bundle = neobundle#get('vim-rspec')
function! s:bundle.hooks.on_source(bundle)
  let g:rspec_command = 'Dispatch AUTODOC=1 bundle exec rspec {spec} --color --format documentation'
endfunction
" key mappings
nnoremap <Leader>c :call RunCurrentSpecFile()<CR>
nnoremap <Leader>n :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>
