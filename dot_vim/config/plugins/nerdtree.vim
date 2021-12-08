Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

let g:plug_window = 'noautocmd vertical topleft new'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" prevent lag
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeHighlightCursorline = 0

let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
let g:NERDTreeSyntaxEnabledExtensions = ['bq', 'sql', 'txt', 'vim', 'py', 'js', 'css', 'html'] " enabled extensions with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors
