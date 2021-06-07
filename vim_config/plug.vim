""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.

" Themes
" Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

" Utils
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Comments 
Plug 'tomtom/tcomment_vim'


" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Move lines 
Plug 'matze/vim-move'

" Jump easily to word or lines
Plug 'easymotion/vim-easymotion'

" Dev icons on Nerdtree
Plug 'ryanoasis/vim-devicons' " After installing this plugins install InconsolataGo or InconsolataLGC from NerdFonts

" Insensitive searching
Plug 'tpope/vim-abolish'

" Highlight closing tag
Plug 'adelarsq/vim-matchit'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" Show color on display from color code
Plug 'lilydjwg/colorizer'

"Svg indennt
Plug 'jasonshell/vim-svg-indent'

" Explorer folder or files
" Plug 'ctrlpvim/ctrlp.vim' // removed because FZF
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

" Syntax
Plug 'cakebaker/scss-syntax.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'tpope/vim-unimpaired'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Diff git conflicts
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'zivyangll/git-blame.vim'

" Air line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" MarkDown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

"Coc: Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Multicursor
Plug 'terryma/vim-multiple-cursors'

" Gutentag (Ctags regenerator)
Plug 'ludovicchabant/vim-gutentags'

" Import automatically
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

" Show changes
" Plug 'airblade/vim-gitgutter'

" Find and show preview
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Indent lines
Plug 'Yggdroot/indentLine'

" Editing Ruby on Rails applications
Plug 'tpope/vim-rails'

" Support for glsl
Plug 'tikhomirov/vim-glsl'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
