" set this before plugins are loaded
" https://github.com/dense-analysis/ale#5iii-how-can-i-use-ale-and-cocnvim-together
let g:ale_disable_lsp = 0

call plug#begin('~/.vim/plugged')

source ~/.vim/config/plugins/ale.vim
source ~/.vim/config/plugins/coc.vim
" source ~/.vim/config/plugins/badwolf.vim
source ~/.vim/config/plugins/dracula.vim
source ~/.vim/config/plugins/nerdcommenter.vim
source ~/.vim/config/plugins/fzf.vim
source ~/.vim/config/plugins/ack.vim
source ~/.vim/config/plugins/airline.vim
source ~/.vim/config/plugins/autoclose.vim
source ~/.vim/config/plugins/ayncrun.vim
source ~/.vim/config/plugins/csv.vim
source ~/.vim/config/plugins/dockerfile.vim
source ~/.vim/config/plugins/flake8.vim
source ~/.vim/config/plugins/floatterm.vim
source ~/.vim/config/plugins/fugitive.vim
source ~/.vim/config/plugins/gitgutter.vim
source ~/.vim/config/plugins/indentline.vim
source ~/.vim/config/plugins/isort.vim
source ~/.vim/config/plugins/javascript.vim
source ~/.vim/config/plugins/jinja2-syntax.vim
source ~/.vim/config/plugins/jsbeautify.vim
source ~/.vim/config/plugins/markdown.vim
source ~/.vim/config/plugins/matchtagalways.vim
source ~/.vim/config/plugins/mundo.vim
source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/numbers.vim
source ~/.vim/config/plugins/obsession.vim
source ~/.vim/config/plugins/open-browser.vim
source ~/.vim/config/plugins/polyglot.vim
source ~/.vim/config/plugins/projectionist.vim
source ~/.vim/config/plugins/pylint.vim
source ~/.vim/config/plugins/repeat.vim
source ~/.vim/config/plugins/signature.vim
source ~/.vim/config/plugins/sneak.vim
source ~/.vim/config/plugins/snippets.vim
source ~/.vim/config/plugins/sql-syntax.vim
source ~/.vim/config/plugins/surround.vim
source ~/.vim/config/plugins/tabular.vim
source ~/.vim/config/plugins/tagbar.vim
source ~/.vim/config/plugins/targets.vim
source ~/.vim/config/plugins/test.vim
source ~/.vim/config/plugins/textobj-xmlattr.vim
" source ~/.vim/config/plugins/ultisnips.vim
source ~/.vim/config/plugins/unimpaired.vim
source ~/.vim/config/plugins/vagrant.vim
source ~/.vim/config/plugins/vimtex.vim
source ~/.vim/config/plugins/virtualenv.vim

let blacklist = ['html', 'md', 'wiki']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | source ~/.vim/config/plugins/rainbox.vim

" *** always `call plug#end()` at the very end ***
call plug#end()
