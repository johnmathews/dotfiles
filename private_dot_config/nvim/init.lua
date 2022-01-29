vim.cmd("let g:python3_host_prog = expand('~/.pyenv/versions/3.10.0/envs/nvim/bin/python3')")

require("options")
require("plugins.lsp")
require("plugins")

require("functions")
require("mappings")
require("autocmd")

-- sonokai, zephyr, monokai_pro
vim.cmd("colorscheme monokai_pro")
