
if ! command -v alacritty &> /dev/null; then
  echo "        Installing Alacritty..."
  echo 
  echo
  gh repo clone alacritty/alacritty
  cd alacritty
  rustup override set stable
  rustup update stable
  sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
  cargo build --release
  sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
  sudo cp target/release/alacritty /usr/local/bin
else
  echo "        Alacritty already installed. Skipping."
fi
