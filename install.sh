#!/bin/bash

set -x

sudo apt install gnome-tweak-tool

# Red Hat Fonts
#git clone git@github.com:RedHatOfficial/RedHatFont.git
#pushd RedHatFont
#sudo mkdir -p /usr/share/fonts/opentype/redhat
#sudo cp OTF/*.otf /usr/share/fonts/opentype/redhat
#popd
#rm -rf RedHatFont

# San Francisco
git clone git@github.com:AppleDesignResources/SanFranciscoFont.git
pushd SanFranciscoFont
sudo mkdir -p /usr/share/fonts/opentype/sanfrancisco
sudo cp *.otf /usr/share/fonts/opentype/sanfrancisco/.
popd
rm -rf SanFranciscoFont

git clone git@github.com:ZulwiyozaPutra/SF-Mono-Font.git
pushd SF-Mono-Font
sudo cp *.otf /usr/share/fonts/opentype/sanfrancisco/.
popd
rm -rf SF-Mono-Font

# Powerline fonts
sudo apt install -y python3-pip
pip3 install --user git+git://github.com/Lokaltog/powerline

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Spence gnome shell theme
sudo cp -r themes/Spence\ Theme /usr/share/themes/.

# Yaru colors themes
sudo cp -r themes/Yaru* /usr/share/themes/.

# Yaru colors icons
sudo cp -r icons/Yaru* /usr/share/icons/.

gsettings set org.gnome.desktop.interface font-name 'San Francisco Display 11'
gsettings set org.gnome.desktop.interface document-font-name 'Sans Regular 12'
gsettings set org.gnome.desktop.interface monospace-font-name 'Inconsolata for Powerline Medium 12'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'San Francisco Display Semibold 11'
gsettings set org.gnome.nautilus.desktop font 'San Francisco Display 11'
#gsettings reset org.gnome.desktop.interface text-scaling-factor

set +x

echo "Done."

echo "To update the GDM3 login screen, add the following to /etc/gdm3/greeter.dconf-defaults:"
echo
echo "    [org/gnome/desktop/interface]"
echo "    text-scaling-factor=1.60"
echo "    font-name='San Francisco Display 11'"
echo
echo "And then run 'sudo dpkg-reconfigure gdm3'"

