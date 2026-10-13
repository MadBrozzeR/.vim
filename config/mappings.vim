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
nmap <silent> ,an <Plug>(coc-diagnostic-next)
nmap <silent> ,aN <Plug>(coc-diagnostic-prev)
nmap <silent> ,ad :call CocActionAsync('diagnosticInfo')<CR>
nmap <silent> ,afp :call CocActionAsync('format')<CR>

" TypeScript key mappings
nmap tsd <Plug>(coc-definition)
nmap tsr <Plug>(coc-references)
nmap tst <Plug>(coc-type-definition)
nnoremap tsb <C-o>
nmap tssd :call CocActionAsync('jumpDefinition', 'split')<CR>
nmap tsi :call CocActionAsync('doHover')<CR>

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

" Select item from autocomplete by pressing Enter key
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Buffer related mappings
nmap <silent> ,vb :execute('vsplit' . @b)<CR>

" Custom function mapping
nmap <silent> <c-s> :call g:ToggleBool()<CR>
