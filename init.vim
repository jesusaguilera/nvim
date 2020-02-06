""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.

" Themes
Plug 'rakr/vim-one'

" Utils
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Comments 
Plug 'tomtom/tcomment_vim'

" Syntax checking
Plug 'vim-syntastic/syntastic'

" Snippets
" Plug 'garbas/vim-snipmate'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Move lines 
Plug 'matze/vim-move'

" Dev icons on Nerdtree
Plug 'ryanoasis/vim-devicons' " After installing this plugins install InconsolataGo or InconsolataLGC from NerdFonts

" Insensitive searching
Plug 'tpope/vim-abolish'

" Highlight closing tag
Plug 'adelarsq/vim-matchit'

" Show color on display from color code
Plug 'lilydjwg/colorizer'

"Svg indennt
Plug 'jasonshell/vim-svg-indent'

" Explorer folder or files
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

" Syntax
Plug 'cakebaker/scss-syntax.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'tpope/vim-unimpaired'


" Diff git conflicts
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'zivyangll/git-blame.vim'

" Air line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocomplete (Deoplete)
Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Shougo/neco-syntax'


" Chrome Dev-Tools
Plug 'carlosrocha/vim-chrome-devtools', { 'do': 'npm install && npm run build' }


" List ends here. Plugins become visible to Vim after this call.
call plug#end()



"""""""""""""""""""""""
"  General configuration
"""""""""""""""""""""""
set nocompatible
set laststatus=2                  "Always show the statusline
set encoding=utf-8                "Necessary to show Unicode glyphs
set hidden
set mouse=a                        "Mouse move
set tabstop=2                     "a tab is four spaces
set softtabstop=2                 "yep, four
set modifiable                    "make file modifacable (on nerdtree)
set number                        "always show line numbers
set shiftwidth=2                  "number of sapces to use for autoindenting
set shiftround                    "use multiple of shiftwidth when indenting whit '<' and  '>>'
set diffopt+=vertical             "Switch to Vertical on diff
set showmatch                     "set shwo matching parenthesis
set ignorecase                    "ignore case whne searching
set smartcase                     "ignore case if search pattern is all lowercase, case-sensitive otherwise
set autoindent                    "automatic indent new lines
set smartindent                   "be smart about it
set expandtab                     "expand tabs to spaces
set formatoptions+=n              "support for numbered/bullet lists
set virtualedit=block             "allow virtual edit in visual block ..
set hlsearch                      "higlight search terms
set incsearch           
set title                         "change the terminal's title
set visualbell                    "don't beep
set noerrorbells                  "don't beep
set noswapfile
set nobackup
set guioptions+=b
set wildmenu                      "turn on wild menu
set wildmode=longest,list         "filename completion
set ruler                         "Always show current positions along the bottom
set cmdheight=2                   "the command bar is 2 high
set showmatch                     "show matching brackets
set mat=5                         "how many tenths of a second to blink matching brackets foor
" set so=10                         "Keep 10 lines (top/bottom) for scope




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
 syntax enable
 set termguicolors
 set background=dark

colorscheme one






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reach vim more snappy
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set ttyfast
" set lazyredraw

" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1




" change the default character when no match found
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0
" enable custom folder/directory glyph exact matching
" (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" change the default folder/directory glyph/icon
"
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = '📂'
" change the default dictionary mappings for file extension matches
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" change the default dictionary mappings for exact file node matches
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" add or override individual additional filetypes
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
" add or override pattern matches for filetypes
" these take precedence over the file extensions
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'

let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''
let g:WebDevIconsOS = 'Darwin'





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable JSX syntax on JS files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 "Allow JSX in normal JS files





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Needed for tmux clipboard copy
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamedplus





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Save history
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undodir=~/.vim/undodir        "where to save undo histories
set undofile                      "set undor directory
set undolevels=1000               "maximum number of changes that can be undone
set undoreload=10000              "maximum number lines to save for undo on a buffer reload





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Needed for tmux clipboard copy
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set a dictionary for autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set dictionary+=~/.vim/snippets/*
" set complete+=k~/.vim/dict/dict.txt





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight on select line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  hi Search cterm=NONE ctermfg=white ctermbg=blue
" hi Visual cterm=NONE guibg=#9BB1D3
"
" CursorLine & cursorcolumn
"
hi CursorLine   cterm=NONE ctermbg=239 ctermfg=white guibg=#1D2326
hi CursorColumn cterm=NONE ctermbg=239 ctermfg=white guibg=#1D2326
set cursorline! cursorcolumn! 





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Relative numbers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd InsertLeave * :set relativenumber
autocmd InsertEnter * :set number





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display images from Vim with imgcat 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Crtl-p plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/plugged/ctrlp.vim
let g:ctrlp_show_hidden = 1 "show hidden files 

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args> | cwindow | redraw!
nnoremap \ :Ag<SPACE>





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntax checkers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"with content '{ 'esversion': 6 }'
let syntastic_html_checkers = ['w3']
"
"
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ["jshint"] "We should have installed jshint (npm install -g jshint) and creat .jshintrc in root project folder 
" let g:syntastic_javascript_checkers = ["eslint"] "We should have installed jshint (npm install -g jshinl) and creat .jshintrc in root project folder 
let syntastic_scss_checkers = ['scss-lint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 0
highlight SyntasticErrorSign guifg=#FF4E4E guibg=NONE
highlight SyntasticWarningSign guifg=#FFE96E guibg=NONE
" highlight SyntasticErrorSign guifg=white guibg=red
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set html.erb like html files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.html.erb set filetype=html





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set scss like css
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.scss set filetype=scss





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set autocomplete for a set of files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype plugin on
" au FileType php setl ofu=phpcomplete#CompletePHP
" au FileType ruby,eruby setl ofu=rubycomplete#Complete
" au FileType c setl ofu=ccomplete#CompleteCpp
au FileType html,xhtml,erb setl ofu=htmlcomplete#CompleteTags
au FileType css,scss setl ofu=csscomplete#CompleteCSS
" au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType javascript.jsx setlocal sw=2 sts=2 et





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-airline"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
let g:airline_powerline_fonts = 1
let g:airline_theme='one'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'"





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree plugins shows hidden files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mappging keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Shortcut for NERDTree
map <C-l> :NERDTreeToggle<CR>

"
"Shortcut for comment 
"
map <C-i> <c-_><c-_>
"Block comment inline
" map <C-b><S-^>v<S-$><c-_>i
"Block comment
map <C-b> <c-_>b 

" Change between insert and normal mode
imap jj <Esc>

"Shortcut for newline whitout visual mode
nmap <C-o> i<Enter><Esc>k<cr>

"Movement on inser mode
imap <C-k> <up>
imap <C-j> <down>
imap <C-h> <left>
imap <C-l> <right>

" Toggle line numbering
nnoremap <C-x> :set nonumber!<CR>

" Show bufexplorer
nnoremap · :BufExplorer<CR>

" Wrapping between quotes
" To get quotes betweeen seleceted text to do: c"<C-r>""
nnoremap <C-w>" ciw""<Esc>P
nnoremap <C-w>' ciw''<Esc>P



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Folding method
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent  "fold based on indent
set foldnestmax=10     "deepset fold is 10 levels
set nofoldenable       "don't fold by default
set foldlevel=1



let g:ag_prg="<custom-ag-path-goes-here> --vimgrep"








"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-javascript configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Load another colorscheme for Gdiff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &diff
    colorscheme up
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

" Set bin if you have many instalations
" let g:deoplete#sources#ternjs#tern_bin = '/usr/local/bin/tern'
" let g:deoplete#sources#ternjs#timeout = 1

" Whether to include the types of the completions in the result data. Default: 0
" let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
" let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
" let g:deoplete#sources#ternjs#docs = 0

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
" let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
" let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
" let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
" let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
" let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
" let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
" let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
" let g:deoplete#sources#ternjs#in_literal = 0

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]
" Use tern_for_vim.
" let g:tern#command = ["tern"]
" let g:tern#arguments = ["--persistent"]



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoSnippet plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.local/share/nvim/snippets'





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Avoid new line with comment after doing line break
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType * set formatoptions-=cr
