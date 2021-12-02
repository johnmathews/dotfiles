Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='badwolf'
let g:airline_detect_crypt=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#searchcount#enabled = 0
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['error', 'warning', 'x', 'y', 'z']]

" airline plugin
au User AirlineAfterInit let g:airline_section_a = airline#section#create(['maxlinenr', '%3p%%', ' ', 'mode', ' ', 'crypt', ' ', 'paste', ' ',  'spell', ' ',  'iminsert'])
au User AirlineAfterInit let g:airline_section_y = airline#section#create([])
au User AirlineAfterInit let g:airline_section_z = airline#section#create(['obsession'])
au User AirlineAfterInit let g:airline_symbols.maxlinenr = ''
