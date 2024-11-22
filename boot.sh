set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Makub is for fresh macOS installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update >/dev/null
brew install git >/dev/null

echo "Cloning Makub..."
rm -rf ~/.local/share/omacub
git clone https://github.com/Blinkuu/omacub.git ~/.local/share/omacub >/dev/null
if [[ $MAKUB_REF != "master" ]]; then
    cd ~/.local/share/omacub
    git fetch origin "${MAKUB_REF:-stable}" && git checkout "${MAKUB_REF:-stable}"
    cd -
fi

echo "Installation starting..."
source ~/.local/share/omacub/install.sh
