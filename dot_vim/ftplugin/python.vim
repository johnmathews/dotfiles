" F2 toggle Tagbar
" F3 ALE fixers
" F4 create additional tag file for python libraries in venv
" F5 run python code (venv aware)
" F7 flake8 formatting check

setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal smarttab

setlocal textwidth=119
setlocal autoindent
setlocal fileformat=unix
setlocal nowrap

au! BufEnter <buffer> match BadWhitespace /\s\+$/

" airline
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

" python only, but must be in .vimrc
" python with virtualenv support
" py3 is a builtin vim command
" exec is a std lib py3 command to exec a file

py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(open(activate_this).read(), dict(__file__=activate_this))
EOF

"========== create the additioanl tags file ==========
nnoremap <F4> :!ctags -V --exclude=.mypy_cache/** -R -f $VIRTUAL_ENV/tags  $VIRTUAL_ENV/lib/python3.8/ <CR>

set tags+=tags,$VIRTUAL_ENV/tags

" ========== ALE ==========
" can't have pylint aswell because # noqa comments throw errors otherwise
" linters: ['flake8', 'mypy', 'pylint', 'pyright']
let b:ale_linters = ['flake8']
let b:ale_fixers = ['isort', 'remove_trailing_lines', 'trim_whitespace', 'autopep8']
let b:ale_warn_about_trailing_whitespace = 1

" ========== print variable and its value ==========
vnoremap <buffer> <localleader>p y<esc>oprint(f"{<esc>gpa = }")<ESC>
vnoremap <buffer> <localleader>o y<esc>oprint(f'''{<esc>gpa =<CR><BS><BS><BS>}''')<ESC>
nnoremap <buffer> <Localleader>p <esc>oprint(f"{<esc>gpa = }")<ESC>
nnoremap <buffer> <Localleader>o <esc>oprint(f"''{<esc>gpa =<CR><BS><BS><BS>}''')<ESC>

" ========== log variable and its value ==========
vnoremap <buffer> <localleader>l y<esc>ologger.info(f"{<esc>gpa = }")<ESC>
nnoremap <buffer> <Localleader>l <esc>ologger.info(f"{<esc>gpa = }")<ESC>


" ========== other stuff ==========
nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<CR>

if exists('+colorcolumn')
    setlocal colorcolumn=121
else
    au! BufEnter <buffer> match ColorColumn /\%121v.*/
endif

" YouCompleteMe "
" let b:ycm_hover = { 'command': 'GetDoc', 'syntax': &syntax }

augroup PreviewAutocmds
  autocmd!
  autocmd WinEnter * if &previewwindow | set syntax=python | endif
augroup END
