local map = vim.api.nvim_set_keymap
default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

-- map the leader key
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "

map("n", "<leader>ve", ":edit $MYVIMRC<CR>", default_options)
map("n", "<leader>vf", ":edit ~/.config/nvim/ftplugin/<C-R>=&filetype<CR>.vim<CR>", default_options)
map("n", "<leader>vr", ":autocmd User VimReload<CR>", default_options)
map("n", "<leader>vc", ":edit ~/.vim/coc-settings.json<CR>", default_options)

-- map the leader key
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "

-- Deal with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_options)
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_options)

-- better indenting
map("v", "<", "<gv", default_options)
map("v", ">", ">gv", default_options)

-- paste over currently selected text without yanking it
map("v", "p", "\"_dP", default_options)

-- Tab switch buffer
-- map("n", "<TAB>", ":bnext<CR>", default_options)
-- map("n", "<S-TAB>", ":bprevious<CR>", default_options)

-- Searching
map("n", "//", ":nohlsearch<CR>", default_options)
map("n", "``", ":nohlsearch<CR>", default_options)
map("n", "`", "/", default_options)
map("n", "#", "<NOP>", default_options)
map("n", "*", "*``", default_options)


map("n", "<leader>lw", ":set nowrap!<CR>", default_options)
map("n", "<leader>ln", ":set relativenumber!<CR>", default_options)
map("n", "<leader>ss", ":setlocal spell!<CR>", default_options)


map("n", "o", "o<ESC>", default_options)
map("n", "O", "O<ESC>", default_options)

map("n", ";", ":", default_options)
map("n", ":", ";", default_options)

map("n", "<C-I>ww", ":wa<CR>", default_options)
--map("n", "<C-I>qq", ":FloatermKill!<CR><BAR>:qa<CR>", default_options)
map("n", "<C-I>qq", ":qa<CR>", default_options)
map("n", "qq", ":bp|bd #<CR>", default_options)
map("n", "<leader>Q", ":bufdo bdelete<CR>", default_options)
map("n", "gf", ":edit <cfile><CR>", default_options)

-- query which color - what and which kind of syntax is this color? - wc
map("n", "wc", ":echo 'hi<' . synIDattr(synID(line('.'),col('.'),1),'name') . '> trans<' . synIDattr(synID(line('.'),col('.'),0),'name') .'> lo<' . synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'name') . '>'<CR>", default_options)


-- Natural cursor movement over wrapped lines
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_options)
map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_options)



-- open the current file in the default app
-- gx is mapped to open a url using the open-browser plugin
map("n", "<leader>x", ":!xdg-open %<CR><CR>", default_options)

-- Split navigations
map("n", "<leader>h", "<C-W><C-H>", default_options)
map("n", "<leader>j", "<C-W><C-J>", default_options)
map("n", "<leader>k", "<C-W><C-K>", default_options)
map("n", "<leader>l", "<C-W><C-L>", default_options)
map("n", "<leader>ww", "<C-W><C-W>", default_options)
map("n", "<leader>wq", "<C-W><C-Q>", default_options)


-- split (pane) resize
map("n", "<C-K>", ":resize +2<CR>", default_options)
map("n", "<C-J>", ":resize -2<CR>", default_options)
map("n", "<C-H>", ":vertical resize +2<CR>", default_options)
map("n", "<C-L>", ":vertical resize -2<CR>", default_options)

-- FUNCTIONS
map("n", "cc", ":call ToggleQuickFix()<CR>", default_options)

----- INSERT MODE ---------------
map("i", "jk", "<ESC>", default_options)
map("i", "jj", "<ESC>", default_options)

--jump back one word
map("i", "<C-h>", "<C-o>b", default_options)
-- delete the word infront of the cursor
map("i", "<C-e>", "<C-o>de", default_options)
-- try to make each word an undo step
-- map("i", "<SPACE>", "<C-o>u<SPACE>", default_options)

----- VISUAL MODE --------------
-- Yank to clipboard
map("v", "<C-c>", "+y", default_options)

map("v", ";", ":", default_options)
map("v", ":", ";", default_options)

map("v", "<", "<gv", default_options)
map("v", ">", ">gv", default_options)

-- Paste replace visual selection without copying it
map("v", "<LEADER>p", "_dp", default_options)
