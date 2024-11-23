# Stop showing the last login message
[[ ! -f "~/.hushlogin" ]] && touch ~/.hushlogin

# Configure the zsh shell using Omacub defaults
[[ -f ~/.zshrc ]] && mv ~/.zshrc ~/.zshrc.bak
cp ~/.local/share/omacub/configs/zshrc ~/.zshrc

# Load the PATH for use later in the installers
source ~/.local/share/omacub/defaults/zsh/shell
