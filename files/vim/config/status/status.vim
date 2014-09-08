" vim-airline
" https://github.com/bling/vim-airline

NeoBundle 'bling/vim-airline'

let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 0

" Turn-off fancy symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Setup sections
let g:airline_section_b = ''
let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = '%{getcwd()}'
let g:airline_section_z = '%t'

" Do not show filename in section a on focus lost
let g:airline_inactive_collapse=0

" vim-bufferline

NeoBundle 'bling/vim-bufferline'

