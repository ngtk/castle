" vim-rspec
let g:rspec_command = 'Dispatch AUTODOC=1 bundle exec rspec {spec} --color --format documentation'

" key mappings
nnoremap <Leader>c :call RunCurrentSpecFile()<CR>
nnoremap <Leader>n :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

" keith/rspec.vim
autocmd BufNewFile,BufRead *_spec.rb set syntax=rspec
