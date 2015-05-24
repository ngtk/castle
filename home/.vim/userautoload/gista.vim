let g:gista#update_on_write = 1

" open ghq list
command! GhqList :call OpenGhqList()
function! OpenGhqList()
  Gista -o --gistid 94781972414941dd1062 --filename "repos"
endfunction
