vim.api.nvim_exec([[
  augroup foo
    au!
    "autocmd BufEnter * set formatoptions=jqlt
    autocmd BufEnter * if &syntax == '' | :filetype detect | endif
  augroup END
  ]], false)

-- highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

-- .bq → sql
vim.cmd([[
  autocmd BufEnter,BufNew *.bq setl filetype=sql
]])

-- tmux
vim.cmd([[
  autocmd BufNewFile,BufRead {.,}tmux*.local nested setf tmux
]])

vim.cmd([[
  autocmd Filetype tex set updatetime=1000
]])

-- quiickfix window → force it to be full width
vim.cmd([[
  autocmd FileType qf wincmd J
]])

-- reload the vimrc and any files that are soured within it (this is what the nested command does)
-- called after writing the buffer containing $MYVIMRC and also manually triggered by <Leader>VR
-- also needs to be run once after opening nvim in order to make colors work for nvim-tree and bufferline
vim.cmd([[
  augroup VimReload
      autocmd!
      autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
      autocmd BufEnter * nested source $MYVIMRC
  augroup END
]])
