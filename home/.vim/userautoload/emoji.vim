" vim-emoji
"  completion
"  CTRL-X CTRL-U. (e.g. :app<CTRL-X><CTRL-U> to find :apple:)
"  completionと衝突したので修正
"set completefunc=emoji#complete
silent! if emoji#available()
  let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
  let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
  let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
  let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif
