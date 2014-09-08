" 888                         888
" 888      e88 88e   e88 88e  888 ee
" 888     d888 888b d888 888b 888 P
" 888  ,d Y888 888P Y888 888P 888 b
" 888,d88  "88 88"   "88 88"  888 8b

"NeoBundle 'bling/vim-bufferline'             " Show recently used buffers

NeoBundle 'mkitt/tabline.vim'

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

autocmd InsertEnter * hi CursorLine ctermbg=7
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

hi CursorLine ctermbg=230

"au FocusLost * hi Normal ctermbg=7
"au FocusLost * hi CursorLine ctermbg=7

"au FocusGained * hi Normal ctermbg=15
"au FocusGained * hi CursorLine ctermbg=230
