# Needed for all installers
brew update
brew upgrade
brew install curl git unzip

# Run terminal required installers
for installer in ~/.local/share/omacub/install/terminal/required/*.sh; do source $installer; done

# Run terminal installers
for installer in ~/.local/share/omacub/install/terminal/*.sh; do source $installer; done
