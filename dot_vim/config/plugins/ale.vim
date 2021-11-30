" set before plugins are loaded https://github.com/dense-analysis/ale#5iii-how-can-i-use-ale-and-cocnvim-together
let g:ale_disable_lsp = 1
" https://www.vimfromscratch.com/articles/vim-for-python/
Plug 'dense-analysis/ale'
let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc
