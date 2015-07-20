" all user settings
set t_Co=256
set fileformats=unix,dos
set nobackup
set history=50
set ignorecase "検索に大文字と小文字を区別しない
set smartcase
set hlsearch
set incsearch
set number
set showmatch
set wrap
"set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set backspace=start,eol,indent
set wildmenu
set showcmd
set laststatus=2
set visualbell

augroup fileTypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.rb setlocal tabstop=2,softtabstop=2,shiftwidth=2,expandtab
	autocmd BufNewFile,BufRead *.html setlocal tabstop=2,softtabstop=2,shiftwidth=2,expandtab
	autocmd BufNewFile,BufRead *.css setlocal tabstop=4,softtabstop=4,shiftwidth=4,expandtab
augroup END

