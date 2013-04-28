"                o8o
"                  `"'
"     oooo    ooo oooo  ooo. .oo.  .oo.   oooo d8b  .ooooo.
"      `88.  .8'  `888  `888P"Y88bP"Y88b  `888""8P d88' `"Y8
"       `88..8'    888   888   888   888   888     888
" .o.    `888'     888   888   888   888   888     888   .o8
" Y8P     `8'     o888o o888o o888o o888o d888b    `Y8bod8P'
"
"                   __,                     __  ,
"        /         (              /        ( /,/
"       /  __  ,    `.  __,  (   /_  __,    /<   __ (   (
"      /_)/ (_/_  (___)(_/(_/_)_/ /_(_/(_  /  \_(_)/_)_/_)_
"            /

" http://patorjk.com/software/taag/#p=display&f=Santa%20Clara&t=classical%0A.VIMRC

" Init pathogen
call pathogen#incubate()


" Escape to normal model on double j
inoremap jj <esc>

" Colorscheme
syntax enable
set background=light
colorscheme solarized

" Highlight indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

" Highlight current line in insert mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Highlight 80+
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Show EOL and tabs
set listchars=tab:▸\ ,eol:¬
set list
" ctermfg=7
hi NonText ctermfg=123 cterm=NONE

" Indent
set autoindent

" Search
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set incsearch
set ignorecase
set smartcase

" NERDTree
let g:NERDTreeHijackNetrw=0
map <leader>n :NERDTreeToggle<CR>

map <leader>a :Ack<Space>

map <C-s> :w<CR>


" CtrlP mapping
" Buffer
map <leader>b :CtrlPBuffer<CR>
" TODO: Open CtrlP in file mode
map <leader>s :CtrlPCurFile<CR>
" Rails specific
map <leader>ra :CtrlP app/assets<CR>
map <leader>rs :CtrlP app/assets/stylesheets<CR>
map <leader>rj :CtrlP app/assets/javascripts<CR>
map <leader>rv :CtrlP app/views<CR>

let g:ctrlp_custom_ignore = 'public/assets'

" Save file mapping
" Don't forget put `stty -ixon -ixoff` into your rc file
nmap <C-s> :w<CR>
imap <C-s> <esc>:w<cr>
vmap <C-s> <esc>:w<cr>

"

let g:DeleteTrailingWhitespace_Action = 'delete'


" Font
set guifont=M+\ 1m:h12

" Hide toolbar
set guioptions-=T
set guioptions-=L

" Remove scrollbars
set guioptions-=l
set guioptions-=R
set guioptions-=r

" Show numbers
set number

" Don't wrap long lines
set nowrap

" Count of spaces for tab
set tabstop=2
" Count of spaces for retab
set shiftwidth=2
" Insert spaces on tab
set expandtab


" Specify tmp dir
set directory=~/.vim/tmp

" Disable swap
set noswapfile

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Typos
command! Q q
command! Qall qall

" Reload .vimrc on save
autocmd bufwritepost .vimrc source $MYVIMRC

"     _,
"    / |      _/_                                         /
"   /--|  , , /  __   _, __ _ _ _   _ _ _   __,  _ _   __/ (
" _/   |_(_/_(__(_)  (__(_)/ / / /_/ / / /_(_/(_/ / /_(_/_/_)_



"  __  ,
" ( /,/             / o          /o
"  /<   _  __  ,   / ,  _ _   __/,  _ _   _,  (
" /  \_(/_/ (_/_  /_)(_/ / /_(_/_(_/ / /_(_)_/_)_
"            /                            /|
"           '                            (/

"

" Disable arrow key for navigation
map  <up> <nop>
map  <down> <nop>
map  <left> <nop>
map  <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Yank text to the OS X clipboard
map  <leader>p "+p
map  <leader>y "+y
nmap <leader>y "+y

" Quick edit of .vimrc
map  <leader>vrc :e ~/.vimrc<cr>
map  <leader>vrr :source $MYVIMRC<cr>

" Splits
map  <leader>\| :vsp<CR>
map  <leader>- :sp<cr>

" Navigation between splits
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

" Resize of splits
nmap <c-]> :vertical resize +5<CR>
nmap <c-\> :resize -2<CR>
nmap <c-?> :resize +2<CR>
nmap <c-[> :vertical resize -5<CR>
