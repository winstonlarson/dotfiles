"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Winston Larson .vimrc
" 
" Settings for:
" python
" html / css / js

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" General settings

set clipboard=unnamed "use system clipboard
set backspace=indent,eol,start "backspace works as expected
set number "number lines
set encoding=utf-8 "set encoding to utf-8
syntax on "turn on syntax highlighting
set cursorline
set t_Co=256 "recognize 256 colors in tmux
set laststatus=2
set statusline+=%F

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Enable Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za " Enable folding with the spacebar

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Python settings

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let python_highlight_all=1 "python real pretty

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Other language settings

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Pathogen Plugins
execute pathogen#infect()

filetype plugin indent on    " required

let g:syntastic_quiet_messages = { "type": "style" }
colorscheme monokain
