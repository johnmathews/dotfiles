vim.cmd([[let g:python3_host_prog = expand('~/.pyenv/versions/3.10.0/envs/nvim/bin/python3')]])

require("options")
require("mappings")
require("autocmd")
require("functions")
require("plugins.lsp")
require("plugins")


local colorshemePicker = function()
  math.randomseed(os.time())
  -- local options = {'zephyr', 'monokai', 'sonokai', 'dracula'}
  local options = {'monokai', 'sonokai', 'dracula'}
  local result = options[ math.random( #options ) ]
  print("colorschme is " .. result .. "")
  vim.cmd('colorscheme ' .. result )
end

colorshemePicker()


vim.cmd( "autocmd BufNewFile,BufRead * setlocal formatoptions-=c")
vim.cmd( "autocmd BufNewFile,BufRead * setlocal formatoptions-=r")
vim.cmd( "autocmd BufNewFile,BufRead * setlocal formatoptions-=o")



-- keymaps
vim.cmd "nmap <leader>tld  <Plug>(toggle-lsp-diag)"
vim.cmd "nmap <leader>tls <Plug>(toggle-lsp-diag-signs)"
vim.cmd "nmap <leader>tlv <Plug>(toggle-lsp-diag-vtext)"

vim.cmd "nmap <leader>tlu <Plug>(toggle-lsp-diag-underline)"
vim.cmd "nmap <leader>tlp <Plug>(toggle-lsp-diag-update_in_insert)"

vim.cmd "nmap <leader>tldd <Plug>(toggle-lsp-diag-default)"
vim.cmd "nmap <leader>tldo <Plug>(toggle-lsp-diag-off)"
vim.cmd "nmap <leader>tldf <Plug>(toggle-lsp-diag-on)"
