:nnoremap <leader>ev :split $VYVIMRC<cr>
:nnoremap <leader>sc :source $MYVIMRC<cr>

"basics I thinkg
set number		"line numbers
set cursorline		"highlights number of current line
set tabstop=4 		"tabs = 4 spaces
set softtabstop=4	"tabs in insert mode are 4 spaces
set expandtab		"all tabs are spaces

"changing some default mappings
inoremap kj <Esc>
onoremap kj <Esc>

"easier navigation in insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"mapping to allow me to move one to the right easier
inoremap df <Esc><Right><Right>i

"tabbing
nmap >> <Nop>
nmap << <Nop>
vmap >> <Nop>
vmap << <Nop>

nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >><Esc>gv
vnoremap <S-Tab> <S-Tab> <<<Esc>gv
inoremap <S-Tab> <C-d>
set autoindent

"add line below while staying in normal mode
nnoremap oo o<Esc>

"braces pairing
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap {<ENTER> {<Enter><Enter>}<Up><Tab>

"line numbers
highlight LineNr term=NONE cterm=NONE ctermfg=YELLOW ctermbg=NONE gui=NONE guifg=YELLOW guibg=NONE
highlight CursorLine term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

"add a vertical var at 100 characters
set colorcolumn=100

"highlight last inserted test
nnoremap gV '[v']

"Control-L redraws screen screen and removes search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>
