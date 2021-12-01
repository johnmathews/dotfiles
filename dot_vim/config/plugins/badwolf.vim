Plug 'sjl/badwolf', { 'as': 'badwolf' }
let g:badwolf_html_link_underline = 1
let g:badwolf_css_props_highlight = 1

augroup BadwolfOverides
    autocmd!

    autocmd User PlugLoaded ++nested colorscheme badwolf
    autocmd User PlugLoaded ++nested highlight clear SpellBad
    autocmd User PlugLoaded ++nested highlight clear SpellCap
    autocmd User PlugLoaded ++nested highlight clear SpellLocal
    autocmd User PlugLoaded ++nested highlight clear SpellRare
    autocmd User PlugLoaded ++nested highlight SpellBad cterm=underline ctermfg=yellow
    autocmd User PlugLoaded ++nested highlight SpellCap cterm=underline ctermfg=red
    autocmd User PlugLoaded ++nested highlight SpellLocal cterm=underline ctermfg=blue
    autocmd User PlugLoaded ++nested highlight SpellRare cterm=underline ctermfg=gray

    autocmd User PlugLoaded ++nested highlight Comment ctermfg=cyan guifg=cyan
    autocmd User PlugLoaded ++nested highlight pythonComment ctermfg=cyan guifg=cyan
    autocmd User PlugLoaded ++nested highlight LineNr ctermfg=cyan guifg=cyan
    autocmd User PlugLoaded ++nested highlight Visual term=reverse guibg=darkgreen
    autocmd User PlugLoaded ++nested highlight nontext term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
    autocmd User PlugLoaded ++nested highlight vimLineComment term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
    autocmd User PlugLoaded ++nested highlight specialKey term=bold ctermfg=Cyan guifg=#80a0ff gui=bold

    autocmd User PlugLoaded ++nested highlight Search guibg=purple guifg='NONE'
    autocmd User PlugLoaded ++nested highlight Search cterm=none ctermbg=green ctermfg=black
    autocmd User PlugLoaded ++nested highlight BadWhitespace ctermbg=red guibg=darkred
augroup end


