"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mappging keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

"Save & quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

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

"Shortcut for newline whitout visual mode
nmap <S-o> i<Enter><Esc>k<cr>

" Toggle line numbering
nnoremap <C-x> :set nonumber!<CR>

"Buffer explorer
nnoremap · :BufExplorer<CR>

" Wrapping between quotes
" To get quotes betweeen seleceted text to do: c"<C-r>""
xmap <Leader>" c"<Esc>p
xmap <Leader>' c'<Esc>p
xmap <Leader>{ c{<Esc>p
xmap <Leader>[ c[<Esc>p

" Coc {prettier} format
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

" Delete word above cursor
nmap <Leader>d bde

"FZF Search files
map <Leader>f :Files!<CR> 
"FZF Show history ( last files modified )
nmap <Leader>h :History<CR> 
"FZF Search files
map <Leader>bc :BCommits!<CR> 

" In insert or command mode, move normally by using Ctrl
" inoremap <silent> <C-j> <ESC><Down><Right>i
" inoremap <silent> <C-k> <ESC><Up><Right>i
" inoremap <silent> <C-l> <ESC><Right><Right>i
" inoremap <silent> <C-h> <ESC>i
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
