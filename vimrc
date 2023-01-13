syntax on
set number                  " Show line number
set colorcolumn=121         " Line length limiter line
set tabstop=2               " Tab length
set shiftwidth=2            " Tab length (when indentaion is being shifted back)
set softtabstop=2           " When backspace is pressed remove space characters number equal to tab size
set autoindent              " Auto indent on new line
set expandtab               " Use spaces instead of tabs for indentation
set showmatch               " Show matching braces
set nowrap                  " Do not wrap lines
set formatoptions+=ro       " Auto inset comment mark on new line
" set cursorline              " Highlight current line
set laststatus=2            " Always show status line
set hlsearch                " Highlight search results
set updatetime=1000         " Update render (for GIT diff check)
set noswapfile              " Disable swap file creation
set path+=**                " Search in all project subfolders
set wildmenu                " Show all submatched commands in menu
set incsearch               " Search while typing
set suffixesadd+=.js,.jsx,.ts,.tsx " Try to append suffixes while file searching
set t_Co=256                " Set 256 colors for editor
set visualbell              " Use visual blink instead of sound error notification
set relativenumber          " Use line numbering relative to current line
set backspace=indent,eol,start " Use backspace for indentation removal
set switchbuf+=usetab,split " Open quickfix items in new split or jump to existing tab

set listchars=tab:->,trail:~,extends:>,precedes:<,space:· " Set display values for non-printable characters
set list                    " show non-printable characters

let $VIMHOME=expand('<sfile>:p:h') " get vim home directory

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
nmap tst :TsuquyomiTypeDefinition<CR>
nmap tsb :TsuquyomiGoBack<CR>
nmap tssd :TsuquyomiSplitDefinition<CR>
nmap tsi :echo tsuquyomi#hint()<CR>

" Goyo key mappings
nmap ,gy :Goyo<CR>

" Setup NERDTree
let NERDTreeQuitOnOpen=1    " Close NERDTree when item selected
let NERDTreeShowHidden=1    " Show hidden files in NERDTree
nmap <expr> <c-o> filereadable(@%) ? ':NERDTree %<CR>' : ':NERDTree<CR>'
nmap ,<c-o> :NERDTreeFind <CR>
" Auto open NERDTree if vim has been launched without path specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Setup Indent Guides plugin
let g:indent_guides_enable_on_vim_startup = 1                                   " enable plugin
let g:indent_guides_auto_colors = 0                                             " disable default colors
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234 ctermfg=238     " set color for odd lines
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235 ctermfg=238     " set color for even lines

" Search selected text by //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" Git grep selected text
vnoremap ,gg y:Ggrep -q "<C-R>=escape(@", '"')<CR>"<CR>
vnoremap ,vgg y:vsplit<cr><C-W>L:Ggrep -q "<C-R>=escape(@", '"')<CR>"<CR>

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

function! s:diffToggle()
  if &diff
    diffoff
  else
    diffthis
  endif
endfunction

nmap <silent> ,dt :call <SID>diffToggle()<CR>

" Use 'Tpl <name>' command to paste .vim/templates/<name>.tpl content at current cursor position
command -nargs=1 Tpl exec printf('.-1read %s/templates/%s.tpl', $VIMHOME, <f-args>)

" --------------------------------------

" Setup COC autocompletion
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-snippets']
let g:coc_data_home = $VIMHOME.'/coc'
let g:coc_config_home = g:coc_data_home

colorscheme atom-dark-256   " Set color scheme

filetype plugin on " Enable plugins by file types (required for TypeScript server)

" Override style highlighting
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
