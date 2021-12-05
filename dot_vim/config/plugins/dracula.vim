Plug 'dracula/vim', { 'as': 'dracula' }
let g:dracula_italic = 0

" this is a comment that is very very long this is a comment that is very very lonthis is
" a comment that is very very lonthis is a comment that is very very longgggthis is a 
" comment that is very very long

" :so $VIMRUNTIME/syntax/colortest.vim - will show all the colors
augroup DraculaOverrides
    autocmd!
    highlight Normal ctermbg=None
    autocmd ColorScheme dracula highlight vimAutoEvent ctermfg=blue
    autocmd ColorScheme dracula highlight vimFTOption ctermfg=green
    autocmd ColorScheme dracula highlight vimSynType ctermfg=blue
    autocmd ColorScheme dracula highlight vimCommand ctermfg=green
    autocmd ColorScheme dracula highlight vimOption ctermfg=cyan
    " autocmd ColorScheme dracula highlight comment ctermfg=darkcyan
    autocmd User PlugLoaded ++nested colorscheme dracula
augroup end
