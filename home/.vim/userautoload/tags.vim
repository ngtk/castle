" vim-tags
let g:vim_tags_project_tags_command = "ctags -f tags -R . 2>/dev/null"
let g:vim_tags_gems_tags_command = "ctags -R -f Gemfile.lock.tags `bundle show --paths` 2>/dev/null"
let g:vim_tags_use_vim_dispatch = 1
set tags+=tags,Gemfile.lock.tags
" key-mapping
map ] <C-]>
map [ <C-T>
