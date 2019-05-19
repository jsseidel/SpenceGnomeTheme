#!/bin/bash

set -x

sudo apt install gnome-tweak-tool

# Red Hat Fonts
git clone git@github.com:RedHatOfficial/RedHatFont.git
pushd RedHatFont
sudo mkdir -p /usr/share/fonts/opentype/redhat
sudo cp OTF/*.otf /usr/share/fonts/opentype/redhat
popd
rm -rf RedHatFont

# Spence gnome shell theme
sudo cp -r themes/Spence\ Theme /usr/share/themes/.

# Yaru colors themes
sudo cp -r themes/Yaru* /usr/share/themes/.

# Yaru colors icons
sudo cp -r icons/Yaru* /usr/share/icons/.

set +x

echo "Done."
