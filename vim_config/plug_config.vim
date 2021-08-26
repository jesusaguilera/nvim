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
"Remove lag when we navigate among buffers
set hid

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



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Closetag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'javascript.js': 'jsRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


" Snippets (Trigger configuration (Optional))
"let g:UltiSnipsExpandTrigger="<C-l>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
