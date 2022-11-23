#!/bin/bash

# Create Symlinkg for nvim
echo "Creating Symlink for nvim config..."
if test -e ~/.config/nvim; then
  echo "    Symlink already exists."
else
  ln -s `pwd`/.config/nvim ~/.config/nvim || exit 1
  echo "    Symlink created at ~/.config/nvim!"
fi

# Create Symlink for qtile
echo "Creating Symlink for qtile config..."
if test -e ~/.config/qtile; then
  echo "    Symlink already exists."
else
  ln -s `pwd`/.config/qtile ~/.config/qtile || exit 1
  echo "    Symlink created at ~/.config/qtile"
fi
