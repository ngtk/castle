" Use NeoBundle
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/ngtk/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
"
" Status line
NeoBundle 'itchyny/lightline.vim'
" Auto Completion
NeoBundleLazy 'Shougo/neocomplete.vim',
        \ { 'autoload' : {
        \   'insert' : 1,
        \ }}
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'garbas/vim-snipmate'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"

" Run RSpec
NeoBundleLazy 'thoughtbot/vim-rspec', {
        \ 'depends'  : 'tpope/vim-dispatch',
        \ 'autoload' : { 'filetypes' : ['ruby'] }
        \ }
NeoBundle 'tpope/vim-dispatch'
" Replacement
NeoBundle 'osyo-manga/vim-over'
" Easy switching  e.g. true/false
NeoBundle 'AndrewRadev/switch.vim'
NeoBundleLazy 'vim-scripts/sudo.vim'
"# markdown
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'scrooloose/nerdtree'
" Fix white scpace
NeoBundleLazy 'bronson/vim-trailing-whitespace', {
        \  'autoload': { 'filetypes' : ['ruby'] }
        \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'basyura/unite-rails'

" syntastic.vim
NeoBundle 'scrooloose/syntastic'

" vim-gitgutter
NeoBundle 'airblade/vim-gitgutter'
" gundo.vim
NeoBundle 'sjl/gundo.vim'
" ctrlp
NeoBundle 'kien/ctrlp.vim'
" gitv 
NeoBundle 'gregsexton/gitv'
" emmet-vim
NeoBundleLazy 'mattn/emmet-vim', {
        \ 'depends'  : 'mattn/webapi-vim',
        \  'autoload': { 'filename_patterns' : '.*\.html.erb',
        \                'filetypes' : ['html', 'css'] }
        \ }
" webapi-vim
NeoBundle 'mattn/webapi-vim'
" 日本語doc
NeoBundle 'vim-jp/vimdoc-ja'
" rubocop
NeoBundle 'ngmy/vim-rubocop'
" Color Scheme
NeoBundle 'altercation/vim-colors-solarized'  " Solarized
NeoBundle 'tomasr/molokai'                    " Molokai
" open-browser-github.vim
NeoBundle 'tyru/open-browser-github.vim'
NeoBundle 'tyru/open-browser.vim'
" vim-emoji
NeoBundle 'junegunn/vim-emoji'
" fzf
NeoBundle 'junegunn/fzf'
" vim-easy-align
NeoBundle 'junegunn/vim-easy-align'
" vim-shell
NeoBundle 'Shougo/vimshell.vim'
" vim-proc
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
" vim-tag
" `brew install ctags`
NeoBundle 'szw/vim-tags'
" neco-ruby-keyword-args
" Completes keyword argments in Ruby
NeoBundle 'rhysd/neco-ruby-keyword-args'
NeoBundleLazy 'vim-ruby/vim-ruby', {
        \  'autoload': { 'filetypes' : ['ruby', 'eruby'] }
        \ }
NeoBundle 'majutsushi/tagbar'
" vim-commentary
NeoBundle 'tpope/vim-commentary'
" vim-ref 
NeoBundle 'thinca/vim-ref'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundleLazy 'marcus/rsense', {
      \ 'autoload': {
      \   'filetypes': 'ruby',
      \ },
      \ }
NeoBundle 'itchyny/dictionary.vim'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'osyo-manga/vim-anzu'
NeoBundleLazy 'gorodinskiy/vim-coloresque', {
      \ 'autoload': {
      \   'filetypes': ['scss', 'css']
      \ }
      \ }
NeoBundle 'open-browser.vim'
NeoBundle 'glidenote/memolist.vim'
NeoBundleLazy 'lambdalisue/vim-gista', {
    \ 'depends': [
    \    'Shougo/unite.vim',
    \    'tyru/open-browser.vim',
    \ ],
    \ 'autoload': {
    \    'commands': ['Gista'],
    \    'mappings': '<Plug>(gista-',
    \    'unite_sources': 'gista',
    \ }
    \ }
NeoBundle 'sorah/unite-ghq'
NeoBundle 'mopp/autodirmake.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
