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

checkInstallScripts() {
  for dir in ./*; do 
    if [[ -f $dir ]]; then
      continue
    fi
    echo "Checking for Install scripts in $dir..."
    if test -e "$dir/install.sh"; then
      echo "    Found install script $dir/install.sh"
      echo "    executing..."
      $dir/install.sh
    else
      echo "    No install script found for $dir. Skipping..."
    fi
  done
}

checkInstallScripts
createSymlink "neovim" ".config/nvim" "$HOME/.config/nvim"
createSymlink "qtile" ".config/qtile" "$HOME/.config/qtile"

