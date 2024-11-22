if command -v code &>/dev/null; then
  code --install-extension $VSC_EXTENSION >/dev/null
  sed -i'' -e "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$VSC_THEME\"/g" $HOME/Library/Application\ Support/Code/User/settings.json
fi
