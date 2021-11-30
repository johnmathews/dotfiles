Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInfo is good for testing status
" :CocConfig - opens the main config file
" :CocList extensions management
" :CocUninstall <coc-highlight>
" to see which extensions are installed: ~/.config/coc/extensions/package.json

" COC show definition
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

