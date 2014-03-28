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

" Set shell to sh
if &shell =~# 'fish$'
  set shell=sh
endif

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

NeoBundle 'gist:kossnocorp/7211844', {
        \ 'name': 'mlessnau_block_shift.vim',
        \ 'script_type': 'plugin'}

" Visual mode

" Move selected blocks by <C-k/j>
vmap <C-k> :call BlockShiftUp()<CR>
vmap <C-j> :call BlockShiftDown()<CR>

NeoBundle 'vim-scripts/ShowTrailingWhitespace'
NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
NeoBundle 'airblade/vim-rooter'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'

NeoBundle 'heartsentwined/vim-ember-script'
NeoBundle 'heartsentwined/vim-emblem'
NeoBundle 'jimenezrick/vimerl'

NeoBundle 'scrooloose/nerdtree'
" Replace this origin after merge: https://github.com/mileszs/ack.vim/pull/86
" Bundle 'mileszs/ack.vim'
NeoBundle 'abeaumet/ack.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'sickill/vim-pasta'

NeoBundle 'kana/vim-fakeclip'
NeoBundle 'gorkunov/smartpairs.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'godlygeek/tabular'
NeoBundle 'terryma/vim-multiple-cursors'
"Bundle 'stephenmckinney/vim-solarized-powerline'

NeoBundle 'hwrod/interactive-replace'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'sk1418/Join'
"NeoBundle 'sk1418/QFGrep'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'maxbrunsfeld/vim-yankstack'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'troydm/zoomwintab.vim'
"Bundle 'scrooloose/syntastic'
"Bundle 'fweep/vim-tabber'
NeoBundle 'ervandew/supertab'
NeoBundle 'matze/vim-move'

NeoBundle 'kshenoy/vim-signature'


" > alternate between relative numbering (normal mode) and absolute numbering
" > (insert mode) depending on the mode you are in
NeoBundle 'myusuf3/numbers.vim'
"
" Dash.app support
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'rizzatti/dash.vim'

" 888                         888
" 888      e88 88e   e88 88e  888 ee
" 888     d888 888b d888 888b 888 P
" 888  ,d Y888 888P Y888 888P 888 b
" 888,d88  "88 88"   "88 88"  888 8b

NeoBundle 'mhinz/vim-signify'                " VCS diff using sign column
"NeoBundle 'bling/vim-airline'                " Status bar
"NeoBundle 'bling/vim-bufferline'             " Show recently used buffers

"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" Highlight

set synmaxcol=160 " Disable highlight after 160th column (makes vim faster)


" Colorscheme

NeoBundle 'altercation/vim-colors-solarized'

set background=light
colorscheme solarized

" Font

set guifont=PragmataPro\ for\ Powerline:h12

set colorcolumn=80     " Show gutter at 50, 72 and 80 columns
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

"" Highlight 80+
"hi OverLength ctermbg=15 ctermfg=9
"match OverLength /\%81v.\+/

NeoBundle 'Yggdroot/indentLine'

let g:indentLine_color_term = 145
let g:indentLine_char = '⦙'
let g:indentLine_noConcealCursor = 1

" 888
" 888      ,"Y88b 888 8e   e88 888 8888 8888  ,"Y88b  e88 888  ,e e,   dP"Y
" 888     "8" 888 888 88b d888 888 8888 8888 "8" 888 d888 888 d88 88b C88b
" 888  ,d ,ee 888 888 888 Y888 888 Y888 888P ,ee 888 Y888 888 888   ,  Y88D
" 888,d88 "88 888 888 888  "88 888  "88 88"  "88 888  "88 888  "YeeP" d,dP
"                           ,  88P                     ,  88P
"                                                    "8",P"  "

" Syntastic

NeoBundle 'scrooloose/syntastic'
let g:syntastic_enable_signs=1

" CoffeeScript

NeoBundle 'kchmck/vim-coffee-script'

" Markdown

NeoBundle 'tpope/vim-markdown'
au BufNewFile,BufRead *.md set colorcolumn=72,80

NeoBundle 'slim-template/vim-slim'
NeoBundle 'gist:gf3/390929', {'name': 'html5.vim', 'script_type': 'after/syntax'}

au BufNewFile,BufRead *.skim set filetype=slim

au BufRead,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit
au BufRead,BufNewFile {COMMIT_EDITMSG} set colorcolumn=50,72,80

" Clojure & ClojureScript

NeoBundle 'guns/vim-clojure-static'
NeoBundle 'kien/rainbow_parentheses.vim'

" Always on rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Fish

NeoBundle 'dag/vim-fish'

" Languages footer

syntax enable
filetype plugin indent on
"syntax on

" Y88b Y88                   ,e,                    d8   ,e,
"  Y88b Y8  ,"Y88b Y8b Y888P  "   e88 888  ,"Y88b  d88    "   e88 88e  888 8e
" b Y88b Y "8" 888  Y8b Y8P  888 d888 888 "8" 888 d88888 888 d888 888b 888 88b
" 8b Y88b  ,ee 888   Y8b "   888 Y888 888 ,ee 888  888   888 Y888 888P 888 888
" 88b Y88b "88 888    Y8P    888  "88 888 "88 888  888   888  "88 88"  888 888
"                                  ,  88P
"                                 "8",P"

""" Splits

" For 'Seamlessly Navigate Vim and tmux Splits'
" http://robots.thoughtbot.com/post/53022241323/seamlessly-navigate-vim-and-tmux-splits
NeoBundle 'christoomey/vim-tmux-navigator'

nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

" > land to window you choose like tmux's 'display-pane'
NeoBundle 't9md/vim-choosewin'

" Enable overlay feature
let g:choosewin_overlay_enable = 1

" Select split to navigate (*split select*)
nmap <leader>ss <Plug>(choosewin)


""" Buffers

NeoBundle 'moll/vim-bbye'

" Close current buffer
noremap <leader>x :Bdelete<cr>
" Close all open buffers and files
noremap <leader>X :bufdo :Bdelete<cr>


""" Text navigation

NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'gcmt/wildfire.vim'


""" Files
"
" ctrlp.vim and plugins
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/ctrlp-mark'
NeoBundle 'mellort/ctrlp-command'
NeoBundle 'JazzCore/ctrlp-cmatcher'
NeoBundle 'jasoncodes/ctrlp-modified.vim'

let g:ctrlp_custom_ignore = '\v[\/]\.(node_modules|bower_components)$'

" Use cmatcher instead of default one
let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}

let g:ctrlp_max_files = 20000

" Prevent pollution
map <leader>o :echo 'Wrong open command'<cr>
map <leader>op :echo 'Wrong CtrlP command'<cr>
map <leader>on :echo 'Wrong NERDTree command'<cr>

" CtrlP bindings
map <leader>opp :CtrlP<cr>
map <leader>opc :CtrlPCurFile<cr>
map <leader>opb :CtrlPBuffer<cr>
map <leader>opm :CtrlPModified<cr>
map <leader>opra :CtrlP app/assets<cr>
map <leader>oprs :CtrlP app/assets/stylesheets<cr>
map <leader>oprj :CtrlP app/assets/javascripts<cr>
map <leader>oprv :CtrlP app/views<cr>

" 888'Y88      888 ,e,   d8   ,e, ,e,
" 888 ,'Y  e88 888  "   d88    "   "  888 8e   e88 888
" 888C8   d888 888 888 d88888 888 888 888 88b d888 888
" 888 ",d Y888 888 888  888   888 888 888 888 Y888 888
" 888,d88  "88 888 888  888   888 888 888 888  "88 888
"                                               ,  88P
"                                              "8",P"


" 888 88b,               ,e,
" 888 88P'  ,"Y88b  dP"Y  "   e88'888  dP"Y
" 888 8K   "8" 888 C88b  888 d888  '8 C88b
" 888 88b, ,ee 888  Y88D 888 Y888   ,  Y88D
" 888 88P' "88 888 d,dP  888  "88,e8' d,dP


set encoding=utf-8


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

set tabstop=2    " Tab eql 2 spaces
set shiftwidth=2 " Indent width
set expandtab    " Tab turns into spaces

set backspace=indent,eol,start

" Specify tmp dir
set directory=~/.vim/tmp

" Disable swap
set noswapfile

" Typos
command! Q q
command! Qall qall

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

"let g:ack_autoclose = 1

let g:EasyMotion_leader_key = '<leader>'

" TODO: Open CtrlP in file mode

set wildignore+=*/.idea/*
set wildignore+=*/public/assets/*
set wildignore+=*/tmp/*
set wildignore+=*/log/*
set wildignore+=*/node_packages/*
set wildignore+=*/bower_components/*

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


"" Powerline
"" https://github.com/Lokaltog/powerline

"set rtp+=~/.powerline/powerline/bindings/vim
"let g:Powerline_symbols = 'fancy'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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

" NERDTree binding
map <leader>ono :NERDTree<CR>
map <leader>onc :NERDTreeClose<CR>
map <leader>ont :NERDTreeToggle<CR>
map <leader>onf :NERDTreeFind<CR>

" Rails.vim
map <leader>orc :Econtroller<space>
map <leader>orm :Emodel<space>
map <leader>orv :Eview<space>

" Yank text to the OS X clipboard
map  <leader>p "+p
map  <leader>y "+y
nmap <leader>y "+y

" Splits
map  <c-w>\| :vsp<CR>
map  <c-w>- :sp<cr>

map <leader>vv :set wrap<cr>
map <leader>vn :set nowrap<cr>

" Resize of splits
"nmap <leader>k :vertical-resize +5<CR>
"nmap <c-\> :resize -2<CR>
"nmap <c-?> :resize +2<CR>
"nmap <c-8> :vertical-resize -5<CR>

noremap  <leader>q :q<cr>
noremap  <leader>Q :qall<cr>

nnoremap <c-u> viwU<esc>

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
"map <leader>epcf :CtrlP ~/.config/powerline<cr>

NeoBundleCheck

" http://patorjk.com/software/taag/#p=display&f=Rozzo
