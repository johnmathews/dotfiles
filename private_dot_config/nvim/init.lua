vim.cmd([[let g:python3_host_prog = expand('~/.pyenv/versions/3.10.0/envs/nvim/bin/python3')]])

require("options")
require("mappings")
require("autocmd")
require("functions")
require("plugins.lsp")
require("plugins")

-- local colorshemePicker = function()
--   math.randomseed(os.time())
--   -- local options = {'zephyr', 'monokai', 'sonokai', 'dracula'}
--   local options = {'monokai_pro', 'sonokai', 'zephyr'}
--   local result = options[ math.random( #options ) ]
--   print("colorschme is " .. result .. "")
--   vim.cmd('colorscheme ' .. result )
-- end
--
-- colorshemePicker()

vim.cmd('colorscheme monokai_pro' )
