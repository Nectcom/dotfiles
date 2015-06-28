""""""""""""""""""""""""
" settings for Rubocop
""""""""""""""""""""""""
if exists('g:syntastic_mode_map')

  let g:syntastic_mode_map = { 'mode': 'active',
    / 'active_filetypes': ['ruby'] }
  
  let g:syntastic_ruby_checkers = ['rubocop']

endif
