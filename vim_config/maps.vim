"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mappging keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

"Save & quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

"Movement on insert mode
imap <C-k> <up>
imap <C-j> <down>

"Close all buffers
nnoremap <Leader>ca :%bd<CR>

"Ag searcher
nnoremap <Leader>ag :Ag<SPACE>

"Go last modification
nmap <Leader>l `.

"Indent all file
nmap <Leader>i gg=G`.

"NERDTree
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFind<CR>

"Shortcut for comment 
map <Leader>c <c-_><c-_>

"Block comment
map <Leader>cc  <c-_>b 

"Exit from insert mode
imap jj <Esc>

"Shortcut for newline whitout insert mode
nmap <S-o> i<Enter><Esc>k<cr>

" Toggle line numbering
nnoremap <C-x> :set nonumber!<CR>

"Buffer explorer
nnoremap · :BufExplorer<CR>

" Wrapping between quotes
" To get quotes betweeen seleceted text to do: c"<C-r>""
nnoremap <Leader>" ciw""<Esc>P
nnoremap <Leader>' ciw''<Esc>P
nnoremap <Leader>{ ciw{}<Esc>P
nnoremap <Leader>[ ciw[]<Esc>P

" Coc prettier format
xmap <Leader>p  <Plug>(coc-format-selected)
nmap <Leader>p  <Plug>(coc-format-selected)

" Coc GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Git blame line
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

" Go to begin of line that starts with gap
nnoremap <Leader>bg 0w<Esc>

"FZF Search files
map <Leader>f :Files!<CR> 
"FZF Show history ( last files modified )
nmap <Leader>h :History<CR> 
"FZF Search files
map <Leader>bc :BCommits!<CR> 
