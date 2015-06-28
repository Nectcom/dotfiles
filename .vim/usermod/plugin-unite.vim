"""""""""""""""""""""""""""""""""""""""""
" plugin settings for Unite and NERDTree
"""""""""""""""""""""""""""""""""""""""""

nmap <Space>u [unite]

" Buffer List
nnoremap  [unite]d  :<C-u>UniteWithCurrentDir -buffer-name=files file buffer<CR>
nnoremap  [unite]b  :<C-u>Unite buffer<CR>

" Rails Caller
nnoremap  [unite]r    :<C-u>Unite rails/config rails/helper rails/model rails/view rails/controller<CR>
nnoremap  [unite]v    :<C-u>Unite rails/view<CR>
nnoremap  [unite]c    :<C-u>Unite rails/controller<CR>
nnoremap  [unite]m    :<C-u>Unite rails/model<CR>

" call NERDTree
nnoremap <C-e> :NERDTreeToggle<CR>

au FileType unite imap  <buffer> <ESC><ESC> <ESC>q
au FileType unite nmap  <buffer> <ESC><ESC> q
