#!/bin/sh

REPOS=(
  https://github.com/w0rp/ale.git
  https://github.com/itchyny/lightline.vim
  https://github.com/scrooloose/nerdtree.git
  https://github.com/leafgarland/typescript-vim.git
  https://github.com/Quramy/tsuquyomi.git
  https://github.com/djoshea/vim-autoread.git
  https://github.com/airblade/vim-gitgutter.git
  https://github.com/editorconfig/editorconfig-vim.git
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
