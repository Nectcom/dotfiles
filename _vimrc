filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'	
NeoBundle 'Shougo/neomru.vim' 
NeoBundle 'scrooloose/nerdtree'	
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-fugitive'	
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'	
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/AnsiEsc.vim'	

call neobundle#end()
filetype plugin indent on

NeoBundleCheck

""""""""""""""""""""""""
"オプション設定
""""""""""""""""""""""""""
set noswapfile
set ruler
" タイトルにファイルパス情報を表示
set title
set wildmenu
" 入力中のコマンドを表示
set showcmd
set smartcase
set hlsearch
" 保存されていないファイルがあっても別ファイルを開けるように
set hidden
set number
set showmatch
set autoindent
set tabstop=2
set shiftwidth=2
""""""""""""""""""""""""""

" 自動的にvim-indent-guidesを起動
let g:indent_guides_enable_on_vim_startup = 1

" grep 検索後にAuickFix Listを表示
autocmd QuickFixCmdPost *grep* cwindow

" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J>
unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J>
unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K>
unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K>
unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"""""""""""""""""""""""""""""
"自動的に閉じカッコを入力
"""""""""""""""""""""""""""""""

if has("autocmd")
        autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\'") <= line("$") |
        \    exe "nomal! g'\"" |
        \ endif
endif
""""""""""""""""""""""""""""""""

filetype indent on
syntax on
