" dont use this plugin, use the CoC addon instead
" the plugins interfere with each other so just turn this off
" and use the coc extension

Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips', { 'for': ['markdown', 'md'] }

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-s>"
let g:UltiSnipsEditSplit="vertical"
