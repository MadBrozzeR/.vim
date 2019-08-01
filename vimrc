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
set cursorline              " Highlight current line
set laststatus=2            " Always show status line
set hlsearch                " Highlight search results
set updatetime=1000         " Update render (for GIT diff check)
set noswapfile              " Disable swap file creation
set path+=**                " Search in all project subfolders
set wildmenu                " Show all submatched commands in menu
set incsearch               " Search while typing
set suffixesadd+=.js,.jsx,.ts,.tsx " Try to append suffixes while file searching
set t_Co=256                " Set 256 colors for editor

set listchars=tab:->,trail:~,extends:>,precedes:<,space:· " Set display values for non-printable characters
set list                    " show non-printable characters

map <S-Tab> :tabprev <CR>
map <Tab> :tabnext <CR>

" TypeScript key mappings
nmap tsd :TsuquyomiDefinition<CR>
nmap tst :TsuquyomiTypeDefinition<CR>
nmap tsb :TsuquyomiGoBack<CR>
nmap tssd :TsuquyomiSplitDefinition<CR>
nmap tsi :echo tsuquyomi#hint()<CR>

" Setup NERDTree
let NERDTreeQuitOnOpen=1    " Close NERDTree when item selected
let NERDTreeShowHidden=1    " Show hidden files in NERDTree
map <c-o> :NERDTree % <CR>
" Auto open NERDTree if vim has been launched without path specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Setup Indent Guides plugin
let g:indent_guides_enable_on_vim_startup = 1                                   " enable plugin
let g:indent_guides_auto_colors = 0                                             " disable default colors
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234 ctermfg=238     " set color for odd lines
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235 ctermfg=238     " set color for even lines

" Use plugins from 'bundle' directory
execute pathogen#infect()

colorscheme atom-dark-256   " Set color scheme

filetype plugin on " Enable plugins by file types (required for TypeScript server)
