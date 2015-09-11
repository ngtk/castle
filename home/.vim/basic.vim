set nocompatible  " be iMproved
filetype on       " Do not FileType auto detection
filetype plugin on " Enable filetype-specific plugins
filetype indent on " Enable filetype-specific indenting

set viminfo='20,\"50

" BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start

" Clipboard有効化
set clipboard=unnamed,autoselect

" 日本語ヘルプ
set helplang=ja
" 一度だけ実行
" helptags ~/.vim/bundle/vimdoc-ja/doc


" インデント
set expandtab     "タブ入力を複数の空白入力に置き換える
set tabstop=2     "画面上でタブ文字が占める幅
set shiftwidth=2  "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    "改行時に前の行のインデントを継続する
set smartindent   "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" その他
set number        "行数を表示

" ノーマルモード Enterで改行
noremap <CR> o<ESC>

" スペルチェック
set spell
set spelllang=en,cjk

" コマンド補完
" set wildmode=list,full
set wildmenu
set wildmode=longest:full,full
