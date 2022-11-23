#!/bin/bash

# Create Symlinkg for nvim
echo "Creating Symlink for nvim config..."

if test -f ~/.config/nvim; then
  ln -s `pwd`/.config/nvim ~/.config/nvim || exit 1
  echo "    Symlink created at ~/.config/nvim!"
else
  echo "    Symlink already exists."
fi
