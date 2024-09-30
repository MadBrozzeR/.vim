#!/bin/bash

REPOS=(
  https://github.com/w0rp/ale.git # Linter rules highlighter
  https://github.com/itchyny/lightline.vim # Customizable status line
  https://github.com/scrooloose/nerdtree.git # FileSystem tree viewer
  https://github.com/leafgarland/typescript-vim.git # TypeScript syntax highlighter
  https://github.com/MaxMEllon/vim-jsx-pretty.git # JSX syntax highlighting
  https://github.com/neoclide/jsonc.vim # JSON syntax highlighting
  https://github.com/Quramy/tsuquyomi.git # TypeScript IDE functionality
  https://github.com/djoshea/vim-autoread.git # Automatically reload files edited externally
  https://github.com/airblade/vim-gitgutter.git # Displays changed lines after last GIT commit
  https://github.com/editorconfig/editorconfig-vim.git # Read .editorconfig project files
  https://github.com/nathanaelkane/vim-indent-guides.git # Display indentation level by altering GB color
  https://tpope.io/vim/fugitive.git # Git integration tool
  https://github.com/alvan/vim-closetag.git # Autoclose HTML tags
  https://github.com/neoclide/coc.nvim.git # Code autocompletion
  https://github.com/tpope/vim-surround.git # Manipulate surrounding entities (brackets, tags etc.)
  https://github.com/tpope/vim-repeat.git # Repeat with <.> key some plugin-provided actions (i.e. surround)
  https://github.com/kien/ctrlp.vim.git # File search (Fuzzy)
  https://github.com/slim-template/vim-slim.git
  https://github.com/junegunn/goyo.vim.git # Distruction-free viewer
  https://github.com/junegunn/limelight.vim.git # Dim inactive lines (to use in Goyo mode)
)
LASTDIR=$PWD
PLUGINDIR='./pack/plugins/start/'

COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_CLEAR='\033[0m'
COLOR_BLUE='\033[0;34m'

if [ ! -d $PLUGINDIR ]; then
  mkdir -p $PLUGINDIR
fi

cd $PLUGINDIR
BUNDLEDIR=$PWD

npm_install () {
  local DIR=${1##*/}
  local DIR=${DIR%.git}
  cd $DIR

  if type npm > /dev/null; then
    if [ -e './package.json' ]; then
      echo -e "${COLOR_GREEN}Installing nmp packages for $DIR (${COLOR_BLUE}$1${COLOR_GREEN})${COLOR_CLEAR}"
      npm i
    fi
  else
    echo -e "${COLOR_RED}You need to install NodeJS for $1${COLOR_CLEAR}"
  fi

  cd $BUNDLEDIR
}

if type git > /dev/null; then
  for repo in ${REPOS[@]}; do
    echo -e "${COLOR_GREEN}Clonning $repo${COLOR_CLEAR}"
    git clone $repo && npm_install $repo
  done
else
  echo -e '${COLOR_RED}Install GIT first${COLOR_CLEAR}'
  cd $LASTDIR
  exit 1
fi

cd $LASTDIR
