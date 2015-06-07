"""""""""""""""""""""""""
" user keybind settings.
"""""""""""""""""""""""""

noremap <C-j> <esc>
noremap! <C-j> <esc>

" exMode desable
nnoremap Q <nop>

nnoremap s <Nop>

" Create Tabs.
nnoremap ss :split
nnoremap sv :vsplit

" Cusor move between Tabs.
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w

" Tabs move.
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L

" Change Tab size
nnoremap so <C-w>_<C-w>|
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap s+ <C-w>+
nnoremap s- <C-w>-

nnoremap st :tabnew
nnoremap sn :gt
nnoremap sp :gT

" Quite Buffer
nnoremap sq :bd

" clear highlight
nnoremap <silent>cc :nohlsearch<CR>

" ファイル整形
function! s:format_file()
  let view = winsaveview()
  normal gg=G
  silent call winrestview(view)
endfunction

nnoremap <Space>c :call <SID>format_file()<CR>
