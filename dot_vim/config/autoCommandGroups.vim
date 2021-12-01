
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END


autocmd BufEnter,BufNew *.bq setl filetype=sql

au BufNewFile,BufRead {.,}tmux*.local nested setf tmux

" force quickfix window to be full width
au FileType qf wincmd J

autocmd Filetype tex set updatetime=1000

augroup MyCustomColorsGroup
    autocmd!
    autocmd ColorScheme * call SpellCheckHighlights()
    autocmd ColorScheme badwolf call CustomColors()
augroup END

" airline plugin
au User AirlineAfterInit let g:airline_section_a = airline#section#create(['maxlinenr', '%3p%%', ' ', 'mode', ' ', 'crypt', ' ', 'paste', ' ',  'spell', ' ',  'iminsert'])
au User AirlineAfterInit let g:airline_section_y = airline#section#create([])
au User AirlineAfterInit let g:airline_section_z = airline#section#create(['obsession'])
au User AirlineAfterInit let g:airline_symbols.maxlinenr = ''
