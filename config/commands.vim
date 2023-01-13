" Use 'Tpl <name>' command to paste .vim/templates/<name>.tpl content at current cursor position
" DEPRECATED (may be)
command -nargs=1 Tpl exec printf('.-1read %s/templates/%s.tpl', $VIMHOME, <f-args>)
