
" augroup VimReload
"     autocmd!
"     autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
" augroup END


autocmd BufEnter,BufNew *.bq setl filetype=sql
autocmd BufNewFile,BufRead {.,}tmux*.local nested setf tmux
autocmd Filetype tex set updatetime=1000

" force quickfix window to be full width
au FileType qf wincmd J



