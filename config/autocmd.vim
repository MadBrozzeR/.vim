" Auto open NERDTree if vim has been launched without path specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Setup IndentGuides
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234 ctermfg=238     " set color for odd lines
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235 ctermfg=238     " set color for even lines

" Sync Limelight with Goyo
function! s:goyoEnter()
  Limelight
  set nolist
  set wrap
endfunction
function! s:goyoLeave()
  Limelight!
  set list
  set nowrap
endfunction

autocmd! User GoyoEnter nested call <SID>goyoEnter()
autocmd! User GoyoLeave nested call <SID>goyoLeave()

" Override style highlighting
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

autocmd VimEnter,Colorscheme * :hi CocMenuSel ctermfg=231 ctermbg=244 guifg=fg guibg=#808080 " redefine menu selection color

autocmd InsertEnter * :hi LineNr ctermfg=yellow
autocmd InsertLeave * :hi LineNr ctermfg=66

" Some random autocmds
autocmd BufWinLeave * let @b = expand('%:p') " Save closed file full path to @b registry
