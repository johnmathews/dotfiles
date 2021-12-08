" https://www.vimfromscratch.com/articles/vim-for-python/
Plug 'dense-analysis/ale'

let g:ale_fix_on_save = 0

let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc

nnoremap <silent>ai :ALEInfo<cr>
nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>ah :ALEHover<CR>
nnoremap <silent>ad :ALEDetail<CR>
nnoremap <leader>af :ALEFix<CR>
nnoremap <silent>aj :ALENext<cr>
nnoremap <silent>ak :ALEPrevious<cr>
