nmap <S-Tab> :tabprev <CR>
nmap <Tab> :tabnext <CR>
nmap ,<Right> :vertical resize +5<CR>
nmap ,<Left> :vertical resize -5<CR>
nmap ,<Up> :resize +5<CR>
nmap ,<Down> :resize -5<CR>
" unmap annoying built-in mappings
map <F1> <nop>
map! <F1> <nop>
nmap Q <nop>
nmap q: <nop>

" ALE key mappings
nmap ,an :ALENextWrap<CR>
nmap ,aN :ALEPreviousWrap<CR>
nmap ,ad :ALEDetail<CR>

" TypeScript key mappings
nmap tsd :TsuquyomiDefinition<CR>
nmap tsr :TsuquyomiReferences<CR>
nmap tst :TsuquyomiTypeDefinition<CR>
nmap tsb :TsuquyomiGoBack<CR>
nmap tssd :TsuquyomiSplitDefinition<CR>
nmap tsi :echo tsuquyomi#hint()<CR>

" Goyo key mappings
nmap ,gy :Goyo<CR>

" NERDTree mappings
nmap <expr> <c-o> filereadable(@%) ? ':NERDTree %<CR>' : ':NERDTree<CR>'
nmap ,<c-o> :NERDTreeFind <CR>

" Search selected text by //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" Git grep selected text
vnoremap ,gg y:Ggrep -q "<C-R>=escape(@", '"')<CR>"<CR>
vnoremap ,vgg y:vsplit<cr><C-W>L:Ggrep -q "<C-R>=escape(@", '"')<CR>"<CR>

" Toggle diff mode for current buffer

nmap <silent> ,dt :call g:DiffToggle()<CR>

" Custom function mapping
nmap <silent> <c-s> :call g:ToggleBool()<CR>
