#!/bin/bash
if [ ! -d './bundle/' ]; then
  mkdir bundle
fi

pushd ./bundle/

if type git > /dev/null; then
  git clone https://github.com/w0rp/ale.git
  git clone https://github.com/itchyny/lightline.vim
  git clone https://github.com/scrooloose/nerdtree.git
  git clone https://github.com/leafgarland/typescript-vim.git
  git clone https://github.com/Quramy/tsuquyomi.git
  git clone https://github.com/djoshea/vim-autoread.git
  git clone https://github.com/airblade/vim-gitgutter.git
fi

popd
