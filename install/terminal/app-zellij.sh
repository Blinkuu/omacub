brew install zellij

mkdir -p ~/.config/zellij/themes
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/omacub/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omacub/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
