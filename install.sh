#!/bin/bash

set -x

sudo apt install gnome-tweak-tool

# Red Hat Fonts
git clone git@github.com:RedHatOfficial/RedHatFont.git
pushd RedHatFont
mkdir -p ~/.local/share/fonts
cp OTF/*.otf ~/.local/share/fonts/.
popd
rm -rf RedHatFont

mkdir -p ~/.local/share/themes
mkdir -p ~/.icons

# Spence gnome shell theme
cp -r themes/Spence\ Theme ~/.local/share/themes/.

# Yaru colors themes
cp -r themes/Yaru* ~/.local/share/themes/.

# Yaru colors icons
cp -r icons/Yaru* ~/.icons/.

set +x

echo "Done."
