call plug#begin('~/.vim/plugged')

" A
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'andrewradev/switch.vim'
" B
Plug 'basyura/unite-rails'
Plug 'bronson/vim-trailing-whitespace'
" C
Plug 'chase/vim-ansible-yaml'
" D
Plug 'danro/rename.vim'
" G
Plug 'garbas/vim-snipmate'
Plug 'glidenote/memolist.vim'
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'scss'] }
Plug 'gregsexton/gitv'
" H
Plug 'haya14busa/incsearch.vim'
" I
Plug 'itchyny/dictionary.vim'
Plug 'itchyny/lightline.vim'
" J
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-emoji'
" K
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
" L
Plug 'lambdalisue/vim-gista', { 'on': 'Gista' }
" M
Plug 'majutsushi/tagbar'
Plug 'marcus/rsense', { 'for': 'ruby' }
Plug 'marcweber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'eruby'] }
Plug 'mattn/webapi-vim'
Plug 'mopp/autodirmake.vim'
" N
Plug 'nathanaelkane/vim-indent-guides', { 'for': ['python'], 'on': ['IndentGuidesEnable', 'IndentGuidesToggle']  }
Plug 'ngmy/vim-rubocop'
" O
Plug 'open-browser.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'osyo-manga/vim-over'
" R
Plug 'rhysd/neco-ruby-keyword-args'
Plug 'rhysd/unite-ruby-require.vim', { 'for': ['ruby', 'eruby'] }
Plug 'rking/ag.vim'
" S
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet'
Plug 'shougo/neosnippet-snippets'
Plug 'shougo/unite.vim'
Plug 'shougo/vimproc.vim', { 'do': 'vim +VimProcInstall' }
Plug 'shougo/vimshell.vim'
Plug 'sjl/gundo.vim'
Plug 'sorah/unite-ghq'
Plug 'szw/vim-tags'
" T
Plug 'thinca/vim-ref'
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tomasr/molokai'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'
" V
Plug 'vim-jp/vimdoc-ja'
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'vim-scripts/sudo.vim'

call plug#end()
