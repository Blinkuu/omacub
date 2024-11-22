brew install koekeishiya/formulae/yabai

yabai --start-service

# See https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai

mkdir -p ~/.config/yabai
cp ~/.local/share/omacub/configs/yabai/yabairc ~/.config/yabai/yabairc
