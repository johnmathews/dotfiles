setlocal tabstop=2
setlocal softtabstop=2
setlocal expandtab
setlocal shiftwidth=2
setlocal smarttab

" ===== jsBeautify =====
nnoremap <buffer>  <c-f> :call JsonBeautify()<cr>

" jsonc is a fileformat that supports comments in json. but maybe its a
" different file type? "
syntax match Comment +\/\/.\+$+
