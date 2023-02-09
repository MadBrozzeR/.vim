let s:bools = {'true': 'false','false': 'true'}

function! g:ToggleBool()
let l:word = expand("<cword>")
  if has_key(s:bools, l:word)
    execute 'normal! "_ciw' . s:bools[l:word]
  endif
endfunction

function! g:DiffToggle()
  if &diff
    diffoff
  else
    diffthis
  endif
endfunction
