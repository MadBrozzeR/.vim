" Setup NERDTree
let NERDTreeQuitOnOpen=1 " Close NERDTree when item selected
let NERDTreeShowHidden=1 " Show hidden files in NERDTree
"
" Setup Indent Guides plugin
let g:indent_guides_enable_on_vim_startup = 1 " enable plugin
let g:indent_guides_auto_colors = 0 " disable default colors

" Setup COC autocompletion
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-snippets']
let g:coc_data_home = $VIMHOME.'/coc'
let g:coc_config_home = g:coc_data_home
