setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal smarttab

" ===== jsBeautify =====
nnoremap <buffer>  <c-f> :call JsonBeautify()<cr>

" jsonc is a fileformat that supports comments in json. but maybe its a
" different file type? "
syntax match Comment +\/\/.\+$+
