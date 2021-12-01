" FUNCTIONS 


" toggle the quickfix window
function! ToggleQuickFix()
  if empty(filter(getwininfo(), 'v:val.quickfix'))
    copen 15
    setlocal norelativenumber
  else
    cclose
  endif
endfunction


" blog snippet post
function! s:NewSnippet(fn)
  echom a:fn
  execute "e " . "~/projects/websites/blog/content/articles/snippets/" . a:fn . ".md"
endfunction
command! -nargs=1 Ms call s:NewSnippet(<q-args>)


" blog post
function! s:NewPost(fn)
  echom a:fn
  execute "e " . "~/projects/websites/blog/content/articles/" . a:fn . ".md"
endfunction
command! -nargs=1 Mp call s:NewPost(<q-args>)


" function! CustomColors() abort
"   " highlight Visual     cterm=NONE ctermbg=76  ctermfg=16  gui=NONE guibg=#5fd700 guifg=#000000
"   " highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
"   " highlight Normal     cterm=NONE ctermbg=17              gui=NONE guibg=#00005f
"   " highlight NonText    cterm=NONE ctermbg=17              gui=NONE guibg=#00005f

"   " colorscheme modifications
"   highlight Comment ctermfg=cyan guifg=cyan
"   highlight pythonComment ctermfg=cyan guifg=cyan
"   " let s:bwc.lime = ['aeee00', 154] is also a nice color
"   highlight LineNr ctermfg=cyan guifg=cyan
"   highlight Visual term=reverse guibg=darkgreen

"   " this makes the visual highlight color the same the cursor color  highlight! link Visual CursorLine
"   highlight nontext term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
"   highlight vimLineComment term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
"   " SpecialKey - use :set list to toggle visibility of EOL, CR, etc
"   highlight specialKey term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
" endfunction


" function! SpellCheckHighlights() abort
"   hi clear SpellBad
"   hi clear SpellCap
"   hi clear SpellLocal
"   hi clear SpellRare
"   hi SpellBad cterm=underline ctermfg=yellow
"   hi SpellCap cterm=underline ctermfg=red
"   hi SpellLocal cterm=underline ctermfg=blue
"   hi SpellRare cterm=underline ctermfg=gray
" endfunction
