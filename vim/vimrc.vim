"           _            .
" u            @88>
" 88Nu.   u.    %8P      ..    .     :       .u    .
" '88888.o888c    .     .888: x888  x888.   .d88B :@8c        .
" ^8888  8888  .@88u  ~`8888~'888X`?888f` ="8888f8888r  .udR88N
" 8888  8888 ''888E`   X888  888X '888>    4888>'88"  <888'888k
" 8888  8888   888E    X888  888X '888>    4888> '    9888 'Y"
" 8888  8888   888E    X888  888X '888>    4888>      9888
" .    .8888b.888P   888E    X888  888X '888>   .d888L .+   9888
" .@8c    ^Y8888*""    888&   "*88%""*88" '888!`  ^"8888*"    ?8888u../
" '%888"     `Y"        R888"    `~    "    `"`       "Y"       "8888P'
" ^*                   ""                                       "P'

" Initialization

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Y8b Y88888P                        888 888
"  Y8b Y888P  8888 8888 888 8e   e88 888 888  ,e e,
"   Y8b Y8P   8888 8888 888 88b d888 888 888 d88 88b
"    Y8b Y    Y888 888P 888 888 Y888 888 888 888   ,
"     Y8P      "88 88"  888 888  "88 888 888  "YeeP"

Bundle 'gmarik/vundle'

Bundle 'vim-scripts/ShowTrailingWhitespace'
Bundle 'vim-scripts/DeleteTrailingWhitespace'
Bundle 'airblade/vim-rooter'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'altercation/vim-colors-solarized'

Bundle 'scrooloose/nerdtree'
" Replace this origin after merge: https://github.com/mileszs/ack.vim/pull/86
" Bundle 'mileszs/ack.vim'
Bundle 'abeaumet/ack.vim'
Bundle 'tpope/vim-endwise'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'jimenezrick/vimerl'
Bundle 'Townk/vim-autoclose'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'sickill/vim-pasta'
Bundle 'slim-template/vim-slim'
Bundle 'kana/vim-fakeclip'
Bundle 'gorkunov/smartpairs.vim'
Bundle 'tpope/vim-rails'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'mhinz/vim-signify'
Bundle 'heartsentwined/vim-ember-script'
Bundle 'heartsentwined/vim-emblem'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'Yggdroot/indentLine'

Bundle 'hwrod/interactive-replace'
Bundle 'terryma/vim-expand-region'
Bundle 'sk1418/Join'
Bundle 'sk1418/QFGrep'
Bundle 'sjl/vitality.vim'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'troydm/zoomwintab.vim'
Bundle 'scrooloose/syntastic'
Bundle 'fweep/vim-tabber'
Bundle 'ervandew/supertab'

Bundle 'kshenoy/vim-signature'

" > alternate between relative numbering (normal mode) and absolute numbering
" > (insert mode) depending on the mode you are in
Bundle 'myusuf3/numbers.vim'
"
" ctrlp.vim and plugins
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/ctrlp-mark'
Bundle 'mellort/ctrlp-command'
Bundle 'vim-scripts/ctrlp-modified.vim'

" For 'Seamlessly Navigate Vim and tmux Splits'
" http://robots.thoughtbot.com/post/53022241323/seamlessly-navigate-vim-and-tmux-splits
Bundle 'christoomey/vim-tmux-navigator'

" Dash.app support
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

filetype plugin indent on " required!


" 888 88b,               ,e,
" 888 88P'  ,"Y88b  dP"Y  "   e88'888  dP"Y
" 888 8K   "8" 888 C88b  888 d888  '8 C88b
" 888 88b, ,ee 888  Y88D 888 Y888   ,  Y88D
" 888 88P' "88 888 d,dP  888  "88,e8' d,dP


set encoding=utf-8

syntax on

set guifont=PragmataPro\ for\ Powerline:h12

" 888                         888
" 888      e88 88e   e88 88e  888 ee
" 888     d888 888b d888 888b 888 P
" 888  ,d Y888 888P Y888 888P 888 b
" 888,d88  "88 88"   "88 88"  888 8b

set background=light
colorscheme solarized
set synmaxcol=80

set colorcolumn=75,80
hi ColorColumn ctermbg=7

"set cursorcolumn
set cursorline
"hi CursorColumn ctermbg=7
hi CursorLine ctermbg=230

autocmd InsertEnter * hi CursorLine ctermbg=226
autocmd InsertLeave * hi CursorLine ctermbg=230

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Highlight 80+
hi OverLength ctermbg=15 ctermfg=9
match OverLength /\%81v.\+/

" 888'Y88                 888
" 888 ,'Y  ,e e,   ,e e,  888
" 888C8   d88 88b d88 88b 888
" 888 "   888   , 888   , 888
" 888      "YeeP"  "YeeP" 888

" Splits

" More natural splits behaviour
set splitright
set splitbelow

" Scroll

set scrolloff=3

" Undo

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10002        " number of lines to save for undo

set spelllang=ru_yo,en_us

" Show EOL and tabs
set listchars=tab:▸\ ,eol:¬
set list
hi NonText ctermfg=254

set nojoinspaces

" Indent
set autoindent

set wildmenu
set wildmode=full

" Search
set hlsearch
vmap <Space> <esc>:nohlsearch<Bar>:echo<CR>
nmap <Space> :nohlsearch<Bar>:echo<CR>
set incsearch
set ignorecase
set smartcase

" NERDTree
let NERDTreeHijackNetrw=1

map <c-s> :w<cr>
map <c-q> :q<cr>

" Save file mapping
" Don't forget put `stty -ixon -ixoff` into your .zshrc file
nmap <c-s> :w<CR>
imap <c-s> <esc>:w<cr>
vmap <c-s> <esc>:w<cr>

let g:DeleteTrailingWhitespace_Action = 'delete'


" " Font
" set guifont=M+\ 1m:h12
"
" " Hide toolbar
" set guioptions-=T
" set guioptions-=L
"
" " Remove scrollbars
" set guioptions-=l
" set guioptions-=R
" set guioptions-=r

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

" Typos
command! Q q
command! Qall qall

au BufRead,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit

command! CloseHiddenBuffers call s:CloseHiddenBuffers()
function! s:CloseHiddenBuffers()
  let open_buffers = []

  for i in range(tabpagenr('$'))
    call extend(open_buffers, tabpagebuflist(i + 1))
  endfor

  for num in range(1, bufnr("$") + 1)
    if buflisted(num) && index(open_buffers, num) == -1
      exec "bdelete ".num
    endif
  endfor
endfunction


" 888 88e  888                    ,e,
" 888 888D 888 8888 8888  e88 888  "  888 8e   dP"Y
" 888 88"  888 8888 8888 d888 888 888 888 88b C88b
" 888      888 Y888 888P Y888 888 888 888 888  Y88D
" 888      888  "88 88"   "88 888 888 888 888 d,dP
"                          ,  88P
"                         "8",P"

let g:ack_autoclose = 1

let g:EasyMotion_leader_key = '<leader>'

" TODO: Open CtrlP in file mode

set wildignore+=*/.idea/*
set wildignore+=*/public/assets/*
set wildignore+=*/tmp/*

" vim-signify
" https://github.com/mhinz/vim-signify

let g:signify_disable_by_default=1

hi SignColumn ctermbg = 7

let g:signify_vcs_list = ['git']

let g:signify_sign_weight = 'NONE'

let g:signify_sign_color_ctermbg = 231

let g:signify_sign_color_ctermfg_add = 70
let g:signify_sign_color_ctermfg_delete = 160
let g:signify_sign_color_ctermfg_change = 100

let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '⎵'
let g:signify_sign_change            = '⁓'
let g:signify_sign_change_delete     = '±'
let g:signify_sign_delete_first_line = '⎴'


" Powerline
" https://github.com/Lokaltog/powerline

set rtp+=~/.powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

set tabline=%!tabber#TabLine()
let g:tabber_divider_style = 'compatible'

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set laststatus=2 " Always display the statusline in all windows
set noshowmode   " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" When youre pressing Escape to leave insert mode in the terminal, it will
" by default take a second or another keystroke to leave insert mode
" completely and update the statusline. If you find this annoying, you can
" add the following snippet to your vimrc to escape insert mode
" immediately:

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif


" vim-multiple-cursors
" https://github.com/terryma/vim-multiple-cursors

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<c-n>'
let g:multi_cursor_prev_key='<space>'
let g:multi_cursor_skip_key='n'
let g:multi_cursor_quit_key='<Esc>'


" indentLine
" https://github.com/Yggdroot/indentLine.git

let g:indentLine_color_term = 184
let g:indentLine_char = '⦙'
let g:indentLine_noConcealCursor = 1


" vim-session
" https://github.com/xolox/vim-session
let g:session_autosave = 'no'

autocmd BufWrite *.sass silent! :%s/;$//g

" Restore last editing position
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif


" 888 88P
" 888 8P   ,e e,  Y8b Y888P
" 888 K   d88 88b  Y8b Y8P
" 888 8b  888   ,   Y8b Y
" 888 88b  "YeeP"    888
"                    888
"                    888
" 888      ,e,              888 ,e,
" 888 88e   "  888 8e   e88 888  "  888 8e   e88 888  dP"Y
" 888 888b 888 888 88b d888 888 888 888 88b d888 888 C88b
" 888 888P 888 888 888 Y888 888 888 888 888 Y888 888  Y88D
" 888 88"  888 888 888  "88 888 888 888 888  "88 888 d,dP
"                                             ,  88P
"                                            "8",P"

" Navigation

" Disable arrow key for navigation
map  <up> <nop>
map  <down> <nop>
map  <left> <nop>
map  <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Navigation between splits
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l


" Open files

" Prevent pollution
map <leader>o :echo 'Wrong open command'<cr>
map <leader>op :echo 'Wrong CtrlP command'<cr>
map <leader>on :echo 'Wrong NERDTree command'<cr>

" CtrlP binding
map <leader>opp :CtrlP<cr>
map <leader>opc :CtrlPCurFile<cr>
map <leader>opb :CtrlPBuffer<cr>
map <leader>opra :CtrlP app/assets<cr>
map <leader>oprs :CtrlP app/assets/stylesheets<cr>
map <leader>oprj :CtrlP app/assets/javascripts<cr>
map <leader>oprv :CtrlP app/views<cr>

" NERDTree binding
map <leader>ono :NERDTree<CR>
map <leader>onc :NERDTreeClose<CR>
map <leader>ont :NERDTreeToggle<CR>
map <leader>onf :NERDTreeFind<CR>

" Rails.vim
map <leader>orc :Econtroller<space>
map <leader>orm :Emodel<space>
map <leader>orv :Eview<space>


" Search

" Ack
nmap <leader>s :Ack<Space>


" Yank text to the OS X clipboard
map  <leader>p "+p
map  <leader>y "+y
nmap <leader>y "+y

" Splits
map  <c-w>\| :vsp<CR>
map  <c-w>- :sp<cr>

" Resize of splits
"nmap <c-]> :vertical-resize +5<CR>
"nmap <c-\> :resize -2<CR>
"nmap <c-?> :resize +2<CR>
"nmap <c-[> :vertical-resize -5<CR>

map  <leader>q :q<cr>
map  <leader>Q :q!<cr>
map  <leader>X :x<cr>


" Meta configuration

" Source the vimrc file after saving it
" TODO: Figure out why powerline lose styles
"if has("autocmd")
  "autocmd bufwritepost .vimrc source $MYVIMRC
"endif

" Command line

cnoremap <C-a> <Home>
"


"   e88 88e             ,e,          888                   888 ,e,   d8
"  d888 888b  8888 8888  "   e88'888 888 ee    ,e e,   e88 888  "   d88
" C8888 8888D 8888 8888 888 d888  '8 888 P    d88 88b d888 888 888 d88888
"  Y888 888P  Y888 888P 888 Y888   , 888 b    888   , Y888 888 888  888
"   "88 88"    "88 88"  888  "88,e8' 888 8b    "YeeP"  "88 888 888  888
"       b
"       8b,


map <leader>evrc :e ~/.vimrc<cr>
map <leader>etcf :e ~/.tmux.conf<cr>
map <leader>ezrc :e ~/.zshrc
map <leader>epcf :CtrlP ~/.config/powerline<cr>

