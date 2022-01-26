-- Prevent new line to also start with a comment
vim.api.nvim_exec(
	[[
  augroup NewLineComment
    au!
    autocmd BufEnter * set formatoptions=jql
  augroup END
  ]],
	false
)

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
vim.cmd([[
  augroup VimReload
      autocmd!
      autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
  augroup END
]])

-- ==========================================================================================================
-- https://superuser.com/questions/1225943/detect-language-of-new-files-in-vim-refresh-syntax-highlightin

-- 2021-12-04:
-- I don't know why, but after reloading vimrc, subsequent buffers don't have a filetype
-- and therefore don't have syntax highlighting. This solves that to reproduce: 1. open vim, 2. open
-- ~/.vimrc 3. reload vimcrc 4. open another .vim file (:VP)"
vim.cmd([[
  autocmd BufEnter * if &syntax == '' | :filetype detect | endif
]])
