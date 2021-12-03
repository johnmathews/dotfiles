Plug 'dracula/vim', { 'as': 'dracula' }
let g:dracula_italic = 0

augroup DraculaOverrides
    autocmd!
    highlight Normal ctermbg=None
    autocmd ColorScheme dracula highlight vimAutoEvent ctermfg=blue
    autocmd ColorScheme dracula highlight vimFTOption ctermfg=green
    autocmd ColorScheme dracula highlight vimSynType ctermfg=blue
    autocmd ColorScheme dracula highlight vimCommand ctermfg=green
    autocmd ColorScheme dracula highlight vimOption ctermfg=cyan
    autocmd User PlugLoaded ++nested colorscheme dracula
augroup end
