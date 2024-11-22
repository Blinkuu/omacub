brew install --cask alacritty

xattr -dr com.apple.quarantine "/Applications/Alacritty.app"

mkdir -p ~/.config/alacritty
cp ~/.local/share/omacub/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ~/.local/share/omacub/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp ~/.local/share/omacub/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp ~/.local/share/omacub/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml
