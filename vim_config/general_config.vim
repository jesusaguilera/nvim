""""""""""""""""""""""""""""""""""""""""""""""
"  General configuration
""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set laststatus=2                  "Always show the statusline
set encoding=utf-8                "Necessary to show Unicode glyphs
set mouse=a                        "Mouse move
set tabstop=2                     "a tab is four spaces
set softtabstop=2                 "yep, two
set modifiable                    "make file modifacable (on nerdtree)
set number                        "always show line numbers
set diffopt+=vertical             "Switch to Vertical on diff
set showmatch                     "set show matching parenthesis
set expandtab                     "expand tabs to spaces
set formatoptions+=n              "support for numbered/bullet lists
set noswapfile
set nobackup
set guioptions+=b
set wildmenu                      "turn on wild menu
set wildmode=longest,list         "filename completion
set ruler                         "Always show current positions along the bottom
set cmdheight=2                   "the command bar is 1 high
set showmatch                     "show matching brackets
set hidden                        "if hidden is not set, TextEdit might fail.

"Indent 
set shiftwidth=2                  "number of sapces to use for autoindenting
set shiftround                    "use multiple of shiftwidth when indenting whit '<' and  '>>'
set autoindent                    "automatic indent new lines
set smartindent                   "be smart about it

syntax enable

" Dont' beep
set visualbell                    
set noerrorbells                  

" search 
set hlsearch                      "higlight search terms
set incsearch           
set ignorecase                    "ignore case when searching
set smartcase                     "ignore case if search pattern is all lowercase, case-sensitive otherwise

"Cursor
set guicursor= "Block cursor and blinking

"tmux clipboard copy
set clipboard=unnamedplus

set relativenumber

