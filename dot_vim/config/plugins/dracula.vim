Plug 'dracula/vim', { 'as': 'dracula' }
let g:dracula_italic = 0

" :so $VIMRUNTIME/syntax/colortest.vim - will show all the colors
augroup DraculaOverrides
    autocmd!
    highlight Normal ctermbg=None
    autocmd ColorScheme dracula highlight vimAutoEvent ctermfg=blue
    autocmd ColorScheme dracula highlight vimFTOption ctermfg=green
    autocmd ColorScheme dracula highlight vimSynType ctermfg=blue
    autocmd ColorScheme dracula highlight vimCommand ctermfg=green
    autocmd ColorScheme dracula highlight vimOption ctermfg=cyan
    autocmd ColorScheme dracula highlight vimLineComment ctermfg=yellow
    autocmd ColorScheme dracula highlight vimComment ctermfg=yellow
    autocmd User PlugLoaded ++nested colorscheme dracula
    autocmd User PlugLoaded ++nested highlight LineNr ctermfg=lightyellow guifg=lightyellow
    "white lightcyan lightgray lightgreen lightyellow"
augroup end
