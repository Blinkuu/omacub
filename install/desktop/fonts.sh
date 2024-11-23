mkdir -p /Library/fonts

cd /tmp
# Cascadia Mono
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaFont
cp CascadiaFont/*.ttf /Library/fonts
rm -rf CascadiaMono.zip CascadiaFont

# Hack
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
unzip Hack.zip -d HackFont
cp HackFont/*.ttf /Library/fonts
rm -rf Hack.zip HackFont

wget -O iafonts.zip https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.zip
unzip iafonts.zip -d iaFonts
cp iaFonts/iA-Fonts-master/iA\ Writer\ Mono/Static/iAWriterMonoS-*.ttf /Library/fonts
rm -rf iafonts.zip iaFonts

fc-cache
cd -
