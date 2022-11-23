#!/bin/bash
if ! command -v nvim &> /dev/null; then
  echo "        Installing Neovim..."
  echo 
  echo
  sudo apt install neovim
else
  echo "        Neovim already installed. Skipping."
fi
