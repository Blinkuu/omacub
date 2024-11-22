# Run desktop installers
for installer in ~/.local/share/omacub/install/desktop/*.sh; do source $installer; done

# Logout to pickup changes
# TODO(lukasz): Consider this?
# gum confirm "Ready to reboot for all settings to take effect?" && sudo reboot
