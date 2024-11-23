brew install zellij

mkdir -p ~/.config/zellij/themes
[[ -f ~/.config/zellij/config.kdl ]] && mv ~/.config/zellij/config.kdl ~/.config/zellij/config.kdl.bak
cp ~/.local/share/omacub/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omacub/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
