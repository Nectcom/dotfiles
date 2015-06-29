""""""""""""""""""""""""""""""
" settings vim-submode plugin.
""""""""""""""""""""""""""""""

call submode#enter_with('bufmove','n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove','n', '', 's<', '<C-w><')
call submode#enter_with('bufmove','n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove','n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')