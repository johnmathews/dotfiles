" === KEYMAPS ===================
" ===============================


" === COC =======================
nnoremap <C-X> <Plug>(coc-definition)
nnoremap <C-N> <Plug>(coc-rename)
nnoremap <leader>d :call <SID>show_documentation()<CR>

" navigate the completion list
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" scroll floating windows/popups 
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to format on enter
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" === NORMAL MODE ===============

" query which color - what and which kind of syntax is this color? - wc
nnoremap wc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") ."> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <silent> <leader>ve :e $MYVIMRC<CR>
nnoremap <silent> <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>vf :e ~/.vim/ftplugin/<C-R>=&filetype<CR>.vim<CR>

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

" Natural cursor movement over wrapped lines
nnoremap j gj
nnoremap k gk

" Split navigations
nmap <Leader>h  <C-W><C-H>
nmap <Leader>j  <C-W><C-J>
nmap <Leader>k  <C-W><C-K>
nmap <Leader>l  <C-W><C-L>
nmap <Leader>ww  <C-W><C-W>
nmap <Leader>wq  <C-W><C-Q>

" split (pane) resize
nnoremap <C-k> :resize +2<CR>
nnoremap <C-j> :resize -2<CR>
nnoremap <C-h> :vertical resize +2<CR>
nnoremap <C-l> :vertical resize -2<CR>

" FUNCTIONS
nnoremap <silent> cc :call ToggleQuickFix()<cr>

" PLUGINS

nnoremap <Leader>n :NERDTreeToggle<CR>

"" VIM-TEST
nnoremap <silent> t<LEADER>n :TestNearest<CR>
nnoremap <silent> t<LEADER>f :TestFile<CR>
nnoremap <silent> t<LEADER>s :TestSuite<CR>
nnoremap <silent> t<LEADER>l :TestLast<CR>
nnoremap <silent> t<LEADER>g :TestVisit<CR>

nnoremap <F2> :TagbarToggle<CR>

"" ALE
nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>af :ALEFix<CR>
nnoremap <silent> <leader>aj :ALENext<cr>
nnoremap <silent> <leader>ak :ALEPrevious<cr>

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
inoremap <C-h> <C-O>b
inoremap <C-e> <C-o>de
inoremap <space> <C-O>u<space>


" === VISUAL MODE ==============
" Yank to clipboard
vnoremap <C-c> "+y

vnoremap ; :
vnoremap : ;
