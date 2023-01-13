let $VIMHOME=expand('<sfile>:p:h') " get vim home directory

source $VIMHOME/config/settings.vim " vim settings
source $VIMHOME/config/plugin-settings.vim " plugins settings
source $VIMHOME/config/mappings.vim " key mappings
source $VIMHOME/config/autocmd.vim " autocmd collection
source $VIMHOME/config/commands.vim " custom commands
