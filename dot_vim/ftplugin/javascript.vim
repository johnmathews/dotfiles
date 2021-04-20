setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal smarttab

setlocal textwidth=79
setlocal autoindent
setlocal fileformat=unix
setlocal colorcolumn=80
setlocal nowrap

" ========== ALE ==========
let b:ale_linters = ['eslint', 'prettier']
let b:ale_fixers = ['eslint', 'prettier', 'importjs', 'prettier_eslint', 'standard', 'remove_trailing_lines', 'trim_whitespace']
let b:ale_warn_about_trailing_whitespace = 1
let b:ale_pattern_options = {'\.min.js$': {'ale_enabled': 0}}


" ===== jsBeautify =====
nnoremap <buffer>  <c-f> :call JsBeautify()<cr>

" ==== console.log() something =====
vnoremap <buffer> <localleader>p y<esc>oconsole.log(`<esc>gpa: ${<esc>gpa}`);<ESC>
nnoremap <buffer> <Localleader>p <esc>oconsole.log(`<esc>gpa: ${<esc>gpa}`);<ESC>
