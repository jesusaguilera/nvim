"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-airline"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
let g:airline_powerline_fonts = 1
let g:airline_theme='owo'
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
" NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1 "NerdTree plugins shows hidden files
let g:NERDTreeWinSize=35 "NerdTree width
let NERDTreeCascadeSingleChildDir=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffopt+=vertical "Fugitive always vertical diffing


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

