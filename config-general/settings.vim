"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:mapleader = "\<Space>"        " set leader key
set number                          " show line numbering
set relativenumber                  " show relative line number
set cursorline                      " highlight current line
set wildmenu                        " visual autocomplete for command menu
set iskeyword+=-                    " treat dash separated words as a word text object
set signcolumn=yes                  " always show the gutter
set scrolloff=3                     " minimal number of lines to keep above and below the cursor
set isfname+={,}                    " resolve variables like ${HOME}
set timeoutlen=500                  " set key timeout length
filetype indent plugin on           " enable filetype plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                        " Turn off backups, since most stuff is in git, etc...
set nowritebackup                   " Turn off backups, since most stuff is in git, etc...
set noswapfile                      " Turn off backups, since most stuff is in git, etc...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, <TAB>, and Indent Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                       " enable syntax highlighting
set wrap                            " wrap lines
set linebreak                       " prevent wrap from breaking words
set tabstop=4                       " width that a <TAB> character displays as
set expandtab                       " convert <TAB> key-preses to spaces
set softtabstop=4                   " backspace after pressing <TAB> will remove up to this many spaces
set shiftwidth=4                    " number of spaces to use for each step of (auto)indent
set autoindent                      " copy indent from current line when starting a new line
set smartindent                     " even better autoindent (e.g. add indent after '{')
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o          " Stop newline continution of comments
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                       " search as characters are entered
set hlsearch                        " highlight matches
set showmatch                       " highlight matching parentheses/brackets [{()}]
