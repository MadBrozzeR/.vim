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
" set switchbuf+=usetab,split " Open quickfix items in new split or jump to existing tab

set listchars=tab:->,trail:~,extends:>,precedes:<,space:· " Set display values for non-printable characters
set list                    " show non-printable characters

syntax on
colorscheme atom-dark-256   " Set color scheme
filetype plugin on " Enable plugins by file types (required for TypeScript server)
