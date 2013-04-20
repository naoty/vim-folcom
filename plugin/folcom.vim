if exists("g:loaded_folcom")
  finish
endif
let g:loaded_folcom = 1

let s:save_cpo = &cpo
set cpo&vim

setlocal foldmethod=expr
setlocal foldexpr=folcom#expr(v:lumn)

let &cpo = s:save_cpo
unlet s:save_cpo
