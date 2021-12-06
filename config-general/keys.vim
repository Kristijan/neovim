"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <CR> :nohlsearch<CR><CR>                                                  " turn off search highlighting with <CR> in command mode 
nnoremap <silent> <S-Right> :tabnext<CR>                                                    " shift+[right|left] arrow to switch betweens tabs
nnoremap <silent> <S-Left> :tabprevious<CR>                                                 " shift+[right|left] arrow to switch betweens tabs
nnoremap gf <C-W>gf                                                                         " open file under cursor in new tab
nnoremap <silent> gx :execute 'silent! !open ' . shellescape(expand('<cWORD>'), 1)<cr>      " open links in browser

