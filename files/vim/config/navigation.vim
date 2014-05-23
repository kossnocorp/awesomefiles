

""" Splits


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

NeoBundle 'gcmt/wildfire.vim'


""" Files
"
" ctrlp.vim and plugins
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/ctrlp-mark'
NeoBundle 'mellort/ctrlp-command'
NeoBundle 'JazzCore/ctrlp-cmatcher'
NeoBundle 'jasoncodes/ctrlp-modified.vim'

"let g:ctrlp_custom_ignore = '\v[\/]\.(node_modules|bower_components)$'

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
map <leader>opd :CtrlPDir<cr>
map <leader>opl :CtrlPLine<cr>
map <leader>opff :CtrlPChangeAll<cr>
map <leader>opfb :CtrlPChange<cr>
" Seems like it ↓ doesn't work
map <leader>opm :CtrlPModified<cr>

" EasyMotion

NeoBundle 'Lokaltog/vim-easymotion'

" Integrate n/N navigation with EasyMotion
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
