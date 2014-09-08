" Basic cofiguration.

" Set shell to sh
if &shell =~# 'fish$'
  set shell=sh
endif

" NeoBundle setup
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

source ~/.vim/config/syntax.vim

syntax enable
filetype plugin indent on

NeoBundle 'airblade/vim-rooter'

NeoBundle 'heartsentwined/vim-ember-script'
NeoBundle 'heartsentwined/vim-emblem'
NeoBundle 'jimenezrick/vimerl'

NeoBundle 'scrooloose/nerdtree'

NeoBundle 'tpope/vim-rails'
NeoBundle 'majutsushi/tagbar'
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

echo split(globpath('~/.vim/config', '**'), '\n')

source ~/.vim/config/general.vim
source ~/.vim/config/look.vim

source ~/.vim/config/edit/aligment.vim
source ~/.vim/config/edit/snippets.vim
source ~/.vim/config/edit/autocomplete.vim
source ~/.vim/config/edit/copy_paste.vim
source ~/.vim/config/edit/moving.vim
source ~/.vim/config/edit/multiple_cursors.vim

source ~/.vim/config/navigation.vim
source ~/.vim/config/navigation/editor.vim
source ~/.vim/config/navigation/file.vim
source ~/.vim/config/navigation/text.vim

source ~/.vim/config/status/numbers.vim
source ~/.vim/config/status/status.vim

" 888 888 ,e,          888     888 ,e,            d8   888         d8                                 888
" 888 888  "   e88 888 888 ee  888  "   e88 888  d88   888 ee     d88   Y8b Y8b Y888P  ,e e,   ,"Y88b 888 ee  dP"Y
" 8888888 888 d888 888 888 88b 888 888 d888 888 d88888 888 88b   d88888  Y8b Y8b Y8P  d88 88b "8" 888 888 P  C88b
" 888 888 888 Y888 888 888 888 888 888 Y888 888  888   888 888    888     Y8b Y8b "   888   , ,ee 888 888 b   Y88D
" 888 888 888  "88 888 888 888 888 888  "88 888  888   888 888    888      YP  Y8P     "YeeP" "88 888 888 8b d,dP
"               ,  88P                   ,  88P
"              "8",P"                   "8",P"

source ~/.vim/config/status/sign_column.vim

" Always on rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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

NeoBundle 'mbbill/undotree'

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
let g:ctrlsf_ackprg = 'ack'
map <leader>a :CtrlSF<space>

"" Powerline
"" https://github.com/Lokaltog/powerline

"set rtp+=~/.powerline/powerline/bindings/vim
"let g:Powerline_symbols = 'fancy'

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




" vim-session
" https://github.com/xolox/vim-session
let g:session_autosave = 'no'

autocmd BufWrite *.sass silent! :%s/;$//g
"autocmd BufWrite *.styl silent! :%s/;\|://g

" Restore last editing position
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

" NERDTree binding
map <leader>ono :NERDTree<CR>
map <leader>onc :NERDTreeClose<CR>
map <leader>ont :NERDTreeToggle<CR>
map <leader>onf :NERDTreeFind<CR>

" Rails.vim
map <leader>orc :Econtroller<space>
map <leader>orm :Emodel<space>
map <leader>orv :Eview<space>

" Splits
map  <c-w>\| :vsp<CR>
map  <c-w>- :sp<cr>

map <leader>vv :set wrap<cr>
map <leader>vn :set nowrap<cr>

" https://github.com/drmikehenry/vim-fixkey

"NeoBundle 'drmikehenry/vim-fixkey'

" Resize of splits
nmap <M-S-h> :vertical-resize +5<cr>
nmap <M-S-j> :resize +2<cr>
nmap <M-S-k> :resize -2<cr>
nmap <M-S-l> :vertical-resize -5<cr>

noremap  <leader>q :q<cr>
noremap  <leader>Q :qall<cr>

nnoremap <c-u> viwU<esc>

map <leader>evrc :e ~/.vimrc<cr>
map <leader>etcf :e ~/.tmux.conf<cr>
map <leader>ezrc :e ~/.zshrc
"map <leader>epcf :CtrlP ~/.config/powerline<cr>

" Edit

NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/ShowTrailingWhitespace'
NeoBundle 'vim-scripts/DeleteTrailingWhitespace'

" smartpairs
" https://github.com/gorkunov/smartpairs.vim

NeoBundle 'gorkunov/smartpairs.vim'

NeoBundle 'dyng/ctrlsf.vim'

set nowritebackup
NeoBundleCheck
