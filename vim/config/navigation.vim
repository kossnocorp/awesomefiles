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
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
