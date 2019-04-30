syntax on
set number                  " Show line number
set colorcolumn=120         " Line length limiter line
set tabstop=4               " Tab length
set shiftwidth=4            " Tab length
set autoindent              " Auto indent on new line
set expandtab               " Use spaces instead of tabs in indentation
set showmatch               " Show matching braces
set nowrap                  " Do not wrap lines
set formatoptions+=ro       " Auto inset comment mark on new line
set cursorline              " Highlight current line
set laststatus=2            " Always show status line
set hlsearch                " Highlight search results
set updatetime=1000         " Update render (for GIT diff check)
set noswapfile              " Disable swap file creation

let NERDTreeQuitOnOpen=1    " Close NERDTree when item selected
let NERDTreeShowHidden=1    " Show hidden files in NERDTree

map <c-o> :NERDTree % <CR>
map <S-Tab> :tabprev <CR>
map <Tab> :tabnext <CR>

:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ " I'm not sure about this line...

" Auto open NERDTree if vim has been launched without path specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Use plugins from 'bundle' directory
execute pathogen#infect()

colorscheme atom-dark-256   " Set color scheme
