"" VIM keybindings

"" Basic Keybinding
nnoremap j gj
nnoremap k gk

nnoremap <C-n> :tabn<CR>
nnoremap <C-p> :tabp<CR>

execute "set <M-h>=\eh"
nnoremap <M-h> :tabmove -1<CR>
execute "set <M-l>=\el"
nnoremap <M-l> :tabmove +1<CR>

"" NEARDTree
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <C-\> :NERDTree<CR>
nnoremap <C-\> :NERDTreeToggle<CR>
