Plug 'dracula/vim', { 'as': 'dracula' }
let g:dracula_italic = 0

augroup DraculaOverrides
    autocmd!
    highlight Normal ctermbg=None
    " autocmd ColorScheme dracula highlight vimAutoEvent ctermfg=blue cterm=cyan
    " autocmd ColorScheme dracula highlight vimFTOption ctermfg=blue cterm=cyan
    " autocmd ColorScheme dracula highlight vimSynType ctermfg=blue cterm=cyan
    " autocmd ColorScheme dracula highlight vimCommand ctermfg=green cterm=cyan
    " autocmd ColorScheme dracula highlight vimOption ctermfg=cyan cterm=green
    autocmd User PlugLoaded ++nested colorscheme dracula
augroup end
