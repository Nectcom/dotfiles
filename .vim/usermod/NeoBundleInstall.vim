""""""""""""""""""""""""""
" NeoBundle Plugins list.
""""""""""""""""""""""""""

set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
endif

" originalrepos on github

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc',{
		\ 'build' : {
			\ 'unix' : 'make -f make_unix.mak',
		\}
	\}
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'basyura/unite-rails'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'kana/vim-submode'
NeoBundle 'vim-scripts/ruby-matchit'
NeoBundle 'tpope/vim-surround'
NeoBundle 'marcus/rsense', {
  \ 'autoload' : {
  \   'filetypes' : 'ruby',
  \ },
  \ }
NeoBundle 'supermomonga/neocomplete-rsense.vim'
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'


if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depenes' : 'Shougo/vimproc',
    \ 'autoload': { 'insert' : 1 }
    \ }
endif

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
