#! /usr/bin/env zsh

# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing..."

# Install terminal tools
source ~/.local/share/omacub/install/terminal.sh

# Install desktop tools and tweaks
source ~/.local/share/omacub/install/desktop.sh
