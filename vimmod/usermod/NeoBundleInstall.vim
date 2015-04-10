""""""""""""""""""""""""""
" NeoBundle Plugins list.
""""""""""""""""""""""""""

set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/neobundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/neobundle/'))
endif

" originalrepos on github

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc',{
		\ 'build' : {
			\ 'unix' : 'make -f make_unix.mak',
		\}
	\}
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/vimshell'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'basyura/unite-rails'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'kana/vim-submode'


if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depenes' : 'Shougo/vimproc',
    \ 'autoload': { 'insert' : 1 }
    \ }
endif

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
