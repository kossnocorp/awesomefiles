" vim-signify
" https://github.com/mhinz/vim-signify

NeoBundle 'mhinz/vim-signify'

let g:signify_disable_by_default=0

hi SignColumn ctermbg = 7

let g:signify_vcs_list = ['git']
let g:signify_sign_weight = 'NONE'

let g:signify_sign_color_ctermbg = 231
let g:signify_sign_color_ctermfg_add = 70
let g:signify_sign_color_ctermfg_delete = 160
let g:signify_sign_color_ctermfg_change = 100

let g:signify_sign_add = '+'
let g:signify_sign_delete = '⎵'
let g:signify_sign_change = '⁓'
let g:signify_sign_change_delete = '±'
let g:signify_sign_delete_first_line = '⎴'
