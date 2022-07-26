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
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
"Snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutentags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Solve error when closing vim
let g:gutentags_exclude_filetypes = ['*', 'gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GitLengs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" must after plugin loaded, for example,
""" if you are using vim-plug, this should put after `call plug#end()`
""" enable auto show blame info when cursor move
call nvimblamer#auto()

""" config the plugin
lua <<EOF

require'nvim-blamer'.setup({
    prefix = '👽💻 => ', -- you can cusomize it to any thing, unicode emoji, even disable it, just set to empty lua string
    enable = true,
    format = '%committer | %committer-time-human | %summary',
})

EOF


lua <<EOF
require'nvim-web-devicons'.setup {
 default = true;
}
EOF

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})
" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = 'x'
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'
