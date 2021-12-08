" dont use this plugin, use the CoC addon instead
" the plugins interfere with each other so just turn this off
" and use the coc extension

Plug 'sirver/ultisnips', { 'for': ['markdown', 'md'] }
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-s>"
let g:UltiSnipsEditSplit="vertical"
