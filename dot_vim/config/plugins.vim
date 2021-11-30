" === PLUGINS ===================

source ~/.vim/config/plugins/fzf.vim
source ~/.vim/config/plugins/badwolf.vim


source ~/.vim/config/plugins/jinja2-syntax.vim
source ~/.vim/config/plugins/matchtagalways.vim

source ~/.vim/config/plugins/vagrant.vim
source ~/.vim/config/plugins/sql-syntax.vim

source ~/.vim/config/plugins/sneak.vim

source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/polyglot.vim


source ~/.vim/config/plugins/targets.vim
source ~/.vim/config/plugins/numbers.vim

" syntax and snippets for Dockerfile files
Plug 'ekalinin/Dockerfile.vim'

" visualizes the Vim undo tree - a fork with additional features of https://docs.stevelosh.com/gundo.vim/
Plug 'simnalamburt/vim-mundo'
nnoremap <silent> <C-S-u> :MundoToggle<CR>

"run shell commands async in vim8"
Plug 'skywind3000/asyncrun.vim'
let g:asyncrun_open = 10

Plug 'airblade/vim-gitgutter'

" When using :python or :!python, access the packages in venv
" :VirtualEnvList
" :virtualenvactivate <tab>
Plug 'jmcantrell/vim-virtualenv'

" sidebar that displays the ctags-generated tags of the current file, ordered by their scope
Plug 'majutsushi/tagbar'

Plug 'janko-m/vim-test'
let test#strategy = "asyncrun_background"
let test#python#runner = 'pytest'
let test#python#pytest#options = '-x'
let test#vim#term_position = "belowright"

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-s>"
let g:UltiSnipsEditSplit="vertical"

" set before plugins are loaded https://github.com/dense-analysis/ale#5iii-how-can-i-use-ale-and-cocnvim-together
let g:ale_disable_lsp = 1
" https://www.vimfromscratch.com/articles/vim-for-python/
Plug 'dense-analysis/ale'
let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc


Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInfo is good for testing status
" :CocConfig - opens the main config file
" :CocList extensions management
" :CocUninstall <coc-highlight>
" to see which extensions are installed: ~/.config/coc/extensions/package.json


Plug 'maksimr/vim-jsbeautify'
Plug 'townk/vim-autoclose'
Plug 'fisadev/vim-isort'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
Plug 'kshenoy/vim-signature'

" Rainbow parenthesis
" let blacklist = ['html', 'md', 'wiki']
" autocmd BufWritePre * if index(blacklist, &ft) < 0 | Plug 'luochen1990/rainbow'
" let g:rainbow_active = 1
" let g:rainbow_conf = {
"     \'guifgs': ['green', 'magenta1', 'gold', 'red', 'deepskyblue'],
"     \'guis': ['bold','standout','undercurl','italic','strikethrough']
"     \}

" Latex Vimtex
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:livepreview_previewer = 'open -a Preview'
let g:tex_IgnoredWarnings =
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n"
let g:Tex_IgnoreLevel = 8


Plug 'mileszs/ack.vim'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'chrisbra/csv.vim'

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

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 0
let g:NERDTrimTrailingWhitespace = 1

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" tabular is required by vim-markdown
let g:vim_markdown_fenced_languages = ['python=py']
let g:vim_markdown_follow_anchor = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 4
let g:vim_markdown_strikethrough = 1

Plug 'nvie/vim-flake8'
Plug 'vim-scripts/pylint.vim'

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

