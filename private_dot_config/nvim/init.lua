vim.cmd([[let g:python3_host_prog = expand('~/.pyenv/versions/3.10.0/envs/nvim/bin/python3')]])

require("options")
require("mappings")
require("autocmd")
require("functions")
require("plugins.lsp")
require("plugins")

vim.cmd([[colorscheme dracula]])

-- nvim Tree
-- workaround https://github.com/kyazdani42/nvim-tree.lua/issues/767
vim.g.nvim_tree_respect_buf_cwd = 1
require("plugins/nvim-tree")
