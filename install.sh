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

makeExecutable() {
  for dir in ./*; do
    if [[ -f $dir ]]; then
      continue
    fi
    if test -e "$dir/install.sh"; then
      chmod +x "$dir/install.sh"
    fi
  done
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

makeExecutable
checkInstallScripts
createSymlink "neovim" ".config/nvim" "$HOME/.config/nvim"
createSymlink "qtile" ".config/qtile" "$HOME/.config/qtile"
createSymlink "lvim" ".config/lvim" "$HOME/.config/lvim"
createSymlink "alacritty" ".config/alacritty" "$HOME/.config/alacritty"
createSymlink "rofi" ".config/rofi" "$HOME/.config/rofi"
createSymlink "picom" ".config/picom" "$HOME/.config/picom"
