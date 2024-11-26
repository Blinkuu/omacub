brew install neovim

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
  # Use LazyVim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  # Remove the .git folder, so you can add it to your own repo later
  rm -rf ~/.config/nvim/.git

  # Make everything match the terminal transparency
  mkdir -p ~/.config/nvim/plugin/after
  cp ~/.local/share/omacub/configs/neovim/plugin/after/transparency.lua ~/.config/nvim/plugin/after/transparency.lua

  # Default to Tokyo Night theme
  cp ~/.local/share/omacub/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

  # Enable default extras
  cp ~/.local/share/omacub/configs/neovim/lazyvim.json ~/.config/nvim/lazyvim.json
  cp ~/.local/share/omacub/configs/neovim/lua/plugins/*.lua ~/.config/nvim/lua/plugins/
fi
