#!/bin/bash


createSymlink() {
  # Args: Name, from, to
  echo "Creating Symlink for $1"
  if test -e $3; then
    echo "   Symlink already exists."
  else
    ln -s "`pwd`/$2" "$3" || exit 1
    echo "    Symlink created at $1"
  fi
}

createSymlink "neovim" ".config/nvim" "$HOME/.config/nvim"
createSymlink "qtile" ".config/qtile" "$HOME/.config/qtile"

