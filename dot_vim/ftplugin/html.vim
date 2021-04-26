autocmd BufNewFile,BufRead *.html setlocal nowrap
autocmd BufNewFile,BufRead *.html setlocal filetype=jinja

setlocal autoindent
setlocal cindent
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal textwidth=79
setlocal omnifunc=htmlcomplete#CompleteTags

" jump to matching tag when cursor is within angle brackets
runtime macros/matchit.vim

" ===== jsBeautify =====
nnoremap <buffer>  <c-f> :call HtmlBeautify()<cr>

let b:ale_linters = ['tidy', 'prettier']
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
let b:ale_warn_about_trailing_whitespace = 1

let g:indentLine_char_list = ['|', '¦', '┆', '┊', '⦙']
