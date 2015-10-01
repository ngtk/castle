" vim-rspec
let g:rspec_command = 'Dispatch AUTODOC=1 bundle exec rspec {spec} --color --format documentation'

" key mappings
autocmd BufNewFile,BufRead *_spec.rb nnoremap <Leader>c :call RunCurrentSpecFile()<CR>
autocmd BufNewFile,BufRead *_spec.rb nnoremap <Leader>n :call RunNearestSpec()<CR>
autocmd BufNewFile,BufRead *_spec.rb nnoremap <Leader>l :call RunLastSpec()<CR>
autocmd BufNewFile,BufRead *_spec.rb nnoremap <Leader>a :call RunAllSpecs()<CR>

" keith/rspec.vim
autocmd BufNewFile,BufRead *_spec.rb set syntax=rspec
