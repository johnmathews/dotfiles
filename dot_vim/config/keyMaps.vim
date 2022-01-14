" keybinds for specific plugins are in the plugin file

nnoremap <silent> <leader>ve :edit $MYVIMRC<CR>
nnoremap <silent> <leader>vf :edit ~/.vim/ftplugin/<C-R>=&filetype<CR>.vim<CR>
nnoremap <silent> <leader>vr :autocmd User VimReload<CR>
nnoremap <silent> <leader>vc :edit ~/.vim/coc-settings.json<CR>



function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

call SetupCommandAbbrs('VG', 'e ~/.vim/config/general.vim')
call SetupCommandAbbrs('VK', 'e ~/.vim/config/keyMaps.vim')
call SetupCommandAbbrs('VF', 'e ~/.vim/config/functions.vim')

call SetupCommandAbbrs('VP', 'e ~/.vim/config/plugins.vim')
call SetupCommandAbbrs('VFT', 'e ~/.vim/config/plugins/floatterm.vim')

call SetupCommandAbbrs('AP', 'e ~/.vim/config/plugins/ale.vim')

call SetupCommandAbbrs('CP', 'e ~/.vim/config/plugins/coc.vim')
call SetupCommandAbbrs('CC', 'CocConfig')
call SetupCommandAbbrs('CD', 'CocDiagnostics')






nnoremap // :nohlsearch<CR>
nnoremap `` :nohlsearch<CR>
nnoremap ` /
nnoremap # <NOP>
nnoremap * *``

nnoremap <leader>lw :set nowrap!<CR>
nnoremap <leader>ln :set relativenumber!<CR>
nnoremap <leader>ss :setlocal spell!<CR>

nnoremap o o<ESC>
nnoremap O O<ESC>

nnoremap ; :
nnoremap : ;





" save everything
nnoremap <C-I>ww :wa<CR>

" quit everything
nnoremap <C-I>qq :FloatermKill!<CR><BAR>:qa<CR>

" close a buffer gracefully
nnoremap qq :bp\|bd #<CR>

" delete all buffers. make a blank slate.
nnoremap <leader>Q :bufdo bdelete<CR>

" open a file even if it doesnt exist
nnoremap gf :edit <cfile><CR>

" query which color - what and which kind of syntax is this color? - wc
nnoremap wc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") ."> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Natural cursor movement over wrapped lines
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" open the current file in the default app
" gx is mapped to open a url using the open-browser plugin
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



" === INSERT MODE ===============
inoremap jk <ESC>
inoremap jj <ESC>

"jump back one word
inoremap <C-h> <C-O>b
" delete the word infront of the cursor
inoremap <C-e> <C-o>de
" try to make each word an undo step
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
