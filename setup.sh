#!/usr/bin/env bash

mkdir -p $HOME/bin
mkdir -p $HOME/projects-vanilla
mkdir -p $HOME/projects

sudo apt-get install -y git mercurial build-essential vim-gtk emacs tmux ncdu \
    lftp curl elinks cloc autossh feh htop rsync rlwrap st virtualbox

(
    cd $HOME/projects-vanilla/
    git clone https://github.com/clvv/fasd.git
    git clone https://github.com/zsh-users/antigen.git
    https://github.com/ddopson/underscore-cli.git
    git clone https://github.com/creationix/nvm.git
    (
        # TODO
        # nvm install latest; nvm use latest
        # npm install -g http-server underscore-cli
    )
    git clone https://github.com/technomancy/leiningen.git
    git clone https://github.com/flexiondotorg/oab-java6.git
    (
        git clone https://github.com/zsh-users/zsh.git
        cd zsh
        git checkout tags/5.0.5
    )

)

git clone https://github.com/shurane/dotfiles.git ~/dotfiles
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
