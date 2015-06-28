""""""""""""""""""""""""
" neosnippet settings  "
""""""""""""""""""""""""
let s:default_snippet = neobundle#get_neobundle_dir() . '/neosnippet/autoload/neosnippet/snippets' " 本体に入っているもの
let s:my_snippet = '~/.vim/ruby_snip' " 自分の
let g:neosnippet#snippets_directory = s:my_snippet
let g:neosnippet#snippets_directory = s:default_snippet . ',' . s:my_snippet

imap <silent><C-F>        <Plug>(neosnippet_expand_or_jump)
inoremap <C-U>            <ESC>:<C-U>Unite snippet<CR>
nnoremap <silent><Space>e :<C-U>NeoSnippetEdit -split<CR>
smap <silent><C-F>        <Plug>(neosnippet_expand_or_jump)

" Combo with vim-rails
autocmd User Rails.view*      NeoSnippetSource ~/.vim/ruby_snip/ruby.rails.view.snip
autocmd User Rails.controller*      NeoSnippetSource ~/.vim/ruby_snip/ruby.rails.controller.snip
autocmd User Rails/db/migrate/*      NeoSnippetSource ~/.vim/ruby_snip/ruby.rails.migrate.snip
autocmd User Rails/config/routes.rb     NeoSnippetSource ~/.vim/ruby_snip/ruby.rails.routes.snip
