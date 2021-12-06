







" toggle the quickfix window
function! ToggleQuickFix()
  if empty(filter(getwininfo(), 'v:val.quickfix'))
    copen 15
    setlocal norelativenumber
  else
    cclose
  endif
endfunction






" ======= BLOG ================================= "

" blog snippet post
function! s:NewSnippet(fn)
  " echom a:fn
  execute "e " . "~/projects/websites/blog/content/articles/snippets/" . a:fn . ".md"
endfunction
command! -nargs=1 Ms call s:NewSnippet(<q-args>)


" blog post
function! s:NewPost(fn)
  " echom a:fn
  execute "e " . "~/projects/websites/blog/content/articles/" . a:fn . ".md"
endfunction
command! -nargs=1 Mp call s:NewPost(<q-args>)
