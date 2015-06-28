""""""""""""""""""""""""""
" plugin settings for indent guides.
""""""""""""""""""""""""""

let g:indent_guides_enable_on_vim_startup = 1

" 色設定
let g:indent_guides_auto_colors = 0
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd  ctermbg=248

let g:indent_guides_guide_size = 1
