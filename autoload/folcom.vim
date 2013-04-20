let s:save_cpo = &cpo
set cpo&vim

function! folcom#expr(lnum)
  let line = getline(a:lnum)
  let next = getline(a:lnum + 1)
  if line =~ '^\s*\("\|//\|/\*\|#\)'
    return 1
  else
    return 0
  end
endfunction

let &cpo = s:save_cpo
unset s:save_cpo
