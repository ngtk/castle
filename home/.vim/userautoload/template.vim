let g:template_basedir = '~/.vim/template'
let g:template_files = '**'

" rspec template
" ------------------------------
" require [spec|rails]_helper
"
" describe <class name> do
" end
" ------------------------------
autocmd User plugin-template-loaded call s:template_keywords()
function! s:template_keywords()
  let filepath = expand("%:p:r") " /path/to/project/spec/hoge/fuga_spec
  let address = s:extract_class_address(filepath) " hoge/fuga_spec
  let class_name = s:ruby_camerize(address) " Hoge::Fuga

  if exists('g:loaded_rails') && RailsDetect() == 1
    let helper_name = 'rails_helper'
  else
    let helper_name = 'spec_helper'
  endif

  %s/<+CLASS NAME+>/\=class_name/g
  %s/<+HELPER NAME+>/\=helper_name/g
endfunction


" text: 'foo_bar/hoo_spec'
" return: 'FooBar::Hoo'
function! s:ruby_camerize(text) abort
  let inherit_list = split(a:text, '/')
  let camerized_list = []
  for name in inherit_list
    call add(camerized_list, s:camelize_text(name))
  endfor
  return join(camerized_list, '::')
endfunction


" filename: '/path/to/project/spec/foo/bar_spec'
" return: 'foo/bar_spec'
function! s:extract_class_address(filename) abort
  return matchstr(a:filename, 'spec\(/\w*\)*_spec')[5:-6]
endfunction


" atom: 'foo'
" return: 'Foo'
function! s:camelize_atom(atom) abort
  return toupper(a:atom[0]) . a:atom[1:-1]
endfunction


" text: 'foo_bar'
" return: 'FooBar'
function! s:camelize_text(text) abort
  let atoms = split(a:text, '_')
  let camelized_atoms = []
  for atom in atoms
    call add(camelized_atoms, s:camelize_atom(atom))
  endfor
  return join(camelized_atoms, '')
endfunction
