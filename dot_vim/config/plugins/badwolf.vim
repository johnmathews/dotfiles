Plug 'sjl/badwolf', { 'as': 'badwolf' }
let g:badwolf_html_link_underline = 1
let g:badwolf_css_props_highlight = 1

augroup BadwolfOverides
    autocmd!
    autocmd ColorScheme badwolf highlight Comment ctermfg=cyan guifg=cyan
    autocmd ColorScheme badwolf highlight pythonComment ctermfg=cyan guifg=cyan
    autocmd ColorScheme badwolf highlight LineNr ctermfg=cyan guifg=cyan
    autocmd ColorScheme badwolf highlight Visual term=reverse guibg=darkgreen
    autocmd ColorScheme badwolf highlight nontext term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
    autocmd ColorScheme badwolf highlight vimLineComment term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
    autocmd ColorScheme badwolf highlight specialKey term=bold ctermfg=Cyan guifg=#80a0ff gui=bold

    autocmd ColorScheme badwolf highlight Search guibg=purple guifg='NONE'
    autocmd ColorScheme badwolf highlight Search cterm=none ctermbg=green ctermfg=black
    autocmd ColorScheme badwolf highlight BadWhitespace ctermbg=red guibg=darkred

    autocmd User PlugLoaded ++nested colorscheme badwolf
augroup end
