" Editor navigation

" Disable arrow key for navigation
map  <up> <nop>
map  <down> <nop>
map  <left> <nop>
map  <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
cmap <up> <nop>
cmap <down> <nop>
cmap <left> <nop>
cmap <right> <nop>

" Command mode navigation
cnoremap <C-f> <right>
cnoremap <C-b> <left>
cnoremap <C-a> <home>

" Vim Tmux Navigator
" http://robots.thoughtbot.com/post/53022241323/seamlessly-navigate-vim-and-tmux-splits
" https://github.com/christoomey/vim-tmux-navigator

NeoBundle 'christoomey/vim-tmux-navigator'
