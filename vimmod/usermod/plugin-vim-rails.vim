"""""""""""""""""""""""""
" settings for vim-rails
"""""""""""""""""""""""""

let g:rails_default_file='config/database.yml'
let g:rails_level = 4
let g:rails_mappings = 1
let g:rails_modelines = 0

function! SetUpRailsSettings()
    nnoremap <buffer><Space>r :R<CR>
    nnoremap <buffer><Space>a :A<CR>
    nnoremap <buffer><Space>c :Rcontroller<Space>
    nnoremap <buffer><Space>v :Rview<Space>
    nnoremap <buffer><Space>p :Rpreview<CR>
    nnoremap <buffer><Space>m :Rmodel<Space>
endfunction

aug MyAutoCmd
  au User Rails call SetUpRailsSettings()
aug END

aug RailsDictSettings
  au!
aug END
