" syntax.vim
" All configurations related to syntax highlighting.

" Syntastic

"NeoBundle 'scrooloose/syntastic'
"let g:syntastic_enable_signs=1

" CoffeeScript

NeoBundle 'kchmck/vim-coffee-script'

" Jade

NeoBundle 'digitaltoad/vim-jade'

" Stylus

NeoBundle 'wavded/vim-stylus'

" Markdown

NeoBundle 'tpope/vim-markdown'
au BufNewFile,BufRead *.md set colorcolumn=72,80

" Slim

NeoBundle 'slim-template/vim-slim'
NeoBundle 'gist:gf3/390929', {'name': 'html5.vim', 'script_type': 'after/syntax'}

au BufNewFile,BufRead *.skim set filetype=slim

" Commit message

au BufRead,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit
au BufRead,BufNewFile {COMMIT_EDITMSG} set colorcolumn=50,72,80

" JavaScript

NeoBundle 'pangloss/vim-javascript'

" React.js

NeoBundle 'mxw/vim-jsx'

" Clojure & ClojureScript

NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'kien/rainbow_parentheses.vim'

" Highlight cljx files
autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure

" Align subforms in column:
"
" (foo
"  bar
"  baz)
"
" ... instead of:
"
" (foo
"   bar
"   baz)
let g:clojure_align_subforms = 0

let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^describe', '^it']

" Fish

NeoBundle 'dag/vim-fish'

" Ansible

NeoBundle 'chase/vim-ansible-yaml'
