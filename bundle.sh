#!/bin/sh

REPOS=(
  https://github.com/w0rp/ale.git # Linter rules highlighter
  https://github.com/itchyny/lightline.vim # Customizable status line
  https://github.com/scrooloose/nerdtree.git # FileSystem tree viewer
  https://github.com/leafgarland/typescript-vim.git # TypeScript syntax highlighter
  https://github.com/Quramy/tsuquyomi.git # TypeScript IDE functionality
  https://github.com/djoshea/vim-autoread.git # Automatically reload files edited externally
  https://github.com/airblade/vim-gitgutter.git # Displays changed lines after last GIT commit
  https://github.com/editorconfig/editorconfig-vim.git # Read .editorconfig project files
)
LASTDIR=$PWD

if [ ! -d './bundle/' ]; then
  mkdir bundle
fi

cd bundle

if type git > /dev/null; then
  for repo in ${REPOS[@]}; do
    git clone $repo
  done
else
  echo 'Install GIT first'
  cd $LASTDIR
  exit 1
fi

cd $LASTDIR
