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
setlocal nowrap

augroup PreviewAutocmds
  autocmd!
  autocmd WinEnter * if &previewwindow | set syntax=python | endif
augroup END

if exists('+colorcolumn')
    setlocal colorcolumn=121
else
    au! BufEnter <buffer> match ColorColumn /\%121v.*/
endif


" ====================== ALE ================================
let g:ale_python_flake8_options = '--max-line-length=88'

" linters: ['flake8', 'mypy', 'pylint', 'pyright']
" flake8 if pandas, else black
let b:ale_linters = ['flake8']
let b:ale_fixers = ['autopep8', 'autoflake', 'yapf', 'autoimport', 'reorder-python-imports', 'isort', 'remove_trailing_lines', 'trim_whitespace', 'add_blank_lines_for_python_control_statements']
let b:ale_warn_about_trailing_whitespace = 1

" -------------- VIRTUAL_ENV ACTIVATION ================
py3 << EOF
import os
import sys

if 'VIRTUAL_ENV' in os.environ:
  print("VIRTUAL_ENV is found!")

  project_base_dir = os.environ['VIRTUAL_ENV']
  print(f"{project_base_dir =}")

  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')

  exec(open(activate_this).read(), dict(__file__=activate_this))
EOF

" ============ AIRLINE ================================
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'


" ========== print variable and its value ===============
vnoremap <buffer> <localleader>p y<esc>oprint(f"{<esc>gpa = }")<ESC>
vnoremap <buffer> <localleader>o y<esc>oprint(f'''{<esc>gpa =<CR><BS><BS><BS>}''')<ESC>
nnoremap <buffer> <Localleader>p <esc>oprint(f"{<esc>gpa = }")<ESC>
nnoremap <buffer> <Localleader>o <esc>oprint(f"''{<esc>gpa =<CR><BS><BS><BS>}''')<ESC>

" ========== log variable and its value ================
vnoremap <buffer> <localleader>l y<esc>ologger.info(f"{<esc>gpa = }")<ESC>
nnoremap <buffer> <Localleader>l <esc>ologger.info(f"{<esc>gpa = }")<ESC>

