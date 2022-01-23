vim.cmd([[let g:python3_host_prog = expand('~/.pyenv/versions/3.10.0/envs/nvim/bin/python3')]])

require("options")
require("mappings")
require("autocmd")
require("functions")
require("plugins.lsp")
require("plugins")

vim.cmd([[colorscheme dracula]])
