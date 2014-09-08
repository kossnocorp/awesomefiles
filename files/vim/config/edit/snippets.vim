" UltiSnips
" https://github.com/SirVer/ultisnips

NeoBundle 'SirVer/ultisnips'

autocmd InsertEnter *.js UltiSnipsAddFiletypes javascript
autocmd InsertEnter *.jsx UltiSnipsAddFiletypes jsx.javascript
autocmd InsertEnter *.styl UltiSnipsAddFiletypes stylus

let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'

let g:UltiSnipsExpandTrigger = '<S-Tab>'
let g:UltiSnipsJumpForwardTrigger = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger = '<C-p>'
let g:UltiSnipsEditSplit = 'vertical'
