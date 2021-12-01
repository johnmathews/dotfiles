" === KEYMAPS ===================
" ===============================

" === NORMAL MODE ===============

nnoremap <silent> <leader>ve :edit $MYVIMRC<CR>
nnoremap <silent> <leader>vc :edit ~/.vim/coc-settings.json<CR>
nnoremap <silent> <leader>vf :edit ~/.vim/ftplugin/<C-R>=&filetype<CR>.vim<CR>
nnoremap <silent> <leader>vr :source $MYVIMRC<CR>

nnoremap \ /
nnoremap \\ :nohlsearch<CR>
nnoremap // :nohlsearch<CR>
nnoremap # <NOP>
nnoremap * *``

nnoremap <leader>lw :set nowrap!<CR>
nnoremap <leader>ln :set relativenumber!<CR>
nnoremap <leader>ss :setlocal spell!<CR>

nnoremap ; :
nnoremap : ;

nnoremap <C-I>ww :wa<CR>
nnoremap <C-I>qq :qa<CR>
nnoremap qq :bp\|bd #<CR>
nnoremap <leader>Q :bufdo bdelete<CR>

" open a file even if it doesnt exist
nnoremap gf :edit <cfile><CR>

" query which color - what and which kind of syntax is this color? - wc
nnoremap wc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") ."> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Natural cursor movement over wrapped lines
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" open the current file in the default app
nnoremap <leader>x :!xdg-open %<CR><CR>

" Split navigations
nmap <leader>h  <C-W><C-H>
nmap <leader>j  <C-W><C-J>
nmap <leader>k  <C-W><C-K>
nmap <leader>l  <C-W><C-L>
nmap <leader>ww  <C-W><C-W>
nmap <leader>wq  <C-W><C-Q>

" split (pane) resize
nnoremap <C-K> :resize +2<CR>
nnoremap <C-J> :resize -2<CR>
nnoremap <C-H> :vertical resize +2<CR>
nnoremap <C-L> :vertical resize -2<CR>

" FUNCTIONS
nnoremap <silent> cc :call ToggleQuickFix()<cr>

" PLUGINS

"" NERDTREE
nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
nnoremap <leader>N :NERDTreeFind


"" VIM-TEST
nnoremap <silent> t<LEADER>n :TestNearest<CR>
nnoremap <silent> t<LEADER>f :TestFile<CR>
nnoremap <silent> t<LEADER>s :TestSuite<CR>
nnoremap <silent> t<LEADER>l :TestLast<CR>
nnoremap <silent> t<LEADER>g :TestVisit<CR>

nnoremap <F2> :TagbarToggle<CR>

"" ALE
" nnoremap <leader>at :ALEToggle<CR>
" nnoremap <leader>af :ALEFix<CR>
" nnoremap <silent> <leader>aj :ALENext<cr>
" nnoremap <silent> <leader>ak :ALEPrevious<cr>

"" FZF
nnoremap <silent> <Leader>e :Files<CR>
nnoremap <silent> <Leader>r :Buffers<CR>
nnoremap <silent> <Leader>t :Tags<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>la :BLines<CR>
nnoremap <silent> <Leader>ll :Lines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>gh :Helptags<CR>
nnoremap <silent> <Leader>gs :Snippets<CR>
nnoremap <silent> <Leader>gc :Commits<CR>
nnoremap <silent> <Leader>gbc :BCommits<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>



" === INSERT MODE ===============
inoremap jk <ESC>
inoremap jj <ESC>
inoremap <C-h> <C-O>b
inoremap <C-e> <C-o>de
inoremap <space> <C-O>u<space>


" === VISUAL MODE ==============
" Yank to clipboard
vnoremap <C-c> "+y

vnoremap ; :
vnoremap : ;

vnoremap < <gv
vnoremap > >gv

" Paste replace visual selection without copying it
vnoremap <leader>p "_dP
