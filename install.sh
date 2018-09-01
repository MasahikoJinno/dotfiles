#!/usr/bin/env sh
dotfiles="$HOME/.dotfiles"

# to error out
warn() {
  echo "$1" >&2
}

die() {
  warn "$1"
  exit 1
}

lnif() {
  if [ ! -e $2 ] ; then
    ln -s $1 $2
  fi
}

echo "Installing/Updating dotfiles...\n"

if [ ! -e $dotfiles/.git ]; then
  echo "Cloning dotfiles\n"
  git clone https://github.com/fdietz/dotfiles.git $dotfiles
else
  echo "Updating dotfiles\n"
  cd $dotfiles && git pull
fi

# bash
echo "Setting up bash...\n"
lnif $dotfiles/bash_profile $HOME/.bash_profile
lnif $dotfiles/bashrc $HOME/.bashrc

# vim
echo "Setting up vim...\n"
lnif $dotfiles/vimrc $HOME/.vimrc

