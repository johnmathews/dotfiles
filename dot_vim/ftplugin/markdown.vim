setlocal smarttab
setlocal softtabstop=4
setlocal noautoindent 			" if previous line is indented, don't make new line also indented

" filetype plugin indent on
setlocal tabstop=4
setlocal shiftwidth=4 			" this is how many spaces a tab is.
setlocal expandtab
setlocal linebreak 							" Wrap lines at convenient points, avoid wrapping a line in the middle of a word.

setlocal nowrap
setlocal scrolloff=3							" The number of screen lines to keep above and below the cursor

setlocal textwidth=80
setlocal colorcolumn=0
highlight ColorColumn ctermbg=red ctermfg=red guifg=red guibg=darkcyan

" add text width to autoformat options
" setlocal formatoptions+=t

setlocal spell
setlocal spelllang=en
setlocal spellfile=$HOME/.dotfiles/vim/spell/en.utf-8.add

"]s [s next previos spelling error
" zg - add word to list of good words
" zug - undo zg
" zw - make the word a bad word
" zuw - undo zw
" z= - suggest corrections
" spellr - repeat the last z= correction for all matches of the replaced word in the current window
" <C-X> in insert mode - find suggestions for a bad word. use <C-P> or <C-N> to make a choice

" fix spelling with first option
" nnoremap <leader>ff :1z=<CR>

" format paragraph
nnoremap <leader>fp vipgw
vnoremap <leader>fp gw

" show text normally. no folding
setlocal conceallevel=0

let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
let b:ale_warn_about_trailing_whitespace = 1


" reveal concealed text when cursor is on it
" setlocal concealcursor-=n

" show tab chars, EOL spaces, but why not $?
setlocal list

" don't insert 2 spaces after a '.','?' or '!'
setlocal nojoinspaces

" footnotes when writing pelican blog posts
inoremap [r [ref][/ref]<ESC>5hi

" select some text and make it a hyperlink
vnoremap ml "lxa[(F["lpf("lp

" make text bold
nnoremap <buffer> <leader>mb ebi*<ESC>ea*<ESC>
vmap <buffer> <leader>mb c**<ESC>gcP

" make text italic
nnoremap <buffer> <leader>mi ebi_<ESC>ea_<ESC>
vmap <buffer> <leader>mi c__<ESC>gcP

" make code block
nnoremap <buffer> <leader>mc ebi`<ESC>ea`<ESC>
vmap <buffer> <leader>mc c``<ESC>gcP

" Stop telling me underscores are errors:
syn match markdownError "\w\@<=\w\@="

" Rainbow parenthesis turned off
let g:rainbow_active = 0


" keep at bootom of file - reload vimrc to make syntax highlighting work
" syntax sync fromstart
