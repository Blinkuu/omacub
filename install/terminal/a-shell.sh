# Stop showing the last login message
[ ! -f "~/.hushlogin" ] && touch ~/.hushlogin

# Configure the bash shell using Omakub defaults
[ -f "~/.zshrc" ] && mv ~/.zshrc ~/.zshrc.bak
cp ~/.local/share/omacub/configs/bashrc ~/.zshrc

# Load the PATH for use later in the installers
source ~/.local/share/omacub/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp ~/.local/share/omacub/configs/inputrc ~/.inputrc
