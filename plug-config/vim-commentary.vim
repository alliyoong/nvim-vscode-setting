
function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else    
    execute "'<,'>Commentary"
  endif
 endfunction
vnoremap <silent> <space>/ :call Comment()
autocmd BufNewFile,BufRead *.vue set filetype=html syntax=html commentstring='<!--%s-->'
autocmd BufNewFile,BufRead *.html set filetype=html syntax=html commentstring='<!--%s-->'
