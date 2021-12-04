" reload the vimrc after vimrc is saved
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END


" .bq → sql
autocmd BufEnter,BufNew *.bq setl filetype=sql

" tmux
autocmd BufNewFile,BufRead {.,}tmux*.local nested setf tmux

" .tex → sql
autocmd Filetype tex set updatetime=1000

" quickfix window → force it to be full width
autocmd FileType qf wincmd J
