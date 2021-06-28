"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-j> :m .+1<CR>==                                                                 " move lines with ctrl+j & ctrl+k (works in visual)
nnoremap <c-k> :m .-2<CR>==                                                                 " move lines with ctrl+j & ctrl+k (works in visual)
inoremap <c-j> <Esc>:m .+1<CR>==gi                                                          " move lines with ctrl+j & ctrl+k (works in visual)
inoremap <c-k> <Esc>:m .-2<CR>==gi                                                          " move lines with ctrl+j & ctrl+k (works in visual)
vnoremap <c-j> :m '>+1<CR>gv=gv                                                             " move lines with ctrl+j & ctrl+k (works in visual)
vnoremap <c-k> :m '<-2<CR>gv=gv                                                             " move lines with ctrl+j & ctrl+k (works in visual)
nnoremap <silent> <CR> :nohlsearch<CR><CR>                                                  " turn off search highlighting with <CR> in command mode 
nnoremap <silent> <S-Right> :tabnext<CR>                                                    " shift+[right|left] arrow to switch betweens tabs
nnoremap <silent> <S-Left> :tabprevious<CR>                                                 " shift+[right|left] arrow to switch betweens tabs
nnoremap gf <C-W>gf                                                                         " open file under cursor in new tab
nnoremap <silent> gx :execute 'silent! !open ' . shellescape(expand('<cWORD>'), 1)<cr>      " open links in browser

