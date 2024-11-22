choice=$(gum choose {7..14} "<< Back" --height 11 --header "Choose your terminal font size")

if [[ $choice =~ ^[0-9]+$ ]]; then
	sed -i'' -e "s/^size = .*$/size = $choice/g" ~/.config/alacritty/font-size.toml
	source $OMACUB_PATH/bin/omacub-sub/font-size.sh
else
	source $OMACUB_PATH/bin/omacub-sub/font.sh
fi
