" https://www.vimfromscratch.com/articles/vim-for-python/
Plug 'dense-analysis/ale'

let g:ale_fix_on_save = 0

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc

nnoremap <silent>ai :ALEInfo<cr>
" https://github.com/dense-analysis/ale/blob/master/autoload/ale/toggle.vim
nnoremap <leader>at :ALEToggleBuffer<CR>
nnoremap <leader>ah :ALEHover<CR>
nnoremap <silent>ad :ALEDetail<CR>
nnoremap <leader>af :ALEFix<CR>
nnoremap <silent>aj :ALENext<cr>
nnoremap <silent>ak :ALEPrevious<cr>

augroup ALEColors
    autocmd!
    autocmd ColorScheme dracula highlight clear ALEErrorSign
    autocmd ColorScheme dracula highlight ALEErrorSign ctermfg=yellow guifg=yellow
    autocmd ColorScheme dracula highlight clear ALEWarningSign
    autocmd ColorScheme dracula highlight ALEWarningSign ctermfg=yellow guifg=darkyellow
    autocmd ColorScheme dracula highlight clear ALEWarning
    autocmd ColorScheme dracula highlight ALEWarning ctermfg=yellow guifg=yellow
    autocmd ColorScheme dracula highlight clear ALEError
    autocmd ColorScheme dracula highlight ALEError ctermfg=yellow guifg=yellow
    autocmd ColorScheme dracula highlight clear ALEErrorSignLineNr
    autocmd ColorScheme dracula highlight ALEErrorSignLineNr ctermfg=yellow guifg=yellow
augroup end
