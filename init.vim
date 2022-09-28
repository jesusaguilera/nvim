so ~/vim_config/general_config.vim
so ~/vim_config/plug.vim
so ~/vim_config/plug_config.vim
so ~/vim_config/theme.vim
so ~/vim_config/maps.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Save history
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undodir=~/.vim/undodir        "where to save undo histories
set undofile                      "set undor directory
set undolevels=1000               "maximum number of changes that can be undone
set undoreload=10000              "maximum number lines to save for undo on a buffer reload


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Avoid new line with comment after doing line break
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType * set formatoptions-=cr


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding method
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent  "fold based on indent
set foldnestmax=10     "deepset fold is 10 levels
set nofoldenable       "don't fold by default
set foldlevel=1

let g:ag_prg="<custom-ag-path-goes-here> --vimgrep"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load another colorscheme for Gdiff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &diff
  colorscheme up
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoSnippet plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
smap <C-y>     <Plug>(neosnippet_expand_or_jump)
imap <C-y>     <Plug>(neosnippet_expand_or_jump)
xmap <C-y>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be 'imap' and 'smap'.  It uses <Plug> mappings.
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
" Coc prettier extension
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to wherever location you've visited before in the file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Needed to jump to js files from Imports
" set path+=.
set path+=**
set suffixesadd+=.js


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show differences 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)

hi xmlAttrib cterm=italic ctermfg=214
hi jsxAttrib cterm=italic ctermfg=214

