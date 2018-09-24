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
""" Plugins
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"" Plugin 'tmhedberg/SimpylFold'
"" Plugin 'vim-scripts/indentpython.vim'
"" Plugin 'vim-syntastic/syntastic'
"" Plugin 'nvie/vim-flake8'
"" Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:syntastic_quiet_messages = { "type": "style" }
colorscheme monokain
